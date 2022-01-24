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
typedef  int /*<<< orphan*/  uint ;
typedef  int /*<<< orphan*/  uchar ;
typedef  int /*<<< orphan*/  outBlock ;
struct TYPE_5__ {int len; int breakNdx; int /*<<< orphan*/ * fin; struct TYPE_5__** block; int /*<<< orphan*/  crc; int /*<<< orphan*/  fullBlkCB; int /*<<< orphan*/ * fout; } ;

/* Variables and functions */
 int DICTIONARY_WINDOW ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  SEEK_END ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int UZLIB_CHKSUM_ERROR ; 
 int WRITE_BLOCKS ; 
 int WRITE_BLOCKSIZE ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 void* FUNC3 (char const*,char*) ; 
 int FUNC4 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  get_byte ; 
 TYPE_1__* in ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 TYPE_1__* out ; 
 int /*<<< orphan*/  FUNC8 (char*,...) ; 
 int /*<<< orphan*/  processOutRec ; 
 int /*<<< orphan*/  put_byte ; 
 int /*<<< orphan*/  recall_byte ; 
 void* FUNC9 (int) ; 
 int FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,void**) ; 

int FUNC11(int argc, char *argv[]) {
  FUNC1 (argc==3);
  const char *inFile = argv[1], *outFile = argv[2];
  int i, n, res;
  uint crc;
  void *cxt_not_used;
  FUNC1(sizeof(unsigned int) == 4);

  /* allocate and zero the in and out Blocks */
  FUNC1((in  = FUNC9(sizeof(*in))) != NULL);
  FUNC1((out = FUNC9(sizeof(*out))) != NULL);

  FUNC7(in, 0, sizeof(*in));
  FUNC7(out, 0, sizeof(*out));

  /* open input files and probe end to read the expanded length */
  FUNC1((in->fin = FUNC3(inFile, "rb")) != NULL);
  FUNC5(in->fin, -4, SEEK_END);
  FUNC1(FUNC4((uchar*)&(out->len), 1, 4, in->fin) == 4);
  in->len = FUNC6(in->fin);
  FUNC5(in->fin, 0, SEEK_SET);

  FUNC1((out->fout = FUNC3(outFile, "wb")) != NULL);

  FUNC8 ("Inflating in=%s out=%s\n", inFile, outFile);

  /* Allocate the out buffers (number depends on the unpacked length) */
  n = (out->len > DICTIONARY_WINDOW) ? WRITE_BLOCKS :
                                      1 + (out->len-1) / WRITE_BLOCKSIZE;
  for(i = WRITE_BLOCKS - n + 1;  i <= WRITE_BLOCKS; i++)
    FUNC1((out->block[i % WRITE_BLOCKS] = FUNC9(sizeof(outBlock))) != NULL);

  out->breakNdx  = (out->len < WRITE_BLOCKSIZE) ? out->len : WRITE_BLOCKSIZE;
  out->fullBlkCB = processOutRec;
  out->crc       = ~0;

  /* Call inflate to do the business */
  res = FUNC10 (get_byte, put_byte, recall_byte, in->len, &crc, &cxt_not_used);

  if (res > 0 && crc != ~out->crc)
    res = UZLIB_CHKSUM_ERROR;

  for (i = 0; i < WRITE_BLOCKS; i++)
    FUNC0(out->block[i]);

  FUNC2(in->fin);
  FUNC0(in);
  FUNC0(out);

  if (res < 0)
    FUNC8("Error during decompression: %d\n", res);

  return (res != 0) ? 1: 0;
}