
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ EVENT_CURSORHOLD ;
 scalar_t__ EVENT_CURSORHOLDI ;
 scalar_t__ NORMAL_BUSY ;
 int ** first_autopat ;
 scalar_t__ get_real_state () ;

int
has_cursorhold()
{
    return (first_autopat[(int)(get_real_state() == NORMAL_BUSY
       ? EVENT_CURSORHOLD : EVENT_CURSORHOLDI)] != ((void*)0));
}
