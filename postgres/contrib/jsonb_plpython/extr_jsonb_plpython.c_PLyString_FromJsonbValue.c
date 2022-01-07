
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int len; int val; } ;
struct TYPE_6__ {TYPE_1__ string; } ;
struct TYPE_7__ {scalar_t__ type; TYPE_2__ val; } ;
typedef int PyObject ;
typedef TYPE_3__ JsonbValue ;


 int Assert (int) ;
 int * PyString_FromStringAndSize (int ,int ) ;
 scalar_t__ jbvString ;

__attribute__((used)) static PyObject *
PLyString_FromJsonbValue(JsonbValue *jbv)
{
 Assert(jbv->type == jbvString);

 return PyString_FromStringAndSize(jbv->val.string.val, jbv->val.string.len);
}
