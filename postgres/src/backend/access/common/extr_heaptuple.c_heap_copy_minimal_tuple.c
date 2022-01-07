
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int t_len; } ;
typedef TYPE_1__* MinimalTuple ;


 int memcpy (TYPE_1__*,TYPE_1__*,int ) ;
 scalar_t__ palloc (int ) ;

MinimalTuple
heap_copy_minimal_tuple(MinimalTuple mtup)
{
 MinimalTuple result;

 result = (MinimalTuple) palloc(mtup->t_len);
 memcpy(result, mtup, mtup->t_len);
 return result;
}
