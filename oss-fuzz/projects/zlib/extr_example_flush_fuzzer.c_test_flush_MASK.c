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
struct TYPE_5__ {unsigned char* next_out; int avail_in; unsigned int avail_out; scalar_t__ total_out; int /*<<< orphan*/ * next_in; void* opaque; int /*<<< orphan*/  zfree; int /*<<< orphan*/  zalloc; } ;
typedef  TYPE_1__ z_stream ;
typedef  scalar_t__ z_size_t ;
typedef  int /*<<< orphan*/  Bytef ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  Z_DEFAULT_COMPRESSION ; 
 int /*<<< orphan*/  Z_FINISH ; 
 int /*<<< orphan*/  Z_FULL_FLUSH ; 
 int Z_STREAM_END ; 
 scalar_t__ data ; 
 unsigned int dataLen ; 
 int FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_1__*) ; 
 int FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  zalloc ; 
 int /*<<< orphan*/  zfree ; 

void FUNC4(unsigned char *compr, z_size_t *comprLen) {
  z_stream c_stream; /* compression stream */
  int err;
  unsigned int len = dataLen;

  c_stream.zalloc = zalloc;
  c_stream.zfree = zfree;
  c_stream.opaque = (void *)0;

  err = FUNC3(&c_stream, Z_DEFAULT_COMPRESSION);
  FUNC0(err, "deflateInit");

  c_stream.next_in = (Bytef *)data;
  c_stream.next_out = compr;
  c_stream.avail_in = 3;
  c_stream.avail_out = (unsigned int)*comprLen;
  err = FUNC1(&c_stream, Z_FULL_FLUSH);
  FUNC0(err, "deflate flush 1");

  compr[3]++; /* force an error in first compressed block */
  c_stream.avail_in = len - 3;

  err = FUNC1(&c_stream, Z_FINISH);
  if (err != Z_STREAM_END) {
    FUNC0(err, "deflate flush 2");
  }
  err = FUNC2(&c_stream);
  FUNC0(err, "deflateEnd");

  *comprLen = (z_size_t)c_stream.total_out;
}