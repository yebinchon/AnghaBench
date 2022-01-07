
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int header; } ;
typedef int JsonbValue ;
typedef TYPE_1__ JsonbContainer ;


 int ERROR ;
 scalar_t__ JsonContainerIsArray (TYPE_1__*) ;
 scalar_t__ JsonContainerIsObject (TYPE_1__*) ;
 scalar_t__ JsonbExtractScalar (TYPE_1__*,int *) ;
 char const* JsonbTypeName (int *) ;
 int elog (int ,char*,int ) ;

__attribute__((used)) static const char *
JsonbContainerTypeName(JsonbContainer *jbc)
{
 JsonbValue scalar;

 if (JsonbExtractScalar(jbc, &scalar))
  return JsonbTypeName(&scalar);
 else if (JsonContainerIsArray(jbc))
  return "array";
 else if (JsonContainerIsObject(jbc))
  return "object";
 else
 {
  elog(ERROR, "invalid jsonb container type: 0x%08x", jbc->header);
  return "unknown";
 }
}
