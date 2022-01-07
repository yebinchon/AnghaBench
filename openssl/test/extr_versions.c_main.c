
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* OPENSSL_FULL_VERSION_STR ;
 int OPENSSL_FULL_VERSION_STRING ;
 char* OpenSSL_version (int ) ;
 int printf (char*,char*) ;

int main(void)
{
    printf("Build version: %s\n", OPENSSL_FULL_VERSION_STR);
    printf("Library version: %s\n",
           OpenSSL_version(OPENSSL_FULL_VERSION_STRING));
    return 0;
}
