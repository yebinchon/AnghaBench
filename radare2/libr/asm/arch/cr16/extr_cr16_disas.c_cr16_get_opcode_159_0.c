
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut16 ;



__attribute__((used)) static inline ut16 cr16_get_opcode_159_0(const ut16 opc)
{
 return (opc & 1) | ((opc >> 8) & 0xFE);
}
