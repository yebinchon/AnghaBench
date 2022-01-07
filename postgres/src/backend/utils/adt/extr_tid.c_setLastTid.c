
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * ItemPointer ;


 int Current_last_tid ;

void
setLastTid(const ItemPointer tid)
{
 Current_last_tid = *tid;
}
