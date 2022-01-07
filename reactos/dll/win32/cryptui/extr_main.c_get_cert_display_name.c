
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int PCCERT_CONTEXT ;


 int CERT_FRIENDLY_NAME_PROP_ID ;
 int CERT_NAME_SIMPLE_DISPLAY_TYPE ;
 int * get_cert_name_string (int ,int ,int ) ;
 int * get_cert_property_as_string (int ,int ) ;

__attribute__((used)) static WCHAR *get_cert_display_name(PCCERT_CONTEXT cert)
{
    WCHAR *name = get_cert_property_as_string(cert, CERT_FRIENDLY_NAME_PROP_ID);

    if (!name)
        name = get_cert_name_string(cert, CERT_NAME_SIMPLE_DISPLAY_TYPE, 0);
    return name;
}
