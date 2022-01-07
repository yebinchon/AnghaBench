
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int val; int len; } ;
struct TYPE_6__ {TYPE_1__ string; } ;
struct TYPE_7__ {TYPE_2__ val; int type; } ;
typedef int PyObject ;
typedef TYPE_3__ JsonbValue ;


 int PLyObject_AsString (int *) ;
 int jbvString ;
 int strlen (int ) ;

__attribute__((used)) static void
PLyString_ToJsonbValue(PyObject *obj, JsonbValue *jbvElem)
{
 jbvElem->type = jbvString;
 jbvElem->val.string.val = PLyObject_AsString(obj);
 jbvElem->val.string.len = strlen(jbvElem->val.string.val);
}
