
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {unsigned char* next_in; unsigned int avail_in; unsigned char* next_out; unsigned int avail_out; scalar_t__ total_out; void* opaque; int zfree; int zalloc; } ;
typedef TYPE_1__ z_stream ;


 int CHECK_ERR (int,char*) ;
 int Z_NO_FLUSH ;
 int Z_STREAM_END ;
 scalar_t__ diff ;
 int exit (int) ;
 int fprintf (int ,char*,scalar_t__) ;
 int inflate (TYPE_1__*,int ) ;
 int inflateEnd (TYPE_1__*) ;
 int inflateInit (TYPE_1__*) ;
 int stderr ;
 int zalloc ;
 int zfree ;

void test_large_inflate(unsigned char *compr, size_t comprLen,
                        unsigned char *uncompr, size_t uncomprLen) {
  int err;
  z_stream d_stream;

  d_stream.zalloc = zalloc;
  d_stream.zfree = zfree;
  d_stream.opaque = (void *)0;

  d_stream.next_in = compr;
  d_stream.avail_in = (unsigned int)comprLen;

  err = inflateInit(&d_stream);
  CHECK_ERR(err, "inflateInit");

  for (;;) {
    d_stream.next_out = uncompr;
    d_stream.avail_out = (unsigned int)uncomprLen;
    err = inflate(&d_stream, Z_NO_FLUSH);
    if (err == Z_STREAM_END)
      break;
    CHECK_ERR(err, "large inflate");
  }

  err = inflateEnd(&d_stream);
  CHECK_ERR(err, "inflateEnd");

  if (d_stream.total_out != 2 * uncomprLen + diff) {
    fprintf(stderr, "bad large inflate: %zu\n", d_stream.total_out);
    exit(1);
  }
}
