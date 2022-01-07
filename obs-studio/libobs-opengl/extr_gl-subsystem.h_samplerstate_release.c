
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int ref; } ;
typedef TYPE_1__ gs_samplerstate_t ;


 int bfree (TYPE_1__*) ;
 scalar_t__ os_atomic_dec_long (int *) ;

__attribute__((used)) static inline void samplerstate_release(gs_samplerstate_t *ss)
{
 if (os_atomic_dec_long(&ss->ref) == 0)
  bfree(ss);
}
