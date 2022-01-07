
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int log_flags ;

void
pg_logging_config(int new_flags)
{
 log_flags = new_flags;
}
