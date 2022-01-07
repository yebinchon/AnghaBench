
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct d_info_checkpoint {int expansion; int next_sub; int next_comp; int n; } ;
struct d_info {int expansion; int next_sub; int next_comp; int n; } ;



__attribute__((used)) static void
d_backtrack (struct d_info *di, struct d_info_checkpoint *checkpoint)
{
  di->n = checkpoint->n;
  di->next_comp = checkpoint->next_comp;
  di->next_sub = checkpoint->next_sub;
  di->expansion = checkpoint->expansion;
}
