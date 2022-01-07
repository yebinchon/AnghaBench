
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_12__ {int root; } ;
struct TYPE_10__ {scalar_t__ type; } ;
struct TYPE_11__ {TYPE_1__ contVal; } ;
typedef TYPE_1__ JsonbValue ;
typedef TYPE_2__ JsonbParseState ;
typedef scalar_t__ JsonbIteratorToken ;
typedef int JsonbIterator ;
typedef TYPE_3__ Jsonb ;


 int Assert (int) ;
 int ERROR ;
 scalar_t__ JB_ROOT_IS_SCALAR (TYPE_3__*) ;
 int * JsonbIteratorInit (int *) ;
 scalar_t__ JsonbIteratorNext (int **,TYPE_1__*,int) ;
 scalar_t__ WJB_DONE ;
 scalar_t__ WJB_ELEM ;
 scalar_t__ WJB_KEY ;
 scalar_t__ WJB_VALUE ;
 int elog (int ,char*) ;


 int pushJsonbValue (TYPE_2__**,scalar_t__,TYPE_1__*) ;

__attribute__((used)) static void
addJsonbToParseState(JsonbParseState **jbps, Jsonb *jb)
{
 JsonbIterator *it;
 JsonbValue *o = &(*jbps)->contVal;
 JsonbValue v;
 JsonbIteratorToken type;

 it = JsonbIteratorInit(&jb->root);

 Assert(o->type == 129 || o->type == 128);

 if (JB_ROOT_IS_SCALAR(jb))
 {
  (void) JsonbIteratorNext(&it, &v, 0);
  Assert(v.type == 129);
  (void) JsonbIteratorNext(&it, &v, 0);

  switch (o->type)
  {
   case 129:
    (void) pushJsonbValue(jbps, WJB_ELEM, &v);
    break;
   case 128:
    (void) pushJsonbValue(jbps, WJB_VALUE, &v);
    break;
   default:
    elog(ERROR, "unexpected parent of nested structure");
  }
 }
 else
 {
  while ((type = JsonbIteratorNext(&it, &v, 0)) != WJB_DONE)
  {
   if (type == WJB_KEY || type == WJB_VALUE || type == WJB_ELEM)
    (void) pushJsonbValue(jbps, type, &v);
   else
    (void) pushJsonbValue(jbps, type, ((void*)0));
  }
 }

}
