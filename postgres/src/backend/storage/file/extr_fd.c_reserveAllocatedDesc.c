
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int AllocateDesc ;


 int ERRCODE_OUT_OF_MEMORY ;
 int ERROR ;
 int FD_MINFREE ;
 int * allocatedDescs ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*) ;
 scalar_t__ malloc (int) ;
 int maxAllocatedDescs ;
 int max_safe_fds ;
 int numAllocatedDescs ;
 scalar_t__ realloc (int *,int) ;

__attribute__((used)) static bool
reserveAllocatedDesc(void)
{
 AllocateDesc *newDescs;
 int newMax;


 if (numAllocatedDescs < maxAllocatedDescs)
  return 1;







 if (allocatedDescs == ((void*)0))
 {
  newMax = FD_MINFREE / 2;
  newDescs = (AllocateDesc *) malloc(newMax * sizeof(AllocateDesc));

  if (newDescs == ((void*)0))
   ereport(ERROR,
     (errcode(ERRCODE_OUT_OF_MEMORY),
      errmsg("out of memory")));
  allocatedDescs = newDescs;
  maxAllocatedDescs = newMax;
  return 1;
 }
 newMax = max_safe_fds / 2;
 if (newMax > maxAllocatedDescs)
 {
  newDescs = (AllocateDesc *) realloc(allocatedDescs,
           newMax * sizeof(AllocateDesc));

  if (newDescs == ((void*)0))
   return 0;
  allocatedDescs = newDescs;
  maxAllocatedDescs = newMax;
  return 1;
 }


 return 0;
}
