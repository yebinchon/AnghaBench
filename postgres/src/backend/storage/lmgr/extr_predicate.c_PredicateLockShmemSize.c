
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Size ;
typedef int SHM_QUEUE ;
typedef int SERIALIZABLEXID ;
typedef int PREDICATELOCKTARGET ;
typedef int PREDICATELOCK ;
typedef int OldSerXidControlData ;


 long MaxBackends ;
 long NPREDICATELOCKTARGETENTS () ;
 int NUM_OLDSERXID_BUFFERS ;
 int PredXactListDataSize ;
 int PredXactListElementDataSize ;
 int RWConflictDataSize ;
 int RWConflictPoolHeaderDataSize ;
 int SimpleLruShmemSize (int ,int ) ;
 int add_size (int,int) ;
 int hash_estimate_size (long,int) ;
 long max_prepared_xacts ;
 int mul_size (int,int ) ;

Size
PredicateLockShmemSize(void)
{
 Size size = 0;
 long max_table_size;


 max_table_size = NPREDICATELOCKTARGETENTS();
 size = add_size(size, hash_estimate_size(max_table_size,
            sizeof(PREDICATELOCKTARGET)));


 max_table_size *= 2;
 size = add_size(size, hash_estimate_size(max_table_size,
            sizeof(PREDICATELOCK)));





 size = add_size(size, size / 10);


 max_table_size = MaxBackends + max_prepared_xacts;
 max_table_size *= 10;
 size = add_size(size, PredXactListDataSize);
 size = add_size(size, mul_size((Size) max_table_size,
           PredXactListElementDataSize));


 size = add_size(size, hash_estimate_size(max_table_size,
            sizeof(SERIALIZABLEXID)));


 max_table_size *= 5;
 size = add_size(size, RWConflictPoolHeaderDataSize);
 size = add_size(size, mul_size((Size) max_table_size,
           RWConflictDataSize));


 size = add_size(size, sizeof(SHM_QUEUE));


 size = add_size(size, sizeof(OldSerXidControlData));
 size = add_size(size, SimpleLruShmemSize(NUM_OLDSERXID_BUFFERS, 0));

 return size;
}
