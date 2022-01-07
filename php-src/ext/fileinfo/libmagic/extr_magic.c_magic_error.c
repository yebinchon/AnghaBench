
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char const* buf; } ;
struct magic_set {int event_flags; TYPE_1__ o; } ;


 int EVENT_HAD_ERR ;

const char *
magic_error(struct magic_set *ms)
{
 if (ms == ((void*)0))
  return "Magic database is not open";
 return (ms->event_flags & EVENT_HAD_ERR) ? ms->o.buf : ((void*)0);
}
