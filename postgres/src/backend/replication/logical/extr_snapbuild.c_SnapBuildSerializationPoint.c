
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int XLogRecPtr ;
struct TYPE_5__ {scalar_t__ state; } ;
typedef TYPE_1__ SnapBuild ;


 scalar_t__ SNAPBUILD_CONSISTENT ;
 int SnapBuildRestore (TYPE_1__*,int ) ;
 int SnapBuildSerialize (TYPE_1__*,int ) ;

void
SnapBuildSerializationPoint(SnapBuild *builder, XLogRecPtr lsn)
{
 if (builder->state < SNAPBUILD_CONSISTENT)
  SnapBuildRestore(builder, lsn);
 else
  SnapBuildSerialize(builder, lsn);
}
