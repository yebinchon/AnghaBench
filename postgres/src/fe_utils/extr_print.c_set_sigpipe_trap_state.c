
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int always_ignore_sigpipe ;

void
set_sigpipe_trap_state(bool ignore)
{
 always_ignore_sigpipe = ignore;
}
