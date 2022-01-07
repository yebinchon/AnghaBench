
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ objectSubId; int objectId; int classId; } ;
typedef int Oid ;
typedef TYPE_1__ ObjectAddress ;


 int DROP_CASCADE ;
 int NamespaceRelationId ;
 int PERFORM_DELETION_INTERNAL ;
 int PERFORM_DELETION_QUIETLY ;
 int PERFORM_DELETION_SKIP_EXTENSIONS ;
 int PERFORM_DELETION_SKIP_ORIGINAL ;
 int performDeletion (TYPE_1__*,int ,int) ;

__attribute__((used)) static void
RemoveTempRelations(Oid tempNamespaceId)
{
 ObjectAddress object;
 object.classId = NamespaceRelationId;
 object.objectId = tempNamespaceId;
 object.objectSubId = 0;

 performDeletion(&object, DROP_CASCADE,
     PERFORM_DELETION_INTERNAL |
     PERFORM_DELETION_QUIETLY |
     PERFORM_DELETION_SKIP_ORIGINAL |
     PERFORM_DELETION_SKIP_EXTENSIONS);
}
