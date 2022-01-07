
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BIGNUM ;


 int memset (int *,int ,int) ;

void BN_init(BIGNUM *a)
 {
 memset(a,0,sizeof(BIGNUM));
 }
