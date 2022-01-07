
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ TimeoutId ;
struct TYPE_2__ {scalar_t__ index; } ;


 TYPE_1__** active_timeouts ;
 int num_active_timeouts ;

__attribute__((used)) static int
find_active_timeout(TimeoutId id)
{
 int i;

 for (i = 0; i < num_active_timeouts; i++)
 {
  if (active_timeouts[i]->index == id)
   return i;
 }

 return -1;
}
