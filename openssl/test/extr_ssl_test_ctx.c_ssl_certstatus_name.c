
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ssl_cert_status_t ;


 int OSSL_NELEM (int ) ;
 char const* enum_name (int ,int ,int ) ;
 int ssl_certstatus ;

const char *ssl_certstatus_name(ssl_cert_status_t cert_status)
{
    return enum_name(ssl_certstatus,
                     OSSL_NELEM(ssl_certstatus), cert_status);
}
