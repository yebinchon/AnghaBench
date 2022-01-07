
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned long offset_low; scalar_t__ offset_middle; scalar_t__ offset_high; } ;
typedef TYPE_1__ gate_desc ;



__attribute__((used)) static inline unsigned long gate_offset(const gate_desc *g)
{




 return g->offset_low | ((unsigned long)g->offset_middle << 16);

}
