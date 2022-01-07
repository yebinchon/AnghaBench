
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {unsigned char* next_in; int avail_in; unsigned char* next_out; unsigned int avail_out; void* opaque; int zfree; int zalloc; } ;
typedef TYPE_1__ z_stream ;


 int CHECK_ERR (int,char*) ;
 int Z_DATA_ERROR ;
 int Z_FINISH ;
 int Z_NO_FLUSH ;
 int exit (int) ;
 int fprintf (int ,char*) ;
 int inflate (TYPE_1__*,int ) ;
 int inflateEnd (TYPE_1__*) ;
 int inflateInit (TYPE_1__*) ;
 int inflateSync (TYPE_1__*) ;
 int stderr ;
 int zalloc ;
 int zfree ;

void test_sync(unsigned char *compr, size_t comprLen, unsigned char *uncompr,
               size_t uncomprLen) {
  int err;
  z_stream d_stream;

  d_stream.zalloc = zalloc;
  d_stream.zfree = zfree;
  d_stream.opaque = (void *)0;

  d_stream.next_in = compr;
  d_stream.avail_in = 2;

  err = inflateInit(&d_stream);
  CHECK_ERR(err, "inflateInit");

  d_stream.next_out = uncompr;
  d_stream.avail_out = (unsigned int)uncomprLen;

  err = inflate(&d_stream, Z_NO_FLUSH);
  CHECK_ERR(err, "inflate");

  d_stream.avail_in = (unsigned int)comprLen - 2;
  err = inflateSync(&d_stream);
  CHECK_ERR(err, "inflateSync");

  err = inflate(&d_stream, Z_FINISH);
  if (err != Z_DATA_ERROR) {
    fprintf(stderr, "inflate should report DATA_ERROR\n");

    exit(1);
  }
  err = inflateEnd(&d_stream);
  CHECK_ERR(err, "inflateEnd");
}
