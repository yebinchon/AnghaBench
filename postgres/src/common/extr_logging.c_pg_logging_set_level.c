
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum pg_log_level { ____Placeholder_pg_log_level } pg_log_level ;


 int __pg_log_level ;

void
pg_logging_set_level(enum pg_log_level new_level)
{
 __pg_log_level = new_level;
}
