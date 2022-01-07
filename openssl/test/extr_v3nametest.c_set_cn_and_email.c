
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int X509 ;


 int NID_commonName ;
 int NID_pkcs9_emailAddress ;
 int set_cn (int *,int ,char const*,int ,char*,int ) ;

__attribute__((used)) static int set_cn_and_email(X509 *crt, const char *name)
{
    return set_cn(crt, NID_commonName, name,
                  NID_pkcs9_emailAddress, "dummy@example.com", 0);
}
