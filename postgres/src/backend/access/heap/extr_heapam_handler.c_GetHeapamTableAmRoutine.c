
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TableAmRoutine ;


 int const heapam_methods ;

const TableAmRoutine *
GetHeapamTableAmRoutine(void)
{
 return &heapam_methods;
}
