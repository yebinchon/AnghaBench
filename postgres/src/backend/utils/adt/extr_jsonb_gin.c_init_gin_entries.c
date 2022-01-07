
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int allocated; scalar_t__ count; int * buf; } ;
typedef TYPE_1__ GinEntries ;
typedef int Datum ;


 int * palloc (int) ;

__attribute__((used)) static void
init_gin_entries(GinEntries *entries, int preallocated)
{
 entries->allocated = preallocated;
 entries->buf = preallocated ? palloc(sizeof(Datum) * preallocated) : ((void*)0);
 entries->count = 0;
}
