
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct magic_set {int flags; } ;


 int MAGIC_PRESERVE_ATIME ;

int
magic_setflags(struct magic_set *ms, int flags)
{
 if (ms == ((void*)0))
  return -1;

 if (flags & MAGIC_PRESERVE_ATIME)
  return -1;

 ms->flags = flags;
 return 0;
}
