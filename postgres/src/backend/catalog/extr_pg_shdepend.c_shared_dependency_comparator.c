
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ objectId; scalar_t__ classId; scalar_t__ objectSubId; } ;
struct TYPE_4__ {scalar_t__ deptype; TYPE_1__ object; } ;
typedef TYPE_2__ ShDependObjectInfo ;



__attribute__((used)) static int
shared_dependency_comparator(const void *a, const void *b)
{
 const ShDependObjectInfo *obja = (const ShDependObjectInfo *) a;
 const ShDependObjectInfo *objb = (const ShDependObjectInfo *) b;




 if (obja->object.objectId < objb->object.objectId)
  return -1;
 if (obja->object.objectId > objb->object.objectId)
  return 1;





 if (obja->object.classId < objb->object.classId)
  return -1;
 if (obja->object.classId > objb->object.classId)
  return 1;







 if ((unsigned int) obja->object.objectSubId < (unsigned int) objb->object.objectSubId)
  return -1;
 if ((unsigned int) obja->object.objectSubId > (unsigned int) objb->object.objectSubId)
  return 1;






 if (obja->deptype < objb->deptype)
  return -1;
 if (obja->deptype > objb->deptype)
  return 1;

 return 0;
}
