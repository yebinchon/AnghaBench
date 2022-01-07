
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int crypto_op_t ;


 int do_aes (int *,int) ;

__attribute__((used)) static bool do_aes_ecb (crypto_op_t *co)
{
  return do_aes (co, 0);
}
