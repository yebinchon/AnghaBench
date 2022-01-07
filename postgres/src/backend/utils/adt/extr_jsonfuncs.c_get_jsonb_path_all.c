
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_26__ TYPE_4__ ;
typedef struct TYPE_25__ TYPE_3__ ;
typedef struct TYPE_24__ TYPE_2__ ;
typedef struct TYPE_23__ TYPE_1__ ;


typedef long uint32 ;
struct TYPE_26__ {int root; } ;
struct TYPE_23__ {int * data; } ;
struct TYPE_24__ {TYPE_1__ binary; } ;
struct TYPE_25__ {scalar_t__ type; TYPE_2__ val; } ;
typedef TYPE_3__ JsonbValue ;
typedef int JsonbContainer ;
typedef TYPE_4__ Jsonb ;
typedef int FunctionCallInfo ;
typedef TYPE_4__* Datum ;
typedef int ArrayType ;


 int Assert (int) ;
 int ERROR ;
 long INT_MAX ;
 long INT_MIN ;
 int IsAJsonbScalar (TYPE_3__*) ;
 scalar_t__ JB_ROOT_IS_ARRAY (TYPE_4__*) ;
 scalar_t__ JB_ROOT_IS_OBJECT (TYPE_4__*) ;
 scalar_t__ JB_ROOT_IS_SCALAR (TYPE_4__*) ;
 int JsonContainerIsArray (int *) ;
 int JsonContainerIsObject (int *) ;
 int JsonContainerIsScalar (int *) ;
 long JsonContainerSize (int *) ;
 int JsonbToCString (int *,int *,scalar_t__) ;
 int JsonbValueAsText (TYPE_3__*) ;
 TYPE_4__* JsonbValueToJsonb (TYPE_3__*) ;
 int * PG_GETARG_ARRAYTYPE_P (int) ;
 TYPE_4__* PG_GETARG_JSONB_P (int ) ;
 int PG_RETURN_JSONB_P (TYPE_4__*) ;
 int PG_RETURN_NULL () ;
 int PG_RETURN_TEXT_P (int ) ;
 int TEXTOID ;
 char* TextDatumGetCString (TYPE_4__*) ;
 int VARDATA (TYPE_4__*) ;
 scalar_t__ VARHDRSZ ;
 scalar_t__ VARSIZE (TYPE_4__*) ;
 scalar_t__ array_contains_nulls (int *) ;
 int cstring_to_text (int ) ;
 int deconstruct_array (int *,int ,int,int,char,TYPE_4__***,int**,int*) ;
 int elog (int ,char*) ;
 scalar_t__ errno ;
 TYPE_3__* getIthJsonbValueFromContainer (int *,long) ;
 TYPE_3__* getKeyJsonValueFromContainer (int *,int ,scalar_t__,TYPE_3__*) ;
 scalar_t__ jbvBinary ;
 scalar_t__ jbvNull ;
 long strtol (char*,char**,int) ;

__attribute__((used)) static Datum
get_jsonb_path_all(FunctionCallInfo fcinfo, bool as_text)
{
 Jsonb *jb = PG_GETARG_JSONB_P(0);
 ArrayType *path = PG_GETARG_ARRAYTYPE_P(1);
 Datum *pathtext;
 bool *pathnulls;
 int npath;
 int i;
 bool have_object = 0,
    have_array = 0;
 JsonbValue *jbvp = ((void*)0);
 JsonbValue jbvbuf;
 JsonbContainer *container;
 if (array_contains_nulls(path))
  PG_RETURN_NULL();

 deconstruct_array(path, TEXTOID, -1, 0, 'i',
       &pathtext, &pathnulls, &npath);


 container = &jb->root;

 if (JB_ROOT_IS_OBJECT(jb))
  have_object = 1;
 else if (JB_ROOT_IS_ARRAY(jb) && !JB_ROOT_IS_SCALAR(jb))
  have_array = 1;
 else
 {
  Assert(JB_ROOT_IS_ARRAY(jb) && JB_ROOT_IS_SCALAR(jb));

  if (npath <= 0)
   jbvp = getIthJsonbValueFromContainer(container, 0);
 }
 if (npath <= 0 && jbvp == ((void*)0))
 {
  if (as_text)
  {
   PG_RETURN_TEXT_P(cstring_to_text(JsonbToCString(((void*)0),
               container,
               VARSIZE(jb))));
  }
  else
  {

   PG_RETURN_JSONB_P(jb);
  }
 }

 for (i = 0; i < npath; i++)
 {
  if (have_object)
  {
   jbvp = getKeyJsonValueFromContainer(container,
            VARDATA(pathtext[i]),
            VARSIZE(pathtext[i]) - VARHDRSZ,
            &jbvbuf);
  }
  else if (have_array)
  {
   long lindex;
   uint32 index;
   char *indextext = TextDatumGetCString(pathtext[i]);
   char *endptr;

   errno = 0;
   lindex = strtol(indextext, &endptr, 10);
   if (endptr == indextext || *endptr != '\0' || errno != 0 ||
    lindex > INT_MAX || lindex < INT_MIN)
    PG_RETURN_NULL();

   if (lindex >= 0)
   {
    index = (uint32) lindex;
   }
   else
   {

    uint32 nelements;


    if (!JsonContainerIsArray(container))
     elog(ERROR, "not a jsonb array");

    nelements = JsonContainerSize(container);

    if (-lindex > nelements)
     PG_RETURN_NULL();
    else
     index = nelements + lindex;
   }

   jbvp = getIthJsonbValueFromContainer(container, index);
  }
  else
  {

   PG_RETURN_NULL();
  }

  if (jbvp == ((void*)0))
   PG_RETURN_NULL();
  else if (i == npath - 1)
   break;

  if (jbvp->type == jbvBinary)
  {
   container = jbvp->val.binary.data;
   have_object = JsonContainerIsObject(container);
   have_array = JsonContainerIsArray(container);
   Assert(!JsonContainerIsScalar(container));
  }
  else
  {
   Assert(IsAJsonbScalar(jbvp));
   have_object = 0;
   have_array = 0;
  }
 }

 if (as_text)
 {
  if (jbvp->type == jbvNull)
   PG_RETURN_NULL();

  PG_RETURN_TEXT_P(JsonbValueAsText(jbvp));
 }
 else
 {
  Jsonb *res = JsonbValueToJsonb(jbvp);


  PG_RETURN_JSONB_P(res);
 }
}
