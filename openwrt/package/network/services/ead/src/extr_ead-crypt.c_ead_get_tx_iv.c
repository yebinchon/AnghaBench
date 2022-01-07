
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int uint32_t ;


 unsigned int ead_tx_iv ;
 int ivofs_idx ;
 int ivofs_vec ;

__attribute__((used)) static uint32_t
ead_get_tx_iv(void)
{
 unsigned int ofs;

 ofs = 1 + ((ivofs_vec >> 2 * ivofs_idx) & 0x3);
 ivofs_idx = (ivofs_idx + 1) % 16;
 ead_tx_iv += ofs;

 return ead_tx_iv;
}
