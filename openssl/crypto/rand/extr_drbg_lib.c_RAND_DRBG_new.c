
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RAND_DRBG ;


 int * RAND_DRBG_new_ex (int *,int,unsigned int,int *) ;

RAND_DRBG *RAND_DRBG_new(int type, unsigned int flags, RAND_DRBG *parent)
{
    return RAND_DRBG_new_ex(((void*)0), type, flags, parent);
}
