
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned long segment; } ;
typedef TYPE_1__ gate_desc ;



__attribute__((used)) static inline unsigned long gate_segment(const gate_desc *g)
{
 return g->segment;
}
