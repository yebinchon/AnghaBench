
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {int parseState; int res; } ;
struct TYPE_6__ {char* val; int len; } ;
struct TYPE_7__ {TYPE_1__ string; } ;
struct TYPE_8__ {TYPE_2__ val; int type; } ;
typedef TYPE_3__ JsonbValue ;
typedef TYPE_4__ JsonbInState ;


 int Assert (int ) ;
 int WJB_KEY ;
 int checkStringLen (int ) ;
 int jbvString ;
 int pushJsonbValue (int *,int ,TYPE_3__*) ;
 int strlen (char*) ;

__attribute__((used)) static void
jsonb_in_object_field_start(void *pstate, char *fname, bool isnull)
{
 JsonbInState *_state = (JsonbInState *) pstate;
 JsonbValue v;

 Assert(fname != ((void*)0));
 v.type = jbvString;
 v.val.string.len = checkStringLen(strlen(fname));
 v.val.string.val = fname;

 _state->res = pushJsonbValue(&_state->parseState, WJB_KEY, &v);
}
