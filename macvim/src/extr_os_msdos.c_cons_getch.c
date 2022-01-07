
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cons_getkey () ;
 int cons_key ;

__attribute__((used)) static int
cons_getch(void)
{
    int c = -1;

    if (cons_key < 0)
 cons_getkey();
    c = cons_key;
    cons_key = -1;
    return c;
}
