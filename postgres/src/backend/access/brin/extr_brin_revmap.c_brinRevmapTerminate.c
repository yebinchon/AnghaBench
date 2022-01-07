
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ rm_metaBuf; scalar_t__ rm_currBuf; } ;
typedef TYPE_1__ BrinRevmap ;


 scalar_t__ InvalidBuffer ;
 int ReleaseBuffer (scalar_t__) ;
 int pfree (TYPE_1__*) ;

void
brinRevmapTerminate(BrinRevmap *revmap)
{
 ReleaseBuffer(revmap->rm_metaBuf);
 if (revmap->rm_currBuf != InvalidBuffer)
  ReleaseBuffer(revmap->rm_currBuf);
 pfree(revmap);
}
