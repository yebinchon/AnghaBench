#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int uint8_t ;
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  outmode ;
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int BUFLEN ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/ * FUNC7 (char*,char*) ; 
 scalar_t__ FUNC8 (char*,int,int,int /*<<< orphan*/ *) ; 
 size_t FUNC9 (int const*,int,unsigned int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int const*,char*,int) ; 
 int /*<<< orphan*/  FUNC11 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 int /*<<< orphan*/  FUNC13 (char*,int,char*,char*) ; 

int FUNC14(const uint8_t *data, size_t dataLen) {
  char *inFileName = "/tmp/minigzip_fuzzer.out";
  char *outFileName = "/tmp/minigzip_fuzzer.out.gz";
  char outmode[20];
  FILE *in;
  char buf[BUFLEN];
  uint32_t offset = 0;

  /* Discard inputs larger than 1Mb. */
  static size_t kMaxSize = 1024 * 1024;
  if (dataLen < 1 || dataLen > kMaxSize)
    return 0;

  in = FUNC7(inFileName, "w");
  if (FUNC9(data, 1, (unsigned)dataLen, in) != dataLen)
    FUNC1("failed fwrite");
  if (FUNC3(in))
    FUNC1("failed fclose");

  FUNC11(outmode, 0, sizeof(outmode));
  FUNC13(outmode, sizeof(outmode), "%s", "wb");

  /* Compression level: [0..9]. */
  outmode[2] = data[0] % 10;

  switch (data[0] % 4) {
  default:
  case 0:
    outmode[3] = 0;
    break;
  case 1:
    /* compress with Z_FILTERED */
    outmode[3] = 'f';
    break;
  case 2:
    /* compress with Z_HUFFMAN_ONLY */
    outmode[3] = 'h';
    break;
  case 3:
    /* compress with Z_RLE */
    outmode[3] = 'R';
    break;
  }

  FUNC5(inFileName, outmode);
  FUNC6(outFileName);

  /* Check that the uncompressed file matches the input data. */
  in = FUNC7(inFileName, "rb");
  if (in == NULL) {
    FUNC12(inFileName);
    FUNC2(1);
  }

  FUNC11(buf, 0, sizeof(buf));
  for (;;) {
    int len = (int)FUNC8(buf, 1, sizeof(buf), in);
    if (FUNC4(in)) {
      FUNC12("fread");
      FUNC2(1);
    }
    if (len == 0)
      break;
    FUNC0(0 == FUNC10(data + offset, buf, len));
    offset += len;
  }

  if (FUNC3(in))
    FUNC1("failed fclose");

  /* This function must return 0. */
  return 0;
}