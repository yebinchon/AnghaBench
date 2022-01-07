
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ag71xx_desc {int ctrl; } ;


 int DESC_PKTLEN_M ;

__attribute__((used)) static inline int ag71xx_desc_pktlen(struct ag71xx_desc *desc)
{
 return (desc->ctrl & DESC_PKTLEN_M);
}
