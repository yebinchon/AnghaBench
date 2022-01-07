
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ objectId; scalar_t__ classId; scalar_t__ objectSubId; } ;
typedef TYPE_1__ ObjectAddress ;



__attribute__((used)) static int
object_address_comparator(const void *a, const void *b)
{
 const ObjectAddress *obja = (const ObjectAddress *) a;
 const ObjectAddress *objb = (const ObjectAddress *) b;






 if (obja->objectId > objb->objectId)
  return -1;
 if (obja->objectId < objb->objectId)
  return 1;





 if (obja->classId < objb->classId)
  return -1;
 if (obja->classId > objb->classId)
  return 1;
 if ((unsigned int) obja->objectSubId < (unsigned int) objb->objectSubId)
  return -1;
 if ((unsigned int) obja->objectSubId > (unsigned int) objb->objectSubId)
  return 1;
 return 0;
}
