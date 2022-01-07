
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int phpdbg_watchpoint_t ;


 int PROT_READ ;
 int phpdbg_change_watchpoint_access (int *,int ) ;

__attribute__((used)) static inline void phpdbg_activate_watchpoint(phpdbg_watchpoint_t *watch) {
 phpdbg_change_watchpoint_access(watch, PROT_READ);
}
