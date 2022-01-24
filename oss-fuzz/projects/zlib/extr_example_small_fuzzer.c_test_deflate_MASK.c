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
struct TYPE_5__ {unsigned char* next_out; unsigned long total_in; size_t total_out; int avail_in; int avail_out; int /*<<< orphan*/ * next_in; void* opaque; int /*<<< orphan*/  zfree; int /*<<< orphan*/  zalloc; } ;
typedef  TYPE_1__ z_stream ;
typedef  int /*<<< orphan*/  Bytef ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  Z_DEFAULT_COMPRESSION ; 
 int /*<<< orphan*/  Z_FINISH ; 
 int /*<<< orphan*/  Z_NO_FLUSH ; 
 int Z_STREAM_END ; 
 scalar_t__ data ; 
 unsigned long dataLen ; 
 int FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_1__*) ; 
 int FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  zalloc ; 
 int /*<<< orphan*/  zfree ; 

void FUNC4(unsigned char *compr, size_t comprLen) {
  z_stream c_stream; /* compression stream */
  int err;
  unsigned long len = dataLen;

  c_stream.zalloc = zalloc;
  c_stream.zfree = zfree;
  c_stream.opaque = (void *)0;

  err = FUNC3(&c_stream, Z_DEFAULT_COMPRESSION);
  FUNC0(err, "deflateInit");

  c_stream.next_in = (Bytef *)data;
  c_stream.next_out = compr;

  while (c_stream.total_in != len && c_stream.total_out < comprLen) {
    c_stream.avail_in = c_stream.avail_out = 1; /* force small buffers */
    err = FUNC1(&c_stream, Z_NO_FLUSH);
    FUNC0(err, "deflate small 1");
  }
  /* Finish the stream, still forcing small buffers: */
  for (;;) {
    c_stream.avail_out = 1;
    err = FUNC1(&c_stream, Z_FINISH);
    if (err == Z_STREAM_END)
      break;
    FUNC0(err, "deflate small 2");
  }

  err = FUNC2(&c_stream);
  FUNC0(err, "deflateEnd");
}