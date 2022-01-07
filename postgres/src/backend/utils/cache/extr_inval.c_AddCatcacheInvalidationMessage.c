
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint32 ;
typedef int msg ;
typedef scalar_t__ int8 ;
struct TYPE_9__ {int cclist; } ;
struct TYPE_7__ {int hashValue; int dbId; scalar_t__ id; } ;
struct TYPE_8__ {TYPE_1__ cc; } ;
typedef TYPE_2__ SharedInvalidationMessage ;
typedef int Oid ;
typedef TYPE_3__ InvalidationListHeader ;


 int AddInvalidationMessage (int *,TYPE_2__*) ;
 int Assert (int) ;
 int CHAR_MAX ;
 int VALGRIND_MAKE_MEM_DEFINED (TYPE_2__*,int) ;

__attribute__((used)) static void
AddCatcacheInvalidationMessage(InvalidationListHeader *hdr,
          int id, uint32 hashValue, Oid dbId)
{
 SharedInvalidationMessage msg;

 Assert(id < CHAR_MAX);
 msg.cc.id = (int8) id;
 msg.cc.dbId = dbId;
 msg.cc.hashValue = hashValue;
 VALGRIND_MAKE_MEM_DEFINED(&msg, sizeof(msg));

 AddInvalidationMessage(&hdr->cclist, &msg);
}
