
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RAND_METHOD ;


 int rand_meth ;

RAND_METHOD *RAND_OpenSSL(void)
{

    return &rand_meth;



}
