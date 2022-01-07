
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * buf; } ;
struct magic_set {TYPE_1__ o; } ;


 size_t strlen (int *) ;

size_t
file_printedlen(const struct magic_set *ms)
{
 return ms->o.buf == ((void*)0) ? 0 : strlen(ms->o.buf);
}
