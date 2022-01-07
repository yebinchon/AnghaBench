
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ objectSubId; int objectId; int classId; } ;
typedef int Oid ;
typedef TYPE_1__ ObjectAddress ;


 int CommandCounterIncrement () ;
 int DROP_CASCADE ;
 int LargeObjectRelationId ;
 int performDeletion (TYPE_1__*,int ,int ) ;

int
inv_drop(Oid lobjId)
{
 ObjectAddress object;




 object.classId = LargeObjectRelationId;
 object.objectId = lobjId;
 object.objectSubId = 0;
 performDeletion(&object, DROP_CASCADE, 0);





 CommandCounterIncrement();


 return 1;
}
