
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mt7620_gsw {unsigned int base; } ;


 int ioread32 (unsigned int) ;

u32 mtk_switch_r32(struct mt7620_gsw *gsw, unsigned reg)
{
 return ioread32(gsw->base + reg);
}
