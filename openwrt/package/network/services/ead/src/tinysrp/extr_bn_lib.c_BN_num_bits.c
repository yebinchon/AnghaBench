
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int top; scalar_t__* d; } ;
typedef scalar_t__ BN_ULONG ;
typedef TYPE_1__ BIGNUM ;


 int BN_BITS2 ;
 int BN_num_bits_word (scalar_t__) ;
 int assert (int) ;
 int bn_check_top (TYPE_1__ const*) ;

int BN_num_bits(const BIGNUM *a)
 {
 BN_ULONG l;
 int i;

 bn_check_top(a);

 if (a->top == 0) return(0);
 l=a->d[a->top-1];
 assert(l != 0);
 i=(a->top-1)*BN_BITS2;
 return(i+BN_num_bits_word(l));
 }
