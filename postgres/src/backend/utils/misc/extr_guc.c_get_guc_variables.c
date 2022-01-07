
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct config_generic {int dummy; } ;


 struct config_generic** guc_variables ;

struct config_generic **
get_guc_variables(void)
{
 return guc_variables;
}
