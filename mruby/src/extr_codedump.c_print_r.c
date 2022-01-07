
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int mrb_sym ;
typedef int mrb_state ;
struct TYPE_5__ {size_t nlocals; TYPE_1__* lv; } ;
typedef TYPE_2__ mrb_irep ;
struct TYPE_4__ {size_t r; int name; } ;


 char* mrb_sym_dump (int *,int ) ;
 int printf (char*,int,char*) ;

__attribute__((used)) static void
print_r(mrb_state *mrb, mrb_irep *irep, size_t n)
{
  size_t i;

  if (n == 0) return;

  for (i=0; i+1<irep->nlocals; i++) {
    if (irep->lv[i].r == n) {
      mrb_sym sym = irep->lv[i].name;
      printf(" R%d:%s", (int)n, mrb_sym_dump(mrb, sym));
      break;
    }
  }
}
