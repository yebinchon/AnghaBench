#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {unsigned char* next_out; unsigned int avail_out; int /*<<< orphan*/  avail_in; int /*<<< orphan*/ * next_in; int /*<<< orphan*/  adler; void* opaque; int /*<<< orphan*/  zfree; int /*<<< orphan*/  zalloc; } ;
typedef  TYPE_1__ z_stream ;
typedef  unsigned char uint8_t ;
typedef  int /*<<< orphan*/  Bytef ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int Z_DEFLATED ; 
 int /*<<< orphan*/  Z_FINISH ; 
 int Z_STREAM_END ; 
 scalar_t__ FUNC1 (int,size_t) ; 
 int* data ; 
 int /*<<< orphan*/  dataLen ; 
 int FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC4 (TYPE_1__*) ; 
 int FUNC5 (TYPE_1__*,int,int,int,int,int) ; 
 int FUNC6 (TYPE_1__*,unsigned char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dictId ; 
 int /*<<< orphan*/  dictionaryLen ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  zalloc ; 
 int /*<<< orphan*/  zfree ; 

void FUNC9(unsigned char **compr, size_t *comprLen)
{
    z_stream c_stream; /* compression stream */
    int err;
    int level = data[0] % 11 - 1; /* [-1..9]
      compression levels
      #define Z_NO_COMPRESSION         0
      #define Z_BEST_SPEED             1
      #define Z_BEST_COMPRESSION       9
      #define Z_DEFAULT_COMPRESSION  (-1) */

    int method = Z_DEFLATED; /* The deflate compression method (the only one
                                supported in this version) */
    int windowBits = 8 + data[0] % 8; /* The windowBits parameter is the base
      two logarithm of the window size (the size of the history buffer).  It
      should be in the range 8..15 for this version of the library. */
    int memLevel = 1 + data[0] % 9;   /* memLevel=1 uses minimum memory but is
      slow and reduces compression ratio; memLevel=9 uses maximum memory for
      optimal speed. */
    int strategy = data[0] % 5;       /* [0..4]
      #define Z_FILTERED            1
      #define Z_HUFFMAN_ONLY        2
      #define Z_RLE                 3
      #define Z_FIXED               4
      #define Z_DEFAULT_STRATEGY    0 */

    /* deflate would fail for no-compression or for speed levels. */
    if (level == 0 || level == 1)
      level = -1;

    c_stream.zalloc = zalloc;
    c_stream.zfree = zfree;
    c_stream.opaque = (void *)0;

    err = FUNC5(&c_stream, level, method, windowBits, memLevel, strategy);
    FUNC0(err, "deflateInit");

    err = FUNC6(
        &c_stream, (const unsigned char *)data, dictionaryLen);
    FUNC0(err, "deflateSetDictionary");

    /* deflateBound does not provide enough space for low compression levels. */
    *comprLen = 100 + 2 * FUNC3(&c_stream, dataLen);
    *compr = (uint8_t *)FUNC1(1, *comprLen);

    dictId = c_stream.adler;
    c_stream.next_out = *compr;
    c_stream.avail_out = (unsigned int)(*comprLen);

    c_stream.next_in = (Bytef *)data;
    c_stream.avail_in = dataLen;

    err = FUNC2(&c_stream, Z_FINISH);
    if (err != Z_STREAM_END) {
        FUNC8(stderr, "deflate dict should report Z_STREAM_END\n");
        FUNC7(1);
    }
    err = FUNC4(&c_stream);
    FUNC0(err, "deflateEnd");
}