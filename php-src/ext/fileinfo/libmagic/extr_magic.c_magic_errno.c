
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct magic_set {int event_flags; int error; } ;


 int EINVAL ;
 int EVENT_HAD_ERR ;

int
magic_errno(struct magic_set *ms)
{
 if (ms == ((void*)0))
  return EINVAL;
 return (ms->event_flags & EVENT_HAD_ERR) ? ms->error : 0;
}
