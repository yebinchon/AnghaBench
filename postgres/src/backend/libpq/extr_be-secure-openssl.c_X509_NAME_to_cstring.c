
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int X509_NAME_ENTRY ;
typedef int X509_NAME ;
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
 char* OBJ_nid2ln (int) ;
 char* OBJ_nid2sn (int) ;
 int OBJ_obj2nid (int ) ;
 int PG_UTF8 ;
 int * X509_NAME_ENTRY_get_data (int *) ;
 int X509_NAME_ENTRY_get_object (int *) ;
 int X509_NAME_entry_count (int *) ;
 int * X509_NAME_get_entry (int *,int) ;
 int pfree (char*) ;
 char* pg_any_to_server (char*,size_t,int ) ;
 char* pstrdup (char*) ;

__attribute__((used)) static char *
X509_NAME_to_cstring(X509_NAME *name)
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
 char *result;

 (void) BIO_set_close(membuf, BIO_CLOSE);
 for (i = 0; i < count; i++)
 {
  e = X509_NAME_get_entry(name, i);
  nid = OBJ_obj2nid(X509_NAME_ENTRY_get_object(e));
  v = X509_NAME_ENTRY_get_data(e);
  field_name = OBJ_nid2sn(nid);
  if (!field_name)
   field_name = OBJ_nid2ln(nid);
  BIO_printf(membuf, "/%s=", field_name);
  ASN1_STRING_print_ex(membuf, v,
        ((ASN1_STRFLGS_RFC2253 & ~ASN1_STRFLGS_ESC_MSB)
         | ASN1_STRFLGS_UTF8_CONVERT));
 }


 nullterm = '\0';
 BIO_write(membuf, &nullterm, 1);
 size = BIO_get_mem_data(membuf, &sp);
 dp = pg_any_to_server(sp, size - 1, PG_UTF8);

 result = pstrdup(dp);
 if (dp != sp)
  pfree(dp);
 BIO_free(membuf);

 return result;
}
