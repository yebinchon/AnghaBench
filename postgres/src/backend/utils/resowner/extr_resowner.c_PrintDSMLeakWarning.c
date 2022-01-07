
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int dsm_segment ;


 int WARNING ;
 int dsm_segment_handle (int *) ;
 int elog (int ,char*,int ) ;

__attribute__((used)) static void
PrintDSMLeakWarning(dsm_segment *seg)
{
 elog(WARNING, "dynamic shared memory leak: segment %u still referenced",
   dsm_segment_handle(seg));
}
