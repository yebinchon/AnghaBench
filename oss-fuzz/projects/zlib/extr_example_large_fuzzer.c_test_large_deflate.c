
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {unsigned char* next_out; unsigned int avail_out; unsigned char* next_in; unsigned int avail_in; void* opaque; int zfree; int zalloc; } ;
typedef TYPE_1__ z_stream ;


 int CHECK_ERR (int,char*) ;
 int Z_BEST_COMPRESSION ;
 int Z_DEFAULT_STRATEGY ;
 int Z_FILTERED ;
 int Z_FINISH ;
 int Z_NO_COMPRESSION ;
 int Z_NO_FLUSH ;
 int Z_STREAM_END ;
 int deflate (TYPE_1__*,int ) ;
 int deflateEnd (TYPE_1__*) ;
 int deflateInit (TYPE_1__*,int ) ;
 int deflateParams (TYPE_1__*,int ,int ) ;
 unsigned int diff ;
 int exit (int) ;
 int fprintf (int ,char*) ;
 int stderr ;
 int zalloc ;
 int zfree ;

void test_large_deflate(unsigned char *compr, size_t comprLen,
                        unsigned char *uncompr, size_t uncomprLen) {
  z_stream c_stream;
  int err;

  c_stream.zalloc = zalloc;
  c_stream.zfree = zfree;
  c_stream.opaque = (void *)0;

  err = deflateInit(&c_stream, Z_BEST_COMPRESSION);
  CHECK_ERR(err, "deflateInit");

  c_stream.next_out = compr;
  c_stream.avail_out = (unsigned int)comprLen;




  c_stream.next_in = uncompr;
  c_stream.avail_in = (unsigned int)uncomprLen;
  err = deflate(&c_stream, Z_NO_FLUSH);
  CHECK_ERR(err, "deflate large 1");
  if (c_stream.avail_in != 0) {
    fprintf(stderr, "deflate not greedy\n");
    exit(1);
  }


  deflateParams(&c_stream, Z_NO_COMPRESSION, Z_DEFAULT_STRATEGY);
  c_stream.next_in = compr;
  diff = (unsigned int)(c_stream.next_out - compr);
  c_stream.avail_in = diff;
  err = deflate(&c_stream, Z_NO_FLUSH);
  CHECK_ERR(err, "deflate large 2");


  deflateParams(&c_stream, Z_BEST_COMPRESSION, Z_FILTERED);
  c_stream.next_in = uncompr;
  c_stream.avail_in = (unsigned int)uncomprLen;
  err = deflate(&c_stream, Z_NO_FLUSH);
  CHECK_ERR(err, "deflate large 3");

  err = deflate(&c_stream, Z_FINISH);
  if (err != Z_STREAM_END) {
    fprintf(stderr, "deflate large should report Z_STREAM_END\n");
    exit(1);
  }
  err = deflateEnd(&c_stream);
  CHECK_ERR(err, "deflateEnd");
}
