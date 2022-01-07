
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ TuplesortSpaceType ;


 int Assert (int) ;
 scalar_t__ SORT_SPACE_TYPE_DISK ;
 scalar_t__ SORT_SPACE_TYPE_MEMORY ;

const char *
tuplesort_space_type_name(TuplesortSpaceType t)
{
 Assert(t == SORT_SPACE_TYPE_DISK || t == SORT_SPACE_TYPE_MEMORY);
 return t == SORT_SPACE_TYPE_DISK ? "Disk" : "Memory";
}
