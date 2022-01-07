
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ar934x_nfc {unsigned int base; } ;


 int __raw_readl (unsigned int) ;

__attribute__((used)) static inline u32
ar934x_nfc_rr(struct ar934x_nfc *nfc, unsigned reg)
{
 return __raw_readl(nfc->base + reg);
}
