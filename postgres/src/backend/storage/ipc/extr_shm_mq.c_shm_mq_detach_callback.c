
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int shm_mq ;
typedef int dsm_segment ;
typedef int Datum ;


 scalar_t__ DatumGetPointer (int ) ;
 int shm_mq_detach_internal (int *) ;

__attribute__((used)) static void
shm_mq_detach_callback(dsm_segment *seg, Datum arg)
{
 shm_mq *mq = (shm_mq *) DatumGetPointer(arg);

 shm_mq_detach_internal(mq);
}
