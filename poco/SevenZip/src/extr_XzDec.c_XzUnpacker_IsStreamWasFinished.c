
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int UInt32 ;
struct TYPE_3__ {scalar_t__ state; scalar_t__ padSize; } ;
typedef TYPE_1__ CXzUnpacker ;
typedef int Bool ;


 scalar_t__ XZ_STATE_STREAM_PADDING ;

Bool XzUnpacker_IsStreamWasFinished(CXzUnpacker *p)
{
  return (p->state == XZ_STATE_STREAM_PADDING) && (((UInt32)p->padSize & 3) == 0);
}
