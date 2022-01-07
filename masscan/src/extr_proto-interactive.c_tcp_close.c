
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct InteractiveData {int is_closing; } ;



void
tcp_close(struct InteractiveData *more)
{
    more->is_closing = 1;
}
