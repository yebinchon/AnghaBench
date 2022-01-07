
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int PCCERT_CONTEXT ;


 int CERT_NAME_ISSUER_FLAG ;
 int CERT_NAME_SIMPLE_DISPLAY_TYPE ;
 int * get_cert_name_string (int ,int ,int ) ;

__attribute__((used)) static WCHAR *field_format_issuer(PCCERT_CONTEXT cert)
{
    return get_cert_name_string(cert, CERT_NAME_SIMPLE_DISPLAY_TYPE,
     CERT_NAME_ISSUER_FLAG);
}
