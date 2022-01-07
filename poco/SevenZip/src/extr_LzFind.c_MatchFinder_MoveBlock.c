
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ keepSizeBefore; scalar_t__ bufferBase; scalar_t__ buffer; scalar_t__ pos; scalar_t__ streamPos; } ;
typedef TYPE_1__ CMatchFinder ;


 int memmove (scalar_t__,scalar_t__,size_t) ;

void MatchFinder_MoveBlock(CMatchFinder *p)
{
  memmove(p->bufferBase,
    p->buffer - p->keepSizeBefore,
    (size_t)(p->streamPos - p->pos + p->keepSizeBefore));
  p->buffer = p->bufferBase + p->keepSizeBefore;
}
