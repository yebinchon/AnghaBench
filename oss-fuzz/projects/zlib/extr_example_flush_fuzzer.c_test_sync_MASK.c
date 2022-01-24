#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {unsigned char* next_in; int avail_in; unsigned char* next_out; unsigned int avail_out; void* opaque; int /*<<< orphan*/  zfree; int /*<<< orphan*/  zalloc; } ;
typedef  TYPE_1__ z_stream ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int Z_DATA_ERROR ; 
 int /*<<< orphan*/  Z_FINISH ; 
 int /*<<< orphan*/  Z_NO_FLUSH ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC4 (TYPE_1__*) ; 
 int FUNC5 (TYPE_1__*) ; 
 int FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  zalloc ; 
 int /*<<< orphan*/  zfree ; 

void FUNC7(unsigned char *compr, size_t comprLen, unsigned char *uncompr,
               size_t uncomprLen) {
  int err;
  z_stream d_stream; /* decompression stream */

  d_stream.zalloc = zalloc;
  d_stream.zfree = zfree;
  d_stream.opaque = (void *)0;

  d_stream.next_in = compr;
  d_stream.avail_in = 2; /* just read the zlib header */

  err = FUNC5(&d_stream);
  FUNC0(err, "inflateInit");

  d_stream.next_out = uncompr;
  d_stream.avail_out = (unsigned int)uncomprLen;

  err = FUNC3(&d_stream, Z_NO_FLUSH);
  FUNC0(err, "inflate");

  d_stream.avail_in = (unsigned int)comprLen - 2; /* read all compressed data */
  err = FUNC6(&d_stream); /* but skip the damaged part */
  FUNC0(err, "inflateSync");

  err = FUNC3(&d_stream, Z_FINISH);
  if (err != Z_DATA_ERROR) {
    FUNC2(stderr, "inflate should report DATA_ERROR\n");
    /* Because of incorrect adler32 */
    FUNC1(1);
  }
  err = FUNC4(&d_stream);
  FUNC0(err, "inflateEnd");
}