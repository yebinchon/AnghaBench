
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int msg ;
struct TYPE_5__ {int dbId; int id; } ;
struct TYPE_6__ {TYPE_1__ rm; } ;
typedef TYPE_2__ SharedInvalidationMessage ;
typedef int Oid ;


 int SHAREDINVALRELMAP_ID ;
 int SendSharedInvalidMessages (TYPE_2__*,int) ;
 int VALGRIND_MAKE_MEM_DEFINED (TYPE_2__*,int) ;

void
CacheInvalidateRelmap(Oid databaseId)
{
 SharedInvalidationMessage msg;

 msg.rm.id = SHAREDINVALRELMAP_ID;
 msg.rm.dbId = databaseId;

 VALGRIND_MAKE_MEM_DEFINED(&msg, sizeof(msg));

 SendSharedInvalidMessages(&msg, 1);
}
