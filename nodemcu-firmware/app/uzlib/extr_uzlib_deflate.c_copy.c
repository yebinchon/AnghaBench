
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int min; int max; int code; scalar_t__ extraBits; } ;
typedef TYPE_1__ codeRecord ;
struct TYPE_6__ {TYPE_1__* distCodes; TYPE_1__* lenCodes; } ;
struct TYPE_5__ {int compDisabled; } ;


 int DBG_COUNT (int) ;
 int assert (int) ;
 int distCodes_LEN ;
 TYPE_3__* dynamicTables ;
 int lenCodes_LEN ;
 TYPE_2__* oBuf ;
 int outBits (int,scalar_t__) ;
 int outBitsRev (int,int) ;

void copy (int distance, int len) {
  DBG_COUNT(7);
  const codeRecord *lenCodes = dynamicTables->lenCodes, *l;
  const codeRecord *distCodes = dynamicTables->distCodes, *d;
  int i, j, k;

  assert(!oBuf->compDisabled);

  while (len > 0) {
    int thislen = (len > 260 ? 258 : len <= 258 ? len : len - 3);
    len -= thislen;




    i = -1;
    j = lenCodes_LEN;
    while (1) {
      assert(j - i >= 2);
      k = (j + i) / 2;
      if (thislen < lenCodes[k].min)
        j = k;
      else if (thislen > lenCodes[k].max)
        i = k;
      else {
        l = &lenCodes[k];
        break;
      }
    }





    if (l->code <= 279) {
      outBitsRev((l->code - 256) * 2, 7);
    } else {
      outBitsRev(0xc0 - 280 + l->code, 8);
    }



    if (l->extraBits)
      outBits(thislen - l->min, l->extraBits);




    i = -1;
    j = distCodes_LEN;
    while (1) {
      assert(j - i >= 2);
      k = (j + i) / 2;
      if (distance < distCodes[k].min)
        j = k;
      else if (distance > distCodes[k].max)
        i = k;
      else {
        d = &distCodes[k];
        break;
      }
    }




    outBitsRev(d->code * 8, 5);




    if (d->extraBits)
      outBits(distance - d->min, d->extraBits);
  }
}
