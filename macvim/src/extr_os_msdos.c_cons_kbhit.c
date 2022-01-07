
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cons_getkey () ;
 scalar_t__ cons_key ;

__attribute__((used)) static int
cons_kbhit(void)
{
    if (cons_key < 0)
 cons_getkey();
    return (cons_key >= 0);
}
