
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int zval ;
typedef int uint32_t ;
struct TYPE_4__ {int type; } ;
typedef TYPE_1__ phpdbg_watchpoint_t ;


 int WATCH_ON_ZVAL ;
 int phpdbg_set_addr_watchpoint (int *,int,TYPE_1__*) ;

void phpdbg_set_zval_watchpoint(zval *zv, phpdbg_watchpoint_t *watch) {
 phpdbg_set_addr_watchpoint(zv, sizeof(zval) - sizeof(uint32_t), watch);
 watch->type = WATCH_ON_ZVAL;
}
