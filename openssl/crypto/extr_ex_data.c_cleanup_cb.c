
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EX_CALLBACK ;


 int OPENSSL_free (int *) ;

__attribute__((used)) static void cleanup_cb(EX_CALLBACK *funcs)
{
    OPENSSL_free(funcs);
}
