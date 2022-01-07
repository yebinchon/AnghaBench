
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ref; } ;
typedef TYPE_1__ gs_samplerstate_t ;


 int os_atomic_inc_long (int *) ;

__attribute__((used)) static inline void samplerstate_addref(gs_samplerstate_t *ss)
{
 os_atomic_inc_long(&ss->ref);
}
