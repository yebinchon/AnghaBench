
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct event_set_return {int * arg; scalar_t__ rwflags; } ;



__attribute__((used)) static inline void
event_set_return_init(struct event_set_return *esr)
{
    esr->rwflags = 0;
    esr->arg = ((void*)0);
}
