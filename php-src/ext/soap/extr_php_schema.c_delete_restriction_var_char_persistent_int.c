
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* sdlRestrictionCharPtr ;
struct TYPE_4__ {struct TYPE_4__* value; } ;


 int free (TYPE_1__*) ;

void delete_restriction_var_char_persistent_int(sdlRestrictionCharPtr ptr)
{
 if (ptr) {
  if (ptr->value) {
   free(ptr->value);
  }
  free(ptr);
 }
}
