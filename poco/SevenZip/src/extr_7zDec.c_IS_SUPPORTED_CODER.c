
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ UInt32 ;
struct TYPE_3__ {int NumInStreams; int NumOutStreams; scalar_t__ MethodID; } ;
typedef TYPE_1__ CSzCoderInfo ;
typedef int Bool ;


 scalar_t__ IS_MAIN_METHOD (scalar_t__) ;

__attribute__((used)) static Bool IS_SUPPORTED_CODER(const CSzCoderInfo *c)
{
  return
      c->NumInStreams == 1 &&
      c->NumOutStreams == 1 &&
      c->MethodID <= (UInt32)0xFFFFFFFF &&
      IS_MAIN_METHOD((UInt32)c->MethodID);
}
