
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int flags; int action_state; int (* action ) (int ,char*,int ) ;} ;
typedef TYPE_1__ IterateJsonStringValuesState ;


 int jtiKey ;
 char* pstrdup (char*) ;
 int strlen (char*) ;
 int stub1 (int ,char*,int ) ;

__attribute__((used)) static void
iterate_values_object_field_start(void *state, char *fname, bool isnull)
{
 IterateJsonStringValuesState *_state = (IterateJsonStringValuesState *) state;

 if (_state->flags & jtiKey)
 {
  char *val = pstrdup(fname);

  _state->action(_state->action_state, val, strlen(val));
 }
}
