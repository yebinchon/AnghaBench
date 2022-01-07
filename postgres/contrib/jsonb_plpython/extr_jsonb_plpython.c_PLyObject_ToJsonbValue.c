
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_29__ TYPE_3__ ;
typedef struct TYPE_28__ TYPE_2__ ;
typedef struct TYPE_27__ TYPE_1__ ;


struct TYPE_27__ {int boolean; } ;
struct TYPE_29__ {TYPE_1__ val; int type; } ;
struct TYPE_28__ {scalar_t__ ob_type; } ;
typedef TYPE_2__ PyObject ;
typedef TYPE_3__ JsonbValue ;
typedef int JsonbParseState ;


 int ERRCODE_FEATURE_NOT_SUPPORTED ;
 int ERROR ;
 TYPE_3__* PLyMapping_ToJsonbValue (TYPE_2__*,int **) ;
 TYPE_3__* PLyNumber_ToJsonbValue (TYPE_2__*,TYPE_3__*) ;
 int PLyObject_AsString (TYPE_2__*) ;
 TYPE_3__* PLySequence_ToJsonbValue (TYPE_2__*,int **) ;
 int PLyString_ToJsonbValue (TYPE_2__*,TYPE_3__*) ;
 scalar_t__ PyBool_Check (TYPE_2__*) ;
 scalar_t__ PyMapping_Check (TYPE_2__*) ;
 scalar_t__ PyNumber_Check (TYPE_2__*) ;
 scalar_t__ PySequence_Check (TYPE_2__*) ;
 scalar_t__ PyString_Check (TYPE_2__*) ;
 scalar_t__ PyUnicode_Check (TYPE_2__*) ;
 TYPE_2__* Py_None ;
 TYPE_2__* Py_True ;
 int WJB_ELEM ;
 int WJB_VALUE ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,int ) ;
 int jbvBool ;
 int jbvNull ;
 TYPE_3__* palloc (int) ;
 TYPE_3__* pushJsonbValue (int **,int ,TYPE_3__*) ;

__attribute__((used)) static JsonbValue *
PLyObject_ToJsonbValue(PyObject *obj, JsonbParseState **jsonb_state, bool is_elem)
{
 JsonbValue buf;
 JsonbValue *out;

 if (!(PyString_Check(obj) || PyUnicode_Check(obj)))
 {
  if (PySequence_Check(obj))
   return PLySequence_ToJsonbValue(obj, jsonb_state);
  else if (PyMapping_Check(obj))
   return PLyMapping_ToJsonbValue(obj, jsonb_state);
 }


 if (*jsonb_state)
  out = &buf;
 else
  out = palloc(sizeof(JsonbValue));

 if (obj == Py_None)
  out->type = jbvNull;
 else if (PyString_Check(obj) || PyUnicode_Check(obj))
  PLyString_ToJsonbValue(obj, out);





 else if (PyBool_Check(obj))
 {
  out->type = jbvBool;
  out->val.boolean = (obj == Py_True);
 }
 else if (PyNumber_Check(obj))
  out = PLyNumber_ToJsonbValue(obj, out);
 else
  ereport(ERROR,
    (errcode(ERRCODE_FEATURE_NOT_SUPPORTED),
     (errmsg("Python type \"%s\" cannot be transformed to jsonb",
       PLyObject_AsString((PyObject *) obj->ob_type)))));


 return (*jsonb_state ?
   pushJsonbValue(jsonb_state, is_elem ? WJB_ELEM : WJB_VALUE, out) :
   out);
}
