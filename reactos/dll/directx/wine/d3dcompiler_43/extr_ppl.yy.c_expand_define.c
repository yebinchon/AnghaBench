
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__* text; } ;
struct TYPE_6__ {scalar_t__ type; TYPE_1__ subst; } ;
typedef TYPE_2__ pp_entry_t ;


 int assert (int) ;
 scalar_t__ def_define ;
 int push_buffer (TYPE_2__*,int *,int *,int ) ;
 int yy_scan_string (scalar_t__*) ;

__attribute__((used)) static void expand_define(pp_entry_t *ppp)
{
 assert(ppp->type == def_define);

 if(ppp->subst.text && ppp->subst.text[0])
 {
  push_buffer(ppp, ((void*)0), ((void*)0), 0);
  yy_scan_string(ppp->subst.text);
 }
}
