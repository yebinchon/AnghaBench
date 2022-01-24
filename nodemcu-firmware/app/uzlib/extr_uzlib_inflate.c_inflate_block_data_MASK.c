#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int uchar ;
typedef  int /*<<< orphan*/  UZLIB_TREE ;
struct TYPE_5__ {int (* recall_byte ) (void*) ;void* curLen; int /*<<< orphan*/  (* put_byte ) (int) ;void* lzOffs; int /*<<< orphan*/ * distBase; int /*<<< orphan*/ * distBits; int /*<<< orphan*/ * lengthBase; int /*<<< orphan*/ * lengthBits; } ;
typedef  TYPE_1__ UZLIB_DATA ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,int,...) ; 
 int UZLIB_DONE ; 
 int UZLIB_OK ; 
 int FUNC1 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 void* FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (void*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

__attribute__((used)) static int FUNC6 (UZLIB_DATA *d, UZLIB_TREE *lt, UZLIB_TREE *dt) {
  if (d->curLen == 0) {
    int dist;
    int sym = FUNC1(d, lt);

    /* literal byte */
    if (sym < 256) {
       FUNC0("huff sym: %02x   %c\n", sym, sym);
       d->put_byte(sym);
       return UZLIB_OK;
    }

    /* end of block */
    if (sym == 256)
       return UZLIB_DONE;

    /* substring from sliding dictionary */
    sym -= 257;
    /* possibly get more bits from length code */
    d->curLen = FUNC2(d, d->lengthBits[sym], d->lengthBase[sym]);
    dist = FUNC1(d, dt);
    /* possibly get more bits from distance code */
    d->lzOffs = FUNC2(d, d->distBits[dist], d->distBase[dist]);
    FUNC0("huff dict: -%u for %u\n", d->lzOffs, d->curLen);
  }

  /* copy next byte from dict substring */
  uchar b = d->recall_byte(d->lzOffs);
  FUNC0("huff dict byte(%u): -%u -  %02x   %c\n\n",
          d->curLen, d->lzOffs, b, b);
  d->put_byte(b);
  d->curLen--;
  return UZLIB_OK;
}