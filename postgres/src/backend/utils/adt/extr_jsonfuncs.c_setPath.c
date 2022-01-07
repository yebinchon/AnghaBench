
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {int nPairs; } ;
struct TYPE_9__ {int nElems; } ;
struct TYPE_11__ {TYPE_2__ object; TYPE_1__ array; } ;
struct TYPE_12__ {TYPE_3__ val; } ;
typedef TYPE_4__ JsonbValue ;
typedef int JsonbParseState ;
typedef int JsonbIteratorToken ;
typedef int JsonbIterator ;
typedef int Jsonb ;
typedef int Datum ;


 int Assert (int) ;
 int ERRCODE_NULL_VALUE_NOT_ALLOWED ;
 int ERROR ;
 int JsonbIteratorNext (int **,TYPE_4__*,int) ;



 int WJB_END_ARRAY ;
 int WJB_END_OBJECT ;

 int check_stack_depth () ;
 int elog (int ,char*,int) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,int) ;
 TYPE_4__* pushJsonbValue (int **,int,TYPE_4__*) ;
 int setPathArray (int **,int *,int*,int,int **,int,int *,int ,int) ;
 int setPathObject (int **,int *,int*,int,int **,int,int *,int ,int) ;

__attribute__((used)) static JsonbValue *
setPath(JsonbIterator **it, Datum *path_elems,
  bool *path_nulls, int path_len,
  JsonbParseState **st, int level, Jsonb *newval, int op_type)
{
 JsonbValue v;
 JsonbIteratorToken r;
 JsonbValue *res;

 check_stack_depth();

 if (path_nulls[level])
  ereport(ERROR,
    (errcode(ERRCODE_NULL_VALUE_NOT_ALLOWED),
     errmsg("path element at position %d is null",
      level + 1)));

 r = JsonbIteratorNext(it, &v, 0);

 switch (r)
 {
  case 131:
   (void) pushJsonbValue(st, r, ((void*)0));
   setPathArray(it, path_elems, path_nulls, path_len, st, level,
       newval, v.val.array.nElems, op_type);
   r = JsonbIteratorNext(it, &v, 0);
   Assert(r == WJB_END_ARRAY);
   res = pushJsonbValue(st, r, ((void*)0));
   break;
  case 130:
   (void) pushJsonbValue(st, r, ((void*)0));
   setPathObject(it, path_elems, path_nulls, path_len, st, level,
        newval, v.val.object.nPairs, op_type);
   r = JsonbIteratorNext(it, &v, 1);
   Assert(r == WJB_END_OBJECT);
   res = pushJsonbValue(st, r, ((void*)0));
   break;
  case 129:
  case 128:
   res = pushJsonbValue(st, r, &v);
   break;
  default:
   elog(ERROR, "unrecognized iterator result: %d", (int) r);
   res = ((void*)0);
   break;
 }

 return res;
}
