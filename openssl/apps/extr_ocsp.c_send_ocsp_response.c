
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int OCSP_RESPONSE ;
typedef int BIO ;


 int BIO_flush (int *) ;
 int BIO_printf (int *,char*,int ) ;
 int i2d_OCSP_RESPONSE (int *,int *) ;
 int i2d_OCSP_RESPONSE_bio (int *,int *) ;

__attribute__((used)) static int send_ocsp_response(BIO *cbio, OCSP_RESPONSE *resp)
{
    char http_resp[] =
        "HTTP/1.0 200 OK\r\nContent-type: application/ocsp-response\r\n"
        "Content-Length: %d\r\n\r\n";
    if (cbio == ((void*)0))
        return 0;
    BIO_printf(cbio, http_resp, i2d_OCSP_RESPONSE(resp, ((void*)0)));
    i2d_OCSP_RESPONSE_bio(cbio, resp);
    (void)BIO_flush(cbio);
    return 1;
}
