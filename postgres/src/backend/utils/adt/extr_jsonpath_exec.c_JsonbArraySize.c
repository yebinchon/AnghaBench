
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * data; } ;
struct TYPE_6__ {TYPE_1__ binary; } ;
struct TYPE_7__ {scalar_t__ type; TYPE_2__ val; } ;
typedef TYPE_3__ JsonbValue ;
typedef int JsonbContainer ;


 int Assert (int) ;
 scalar_t__ JsonContainerIsArray (int *) ;
 int JsonContainerIsScalar (int *) ;
 int JsonContainerSize (int *) ;
 scalar_t__ jbvArray ;
 scalar_t__ jbvBinary ;

__attribute__((used)) static int
JsonbArraySize(JsonbValue *jb)
{
 Assert(jb->type != jbvArray);

 if (jb->type == jbvBinary)
 {
  JsonbContainer *jbc = jb->val.binary.data;

  if (JsonContainerIsArray(jbc) && !JsonContainerIsScalar(jbc))
   return JsonContainerSize(jbc);
 }

 return -1;
}
