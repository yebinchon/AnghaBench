
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int msg ;
struct TYPE_9__ {int cclist; } ;
struct TYPE_7__ {void* catId; void* dbId; int id; } ;
struct TYPE_8__ {TYPE_1__ cat; } ;
typedef TYPE_2__ SharedInvalidationMessage ;
typedef void* Oid ;
typedef TYPE_3__ InvalidationListHeader ;


 int AddInvalidationMessage (int *,TYPE_2__*) ;
 int SHAREDINVALCATALOG_ID ;
 int VALGRIND_MAKE_MEM_DEFINED (TYPE_2__*,int) ;

__attribute__((used)) static void
AddCatalogInvalidationMessage(InvalidationListHeader *hdr,
         Oid dbId, Oid catId)
{
 SharedInvalidationMessage msg;

 msg.cat.id = SHAREDINVALCATALOG_ID;
 msg.cat.dbId = dbId;
 msg.cat.catId = catId;

 VALGRIND_MAKE_MEM_DEFINED(&msg, sizeof(msg));

 AddInvalidationMessage(&hdr->cclist, &msg);
}
