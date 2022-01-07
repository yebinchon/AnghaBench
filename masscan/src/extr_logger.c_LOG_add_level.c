
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int global_debug_level ;

void LOG_add_level(int x)
{
    global_debug_level += x;
}
