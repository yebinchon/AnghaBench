
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ Size ;
typedef int CommitTimestampShared ;


 int CommitTsShmemBuffers () ;
 scalar_t__ SimpleLruShmemSize (int ,int ) ;

Size
CommitTsShmemSize(void)
{
 return SimpleLruShmemSize(CommitTsShmemBuffers(), 0) +
  sizeof(CommitTimestampShared);
}
