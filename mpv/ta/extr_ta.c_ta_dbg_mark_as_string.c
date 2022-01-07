
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int allocation_is_string ;
 void* ta_dbg_set_loc (void*,int *) ;

void *ta_dbg_mark_as_string(void *ptr)
{

    return ta_dbg_set_loc(ptr, &allocation_is_string);
}
