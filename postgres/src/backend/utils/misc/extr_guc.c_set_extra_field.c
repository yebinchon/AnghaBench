
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct config_generic {int dummy; } ;


 int extra_field_used (struct config_generic*,void*) ;
 int free (void*) ;

__attribute__((used)) static void
set_extra_field(struct config_generic *gconf, void **field, void *newval)
{
 void *oldval = *field;


 *field = newval;


 if (oldval && !extra_field_used(gconf, oldval))
  free(oldval);
}
