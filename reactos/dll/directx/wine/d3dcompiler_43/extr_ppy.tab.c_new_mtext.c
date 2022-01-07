
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int argidx; char* text; } ;
struct TYPE_6__ {int * prev; int next; int type; TYPE_1__ subst; } ;
typedef TYPE_2__ mtext_t ;
typedef int def_exp_t ;


 TYPE_2__* pp_xmalloc (int) ;

__attribute__((used)) static mtext_t *new_mtext(char *str, int idx, def_exp_t type)
{
 mtext_t *mt = pp_xmalloc(sizeof(mtext_t));
 if(!mt)
  return ((void*)0);
 if(str == ((void*)0))
  mt->subst.argidx = idx;
 else
  mt->subst.text = str;
 mt->type = type;
 mt->next = mt->prev = ((void*)0);
 return mt;
}
