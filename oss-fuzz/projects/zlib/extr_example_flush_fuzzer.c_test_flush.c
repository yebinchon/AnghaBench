
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {unsigned char* next_out; int avail_in; unsigned int avail_out; scalar_t__ total_out; int * next_in; void* opaque; int zfree; int zalloc; } ;
typedef TYPE_1__ z_stream ;
typedef scalar_t__ z_size_t ;
typedef int Bytef ;


 int CHECK_ERR (int,char*) ;
 int Z_DEFAULT_COMPRESSION ;
 int Z_FINISH ;
 int Z_FULL_FLUSH ;
 int Z_STREAM_END ;
 scalar_t__ data ;
 unsigned int dataLen ;
 int deflate (TYPE_1__*,int ) ;
 int deflateEnd (TYPE_1__*) ;
 int deflateInit (TYPE_1__*,int ) ;
 int zalloc ;
 int zfree ;

void test_flush(unsigned char *compr, z_size_t *comprLen) {
  z_stream c_stream;
  int err;
  unsigned int len = dataLen;

  c_stream.zalloc = zalloc;
  c_stream.zfree = zfree;
  c_stream.opaque = (void *)0;

  err = deflateInit(&c_stream, Z_DEFAULT_COMPRESSION);
  CHECK_ERR(err, "deflateInit");

  c_stream.next_in = (Bytef *)data;
  c_stream.next_out = compr;
  c_stream.avail_in = 3;
  c_stream.avail_out = (unsigned int)*comprLen;
  err = deflate(&c_stream, Z_FULL_FLUSH);
  CHECK_ERR(err, "deflate flush 1");

  compr[3]++;
  c_stream.avail_in = len - 3;

  err = deflate(&c_stream, Z_FINISH);
  if (err != Z_STREAM_END) {
    CHECK_ERR(err, "deflate flush 2");
  }
  err = deflateEnd(&c_stream);
  CHECK_ERR(err, "deflateEnd");

  *comprLen = (z_size_t)c_stream.total_out;
}
