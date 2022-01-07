
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int count; int allocated; int * buf; } ;
typedef TYPE_1__ GinEntries ;
typedef int Datum ;


 int * palloc (int) ;
 int * repalloc (int *,int) ;

__attribute__((used)) static int
add_gin_entry(GinEntries *entries, Datum entry)
{
 int id = entries->count;

 if (entries->count >= entries->allocated)
 {
  if (entries->allocated)
  {
   entries->allocated *= 2;
   entries->buf = repalloc(entries->buf,
         sizeof(Datum) * entries->allocated);
  }
  else
  {
   entries->allocated = 8;
   entries->buf = palloc(sizeof(Datum) * entries->allocated);
  }
 }

 entries->buf[entries->count++] = entry;

 return id;
}
