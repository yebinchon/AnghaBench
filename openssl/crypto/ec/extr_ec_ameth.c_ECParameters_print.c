
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EC_KEY ;
typedef int BIO ;


 int EC_KEY_PRINT_PARAM ;
 int do_EC_KEY_print (int *,int const*,int,int ) ;

int ECParameters_print(BIO *bp, const EC_KEY *x)
{
    return do_EC_KEY_print(bp, x, 4, EC_KEY_PRINT_PARAM);
}
