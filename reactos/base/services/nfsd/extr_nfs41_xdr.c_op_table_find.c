
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint32_t ;
typedef int op_table_entry ;


 int const* g_op_table ;
 size_t g_op_table_size ;

__attribute__((used)) static const op_table_entry* op_table_find(uint32_t op)
{
    return op >= g_op_table_size ? ((void*)0) : &g_op_table[op];
}
