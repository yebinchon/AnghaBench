
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ flags; scalar_t__ blocks; scalar_t__ numBlocksAllocated; scalar_t__ numBlocks; } ;
typedef TYPE_1__ CXzStream ;



void Xz_Construct(CXzStream *p)
{
  p->numBlocks = p->numBlocksAllocated = 0;
  p->blocks = 0;
  p->flags = 0;
}
