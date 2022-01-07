
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;
typedef int RCrypto ;


 int BLOCK_SIZE ;
 int iv ;
 int iv_set ;
 int memcpy (int ,int const*,int) ;

__attribute__((used)) static bool aes_cbc_set_iv(RCrypto *cry, const ut8 *iv_src, int ivlen) {
 if (ivlen != BLOCK_SIZE) {
  return 0;
 }
 memcpy (iv, iv_src, BLOCK_SIZE);
 iv_set = 1;
 return 1;
}
