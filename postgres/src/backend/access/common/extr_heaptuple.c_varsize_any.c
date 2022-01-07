
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t VARSIZE_ANY (void*) ;

size_t
varsize_any(void *p)
{
 return VARSIZE_ANY(p);
}
