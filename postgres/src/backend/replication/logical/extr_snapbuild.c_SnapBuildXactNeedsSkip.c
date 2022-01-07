
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ XLogRecPtr ;
struct TYPE_3__ {scalar_t__ start_decoding_at; } ;
typedef TYPE_1__ SnapBuild ;



bool
SnapBuildXactNeedsSkip(SnapBuild *builder, XLogRecPtr ptr)
{
 return ptr < builder->start_decoding_at;
}
