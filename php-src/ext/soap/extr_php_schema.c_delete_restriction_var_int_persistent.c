
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ sdlRestrictionIntPtr ;


 int free (scalar_t__) ;

void delete_restriction_var_int_persistent(sdlRestrictionIntPtr ptr)
{
 if (ptr) {
  free(ptr);
 }
}
