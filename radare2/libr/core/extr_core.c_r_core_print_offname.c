
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int ut64 ;
struct TYPE_5__ {int flags; } ;
struct TYPE_4__ {char const* name; } ;
typedef TYPE_1__ RFlagItem ;
typedef TYPE_2__ RCore ;


 TYPE_1__* r_flag_get_i (int ,int ) ;

__attribute__((used)) static const char *r_core_print_offname(void *p, ut64 addr) {
 RCore *c = (RCore*)p;
 RFlagItem *item = r_flag_get_i (c->flags, addr);
 return item ? item->name : ((void*)0);
}
