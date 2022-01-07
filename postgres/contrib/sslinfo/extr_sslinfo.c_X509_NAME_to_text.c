
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int text ;
typedef int X509_NAME_ENTRY ;
typedef int X509_NAME ;
typedef int Datum ;
typedef int BIO ;
typedef int ASN1_STRING ;


 int ASN1_STRFLGS_ESC_MSB ;
 int ASN1_STRFLGS_RFC2253 ;
 int ASN1_STRFLGS_UTF8_CONVERT ;
 int ASN1_STRING_print_ex (int *,int *,int) ;
 int BIO_CLOSE ;
 int BIO_free (int *) ;
 size_t BIO_get_mem_data (int *,char**) ;
 int * BIO_new (int ) ;
 int BIO_printf (int *,char*,char const*) ;
 int BIO_s_mem () ;
 int BIO_set_close (int *,int ) ;
 int BIO_write (int *,char*,int) ;
 int ERRCODE_INVALID_PARAMETER_VALUE ;
 int ERRCODE_OUT_OF_MEMORY ;
 int ERROR ;
 int NID_undef ;
 char* OBJ_nid2ln (int) ;
 char* OBJ_nid2sn (int) ;
 int OBJ_obj2nid (int ) ;
 int PG_RETURN_TEXT_P (int *) ;
 int PG_UTF8 ;
 int * X509_NAME_ENTRY_get_data (int *) ;
 int X509_NAME_ENTRY_get_object (int *) ;
 int X509_NAME_entry_count (int *) ;
 int * X509_NAME_get_entry (int *,int) ;
 int * cstring_to_text (char*) ;
 int elog (int ,char*) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,...) ;
 int pfree (char*) ;
 char* pg_any_to_server (char*,size_t,int ) ;

__attribute__((used)) static Datum
X509_NAME_to_text(X509_NAME *name)
{
 BIO *membuf = BIO_new(BIO_s_mem());
 int i,
    nid,
    count = X509_NAME_entry_count(name);
 X509_NAME_ENTRY *e;
 ASN1_STRING *v;
 const char *field_name;
 size_t size;
 char nullterm;
 char *sp;
 char *dp;
 text *result;

 if (membuf == ((void*)0))
  ereport(ERROR,
    (errcode(ERRCODE_OUT_OF_MEMORY),
     errmsg("could not create OpenSSL BIO structure")));

 (void) BIO_set_close(membuf, BIO_CLOSE);
 for (i = 0; i < count; i++)
 {
  e = X509_NAME_get_entry(name, i);
  nid = OBJ_obj2nid(X509_NAME_ENTRY_get_object(e));
  if (nid == NID_undef)
   ereport(ERROR,
     (errcode(ERRCODE_INVALID_PARAMETER_VALUE),
      errmsg("could not get NID for ASN1_OBJECT object")));
  v = X509_NAME_ENTRY_get_data(e);
  field_name = OBJ_nid2sn(nid);
  if (field_name == ((void*)0))
   field_name = OBJ_nid2ln(nid);
  if (field_name == ((void*)0))
   ereport(ERROR,
     (errcode(ERRCODE_INVALID_PARAMETER_VALUE),
      errmsg("could not convert NID %d to an ASN1_OBJECT structure", nid)));
  BIO_printf(membuf, "/%s=", field_name);
  ASN1_STRING_print_ex(membuf, v,
        ((ASN1_STRFLGS_RFC2253 & ~ASN1_STRFLGS_ESC_MSB)
         | ASN1_STRFLGS_UTF8_CONVERT));
 }


 nullterm = '\0';
 BIO_write(membuf, &nullterm, 1);
 size = BIO_get_mem_data(membuf, &sp);
 dp = pg_any_to_server(sp, size - 1, PG_UTF8);
 result = cstring_to_text(dp);
 if (dp != sp)
  pfree(dp);
 if (BIO_free(membuf) != 1)
  elog(ERROR, "could not free OpenSSL BIO structure");

 PG_RETURN_TEXT_P(result);
}
