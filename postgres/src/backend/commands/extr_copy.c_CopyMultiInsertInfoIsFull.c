
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ bufferedTuples; scalar_t__ bufferedBytes; } ;
typedef TYPE_1__ CopyMultiInsertInfo ;


 scalar_t__ MAX_BUFFERED_BYTES ;
 scalar_t__ MAX_BUFFERED_TUPLES ;

__attribute__((used)) static inline bool
CopyMultiInsertInfoIsFull(CopyMultiInsertInfo *miinfo)
{
 if (miinfo->bufferedTuples >= MAX_BUFFERED_TUPLES ||
  miinfo->bufferedBytes >= MAX_BUFFERED_BYTES)
  return 1;
 return 0;
}
