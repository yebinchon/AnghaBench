
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EC_KEY ;
typedef int BIO ;


 int EC_KEY_PRINT_PRIVATE ;
 int EC_KEY_PRINT_PUBLIC ;
 int * EC_KEY_get0_private_key (int const*) ;
 int do_EC_KEY_print (int *,int const*,int,int ) ;

int EC_KEY_print(BIO *bp, const EC_KEY *x, int off)
{
    int private = EC_KEY_get0_private_key(x) != ((void*)0);

    return do_EC_KEY_print(bp, x, off,
                private ? EC_KEY_PRINT_PRIVATE : EC_KEY_PRINT_PUBLIC);
}
