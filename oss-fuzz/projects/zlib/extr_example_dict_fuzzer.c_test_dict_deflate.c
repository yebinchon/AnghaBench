
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {unsigned char* next_out; unsigned int avail_out; int avail_in; int * next_in; int adler; void* opaque; int zfree; int zalloc; } ;
typedef TYPE_1__ z_stream ;
typedef unsigned char uint8_t ;
typedef int Bytef ;


 int CHECK_ERR (int,char*) ;
 int Z_DEFLATED ;
 int Z_FINISH ;
 int Z_STREAM_END ;
 scalar_t__ calloc (int,size_t) ;
 int* data ;
 int dataLen ;
 int deflate (TYPE_1__*,int ) ;
 int deflateBound (TYPE_1__*,int ) ;
 int deflateEnd (TYPE_1__*) ;
 int deflateInit2 (TYPE_1__*,int,int,int,int,int) ;
 int deflateSetDictionary (TYPE_1__*,unsigned char const*,int ) ;
 int dictId ;
 int dictionaryLen ;
 int exit (int) ;
 int fprintf (int ,char*) ;
 int stderr ;
 int zalloc ;
 int zfree ;

void test_dict_deflate(unsigned char **compr, size_t *comprLen)
{
    z_stream c_stream;
    int err;
    int level = data[0] % 11 - 1;






    int method = Z_DEFLATED;

    int windowBits = 8 + data[0] % 8;


    int memLevel = 1 + data[0] % 9;


    int strategy = data[0] % 5;







    if (level == 0 || level == 1)
      level = -1;

    c_stream.zalloc = zalloc;
    c_stream.zfree = zfree;
    c_stream.opaque = (void *)0;

    err = deflateInit2(&c_stream, level, method, windowBits, memLevel, strategy);
    CHECK_ERR(err, "deflateInit");

    err = deflateSetDictionary(
        &c_stream, (const unsigned char *)data, dictionaryLen);
    CHECK_ERR(err, "deflateSetDictionary");


    *comprLen = 100 + 2 * deflateBound(&c_stream, dataLen);
    *compr = (uint8_t *)calloc(1, *comprLen);

    dictId = c_stream.adler;
    c_stream.next_out = *compr;
    c_stream.avail_out = (unsigned int)(*comprLen);

    c_stream.next_in = (Bytef *)data;
    c_stream.avail_in = dataLen;

    err = deflate(&c_stream, Z_FINISH);
    if (err != Z_STREAM_END) {
        fprintf(stderr, "deflate dict should report Z_STREAM_END\n");
        exit(1);
    }
    err = deflateEnd(&c_stream);
    CHECK_ERR(err, "deflateEnd");
}
