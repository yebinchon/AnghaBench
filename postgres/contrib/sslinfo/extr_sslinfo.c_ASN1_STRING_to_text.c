
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int text ;
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
 int BIO_s_mem () ;
 int BIO_set_close (int *,int ) ;
 int BIO_write (int *,char*,int) ;
 int ERRCODE_OUT_OF_MEMORY ;
 int ERROR ;
 int PG_RETURN_TEXT_P (int *) ;
 int PG_UTF8 ;
 int * cstring_to_text (char*) ;
 int elog (int ,char*) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*) ;
 int pfree (char*) ;
 char* pg_any_to_server (char*,size_t,int ) ;

__attribute__((used)) static Datum
ASN1_STRING_to_text(ASN1_STRING *str)
{
 BIO *membuf;
 size_t size;
 char nullterm;
 char *sp;
 char *dp;
 text *result;

 membuf = BIO_new(BIO_s_mem());
 if (membuf == ((void*)0))
  ereport(ERROR,
    (errcode(ERRCODE_OUT_OF_MEMORY),
     errmsg("could not create OpenSSL BIO structure")));
 (void) BIO_set_close(membuf, BIO_CLOSE);
 ASN1_STRING_print_ex(membuf, str,
       ((ASN1_STRFLGS_RFC2253 & ~ASN1_STRFLGS_ESC_MSB)
        | ASN1_STRFLGS_UTF8_CONVERT));

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
