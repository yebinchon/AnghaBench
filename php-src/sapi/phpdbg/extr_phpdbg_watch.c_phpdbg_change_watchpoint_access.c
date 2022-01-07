
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int ptr; } ;
struct TYPE_5__ {int size; TYPE_1__ addr; } ;
typedef TYPE_2__ phpdbg_watchpoint_t ;


 int mprotect (int ,int ,int) ;
 int phpdbg_get_page_boundary (int ) ;
 int phpdbg_get_total_page_size (int ,int ) ;

__attribute__((used)) static void phpdbg_change_watchpoint_access(phpdbg_watchpoint_t *watch, int access) {

 mprotect(phpdbg_get_page_boundary(watch->addr.ptr), phpdbg_get_total_page_size(watch->addr.ptr, watch->size), access);
}
