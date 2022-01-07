
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t MAX_INCLUDES ;
 int assert (int) ;
 int* cu_include_stack ;
 size_t cu_include_stk_idx ;

__attribute__((used)) static int stabs_add_include(int idx)
{
    if (idx < 0) return -1;
    cu_include_stk_idx++;



    assert(cu_include_stk_idx < MAX_INCLUDES);
    cu_include_stack[cu_include_stk_idx] = idx;
    return cu_include_stk_idx;
}
