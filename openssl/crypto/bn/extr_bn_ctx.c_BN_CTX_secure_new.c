
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BN_CTX ;


 int * BN_CTX_secure_new_ex (int *) ;

BN_CTX *BN_CTX_secure_new(void)
{
    return BN_CTX_secure_new_ex(((void*)0));
}
