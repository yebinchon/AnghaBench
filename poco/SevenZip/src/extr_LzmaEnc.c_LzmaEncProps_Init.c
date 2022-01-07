
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ UInt32 ;
struct TYPE_3__ {int level; int lc; int lp; int pb; int algo; int fb; int btMode; int numHashBytes; int numThreads; scalar_t__ writeEndMark; scalar_t__ reduceSize; scalar_t__ mc; scalar_t__ dictSize; } ;
typedef scalar_t__ Int32 ;
typedef TYPE_1__ CLzmaEncProps ;



void LzmaEncProps_Init(CLzmaEncProps *p)
{
  p->level = 5;
  p->dictSize = p->mc = 0;
  p->reduceSize = (UInt32)(Int32)-1;
  p->lc = p->lp = p->pb = p->algo = p->fb = p->btMode = p->numHashBytes = p->numThreads = -1;
  p->writeEndMark = 0;
}
