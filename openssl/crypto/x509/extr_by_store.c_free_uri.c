
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int OPENSSL_STRING ;


 int OPENSSL_free (int ) ;

__attribute__((used)) static void free_uri(OPENSSL_STRING data)
{
    OPENSSL_free(data);
}
