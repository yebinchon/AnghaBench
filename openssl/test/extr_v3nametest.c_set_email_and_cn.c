
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int X509 ;


 int NID_commonName ;
 int NID_pkcs9_emailAddress ;
 int set_cn (int *,int ,char const*,int ,char*,int ) ;

__attribute__((used)) static int set_email_and_cn(X509 *crt, const char *name)
{
    return set_cn(crt, NID_pkcs9_emailAddress, name,
                  NID_commonName, "www.example.org", 0);
}
