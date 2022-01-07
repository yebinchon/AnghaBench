
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_cancel {int dummy; } ;


 scalar_t__ mp_cancel_test (struct mp_cancel*) ;
 int trigger_locked (struct mp_cancel*) ;

__attribute__((used)) static void retrigger_locked(struct mp_cancel *c)
{
    if (mp_cancel_test(c))
        trigger_locked(c);
}
