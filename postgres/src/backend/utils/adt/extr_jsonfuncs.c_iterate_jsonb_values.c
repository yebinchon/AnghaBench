
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint32 ;
struct TYPE_10__ {int root; } ;
struct TYPE_7__ {char* val; int len; } ;
struct TYPE_8__ {int boolean; int numeric; TYPE_1__ string; } ;
struct TYPE_9__ {int type; TYPE_2__ val; } ;
typedef TYPE_3__ JsonbValue ;
typedef scalar_t__ JsonbIteratorToken ;
typedef int JsonbIterator ;
typedef TYPE_4__ Jsonb ;
typedef int (* JsonIterateStringValuesAction ) (void*,char*,int) ;


 char* DatumGetCString (int ) ;
 int DirectFunctionCall1 (int ,int ) ;
 int * JsonbIteratorInit (int *) ;
 scalar_t__ JsonbIteratorNext (int **,TYPE_3__*,int) ;
 int NumericGetDatum (int ) ;
 scalar_t__ WJB_DONE ;
 scalar_t__ WJB_ELEM ;
 scalar_t__ WJB_KEY ;
 scalar_t__ WJB_VALUE ;



 int jtiBool ;
 int jtiKey ;
 int jtiNumeric ;
 int jtiString ;
 int numeric_out ;
 int pfree (char*) ;
 int strlen (char*) ;

void
iterate_jsonb_values(Jsonb *jb, uint32 flags, void *state,
      JsonIterateStringValuesAction action)
{
 JsonbIterator *it;
 JsonbValue v;
 JsonbIteratorToken type;

 it = JsonbIteratorInit(&jb->root);





 while ((type = JsonbIteratorNext(&it, &v, 0)) != WJB_DONE)
 {
  if (type == WJB_KEY)
  {
   if (flags & jtiKey)
    action(state, v.val.string.val, v.val.string.len);

   continue;
  }
  else if (!(type == WJB_VALUE || type == WJB_ELEM))
  {

   continue;
  }


  switch (v.type)
  {
   case 128:
    if (flags & jtiString)
     action(state, v.val.string.val, v.val.string.len);
    break;
   case 129:
    if (flags & jtiNumeric)
    {
     char *val;

     val = DatumGetCString(DirectFunctionCall1(numeric_out,
                 NumericGetDatum(v.val.numeric)));

     action(state, val, strlen(val));
     pfree(val);
    }
    break;
   case 130:
    if (flags & jtiBool)
    {
     if (v.val.boolean)
      action(state, "true", 4);
     else
      action(state, "false", 5);
    }
    break;
   default:

    break;
  }
 }
}
