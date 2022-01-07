
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct config_generic {int name; } ;


 int guc_name_compare (int ,int ) ;

__attribute__((used)) static int
guc_var_compare(const void *a, const void *b)
{
 const struct config_generic *confa = *(struct config_generic *const *) a;
 const struct config_generic *confb = *(struct config_generic *const *) b;

 return guc_name_compare(confa->name, confb->name);
}
