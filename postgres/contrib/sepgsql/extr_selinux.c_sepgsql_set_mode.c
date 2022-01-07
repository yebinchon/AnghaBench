
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int sepgsql_mode ;

int
sepgsql_set_mode(int new_mode)
{
 int old_mode = sepgsql_mode;

 sepgsql_mode = new_mode;

 return old_mode;
}
