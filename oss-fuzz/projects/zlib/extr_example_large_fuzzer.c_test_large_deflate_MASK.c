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
struct TYPE_6__ {unsigned char* next_out; unsigned int avail_out; unsigned char* next_in; unsigned int avail_in; void* opaque; int /*<<< orphan*/  zfree; int /*<<< orphan*/  zalloc; } ;
typedef  TYPE_1__ z_stream ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  Z_BEST_COMPRESSION ; 
 int /*<<< orphan*/  Z_DEFAULT_STRATEGY ; 
 int /*<<< orphan*/  Z_FILTERED ; 
 int /*<<< orphan*/  Z_FINISH ; 
 int /*<<< orphan*/  Z_NO_COMPRESSION ; 
 int /*<<< orphan*/  Z_NO_FLUSH ; 
 int Z_STREAM_END ; 
 int FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_1__*) ; 
 int FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned int diff ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  zalloc ; 
 int /*<<< orphan*/  zfree ; 

void FUNC7(unsigned char *compr, size_t comprLen,
                        unsigned char *uncompr, size_t uncomprLen) {
  z_stream c_stream; /* compression stream */
  int err;

  c_stream.zalloc = zalloc;
  c_stream.zfree = zfree;
  c_stream.opaque = (void *)0;

  err = FUNC3(&c_stream, Z_BEST_COMPRESSION);
  FUNC0(err, "deflateInit");

  c_stream.next_out = compr;
  c_stream.avail_out = (unsigned int)comprLen;

  /* At this point, uncompr is still mostly zeroes, so it should compress
   * very well:
   */
  c_stream.next_in = uncompr;
  c_stream.avail_in = (unsigned int)uncomprLen;
  err = FUNC1(&c_stream, Z_NO_FLUSH);
  FUNC0(err, "deflate large 1");
  if (c_stream.avail_in != 0) {
    FUNC6(stderr, "deflate not greedy\n");
    FUNC5(1);
  }

  /* Feed in already compressed data and switch to no compression: */
  FUNC4(&c_stream, Z_NO_COMPRESSION, Z_DEFAULT_STRATEGY);
  c_stream.next_in = compr;
  diff = (unsigned int)(c_stream.next_out - compr);
  c_stream.avail_in = diff;
  err = FUNC1(&c_stream, Z_NO_FLUSH);
  FUNC0(err, "deflate large 2");

  /* Switch back to compressing mode: */
  FUNC4(&c_stream, Z_BEST_COMPRESSION, Z_FILTERED);
  c_stream.next_in = uncompr;
  c_stream.avail_in = (unsigned int)uncomprLen;
  err = FUNC1(&c_stream, Z_NO_FLUSH);
  FUNC0(err, "deflate large 3");

  err = FUNC1(&c_stream, Z_FINISH);
  if (err != Z_STREAM_END) {
    FUNC6(stderr, "deflate large should report Z_STREAM_END\n");
    FUNC5(1);
  }
  err = FUNC2(&c_stream);
  FUNC0(err, "deflateEnd");
}