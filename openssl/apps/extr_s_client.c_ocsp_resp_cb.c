
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SSL ;
typedef int OCSP_RESPONSE ;


 int BIO_dump_indent (void*,char*,int,int) ;
 int BIO_puts (void*,char*) ;
 int OCSP_RESPONSE_free (int *) ;
 int OCSP_RESPONSE_print (void*,int *,int ) ;
 int SSL_get_tlsext_status_ocsp_resp (int *,unsigned char const**) ;
 int * d2i_OCSP_RESPONSE (int *,unsigned char const**,int) ;

__attribute__((used)) static int ocsp_resp_cb(SSL *s, void *arg)
{
    const unsigned char *p;
    int len;
    OCSP_RESPONSE *rsp;
    len = SSL_get_tlsext_status_ocsp_resp(s, &p);
    BIO_puts(arg, "OCSP response: ");
    if (p == ((void*)0)) {
        BIO_puts(arg, "no response sent\n");
        return 1;
    }
    rsp = d2i_OCSP_RESPONSE(((void*)0), &p, len);
    if (rsp == ((void*)0)) {
        BIO_puts(arg, "response parse error\n");
        BIO_dump_indent(arg, (char *)p, len, 4);
        return 0;
    }
    BIO_puts(arg, "\n======================================\n");
    OCSP_RESPONSE_print(arg, rsp, 0);
    BIO_puts(arg, "======================================\n");
    OCSP_RESPONSE_free(rsp);
    return 1;
}
