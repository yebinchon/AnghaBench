
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ SerializableXactHandle ;
typedef int SERIALIZABLEXACT ;


 int Assert (int) ;
 int CreateLocalPredicateLockHash () ;
 int * InvalidSerializableXact ;
 int * MySerializableXact ;

void
AttachSerializableXact(SerializableXactHandle handle)
{

 Assert(MySerializableXact == InvalidSerializableXact);

 MySerializableXact = (SERIALIZABLEXACT *) handle;
 if (MySerializableXact != InvalidSerializableXact)
  CreateLocalPredicateLockHash();
}
