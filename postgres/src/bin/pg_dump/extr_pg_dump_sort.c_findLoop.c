
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {size_t dumpId; int nDeps; scalar_t__* dependencies; } ;
typedef TYPE_1__ DumpableObject ;
typedef scalar_t__ DumpId ;


 TYPE_1__* findObjectByDumpId (scalar_t__) ;

__attribute__((used)) static int
findLoop(DumpableObject *obj,
   DumpId startPoint,
   bool *processed,
   DumpId *searchFailed,
   DumpableObject **workspace,
   int depth)
{
 int i;





 if (processed[obj->dumpId])
  return 0;





 if (searchFailed[obj->dumpId] == startPoint)
  return 0;







 for (i = 0; i < depth; i++)
 {
  if (workspace[i] == obj)
   return 0;
 }




 workspace[depth++] = obj;




 for (i = 0; i < obj->nDeps; i++)
 {
  if (obj->dependencies[i] == startPoint)
   return depth;
 }




 for (i = 0; i < obj->nDeps; i++)
 {
  DumpableObject *nextobj = findObjectByDumpId(obj->dependencies[i]);
  int newDepth;

  if (!nextobj)
   continue;
  newDepth = findLoop(nextobj,
       startPoint,
       processed,
       searchFailed,
       workspace,
       depth);
  if (newDepth > 0)
   return newDepth;
 }




 searchFailed[obj->dumpId] = startPoint;

 return 0;
}
