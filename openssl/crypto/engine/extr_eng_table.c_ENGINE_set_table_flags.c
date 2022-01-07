
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int table_flags ;

void ENGINE_set_table_flags(unsigned int flags)
{
    table_flags = flags;
}
