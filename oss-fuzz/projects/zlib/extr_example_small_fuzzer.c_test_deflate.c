
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {unsigned char* next_out; unsigned long total_in; size_t total_out; int avail_in; int avail_out; int * next_in; void* opaque; int zfree; int zalloc; } ;
typedef TYPE_1__ z_stream ;
typedef int Bytef ;


 int CHECK_ERR (int,char*) ;
 int Z_DEFAULT_COMPRESSION ;
 int Z_FINISH ;
 int Z_NO_FLUSH ;
 int Z_STREAM_END ;
 scalar_t__ data ;
 unsigned long dataLen ;
 int deflate (TYPE_1__*,int ) ;
 int deflateEnd (TYPE_1__*) ;
 int deflateInit (TYPE_1__*,int ) ;
 int zalloc ;
 int zfree ;

void test_deflate(unsigned char *compr, size_t comprLen) {
  z_stream c_stream;
  int err;
  unsigned long len = dataLen;

  c_stream.zalloc = zalloc;
  c_stream.zfree = zfree;
  c_stream.opaque = (void *)0;

  err = deflateInit(&c_stream, Z_DEFAULT_COMPRESSION);
  CHECK_ERR(err, "deflateInit");

  c_stream.next_in = (Bytef *)data;
  c_stream.next_out = compr;

  while (c_stream.total_in != len && c_stream.total_out < comprLen) {
    c_stream.avail_in = c_stream.avail_out = 1;
    err = deflate(&c_stream, Z_NO_FLUSH);
    CHECK_ERR(err, "deflate small 1");
  }

  for (;;) {
    c_stream.avail_out = 1;
    err = deflate(&c_stream, Z_FINISH);
    if (err == Z_STREAM_END)
      break;
    CHECK_ERR(err, "deflate small 2");
  }

  err = deflateEnd(&c_stream);
  CHECK_ERR(err, "deflateEnd");
}
