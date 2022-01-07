
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_12__ {int header; } ;
struct TYPE_9__ {scalar_t__ data; } ;
struct TYPE_10__ {TYPE_1__ binary; } ;
struct TYPE_11__ {int type; TYPE_2__ val; } ;
typedef TYPE_3__ JsonbValue ;
typedef TYPE_4__ JsonbContainer ;


 int Assert (int) ;
 int ERROR ;
 scalar_t__ JsonContainerIsArray (TYPE_4__*) ;
 scalar_t__ JsonContainerIsObject (TYPE_4__*) ;
 int JsonContainerIsScalar (TYPE_4__*) ;
 int elog (int ,char*,int ) ;
 int jbvArray ;
 int jbvBinary ;
 int jbvObject ;

__attribute__((used)) static int
JsonbType(JsonbValue *jb)
{
 int type = jb->type;

 if (jb->type == jbvBinary)
 {
  JsonbContainer *jbc = (void *) jb->val.binary.data;


  Assert(!JsonContainerIsScalar(jbc));

  if (JsonContainerIsObject(jbc))
   type = jbvObject;
  else if (JsonContainerIsArray(jbc))
   type = jbvArray;
  else
   elog(ERROR, "invalid jsonb container type: 0x%08x", jbc->header);
 }

 return type;
}
