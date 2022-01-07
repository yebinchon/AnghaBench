
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * MemoryContext ;
typedef int Block ;


 int ALLOCSET_DEFAULT_SIZES ;
 int * AllocSetContextCreate (int ,char*,int ) ;
 int Assert (int) ;
 int BLCKSZ ;
 int Max (int,int) ;
 int MaxAllocSize ;
 scalar_t__ MemoryContextAlloc (int *,int) ;
 int Min (int,int) ;
 int NLocBuffer ;
 int TopMemoryContext ;

__attribute__((used)) static Block
GetLocalBufferStorage(void)
{
 static char *cur_block = ((void*)0);
 static int next_buf_in_block = 0;
 static int num_bufs_in_block = 0;
 static int total_bufs_allocated = 0;
 static MemoryContext LocalBufferContext = ((void*)0);

 char *this_buf;

 Assert(total_bufs_allocated < NLocBuffer);

 if (next_buf_in_block >= num_bufs_in_block)
 {

  int num_bufs;






  if (LocalBufferContext == ((void*)0))
   LocalBufferContext =
    AllocSetContextCreate(TopMemoryContext,
           "LocalBufferContext",
           ALLOCSET_DEFAULT_SIZES);


  num_bufs = Max(num_bufs_in_block * 2, 16);

  num_bufs = Min(num_bufs, NLocBuffer - total_bufs_allocated);

  num_bufs = Min(num_bufs, MaxAllocSize / BLCKSZ);

  cur_block = (char *) MemoryContextAlloc(LocalBufferContext,
            num_bufs * BLCKSZ);
  next_buf_in_block = 0;
  num_bufs_in_block = num_bufs;
 }


 this_buf = cur_block + next_buf_in_block * BLCKSZ;
 next_buf_in_block++;
 total_bufs_allocated++;

 return (Block) this_buf;
}
