
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint ;
typedef int uchar ;
typedef int outBlock ;
struct TYPE_5__ {int len; int breakNdx; int * fin; struct TYPE_5__** block; int crc; int fullBlkCB; int * fout; } ;


 int DICTIONARY_WINDOW ;
 int FREE (TYPE_1__*) ;
 int SEEK_END ;
 int SEEK_SET ;
 int UZLIB_CHKSUM_ERROR ;
 int WRITE_BLOCKS ;
 int WRITE_BLOCKSIZE ;
 int assert (int) ;
 int fclose (int *) ;
 void* fopen (char const*,char*) ;
 int fread (int *,int,int,int *) ;
 int fseek (int *,int,int ) ;
 int ftell (int *) ;
 int get_byte ;
 TYPE_1__* in ;
 int memset (TYPE_1__*,int ,int) ;
 TYPE_1__* out ;
 int printf (char*,...) ;
 int processOutRec ;
 int put_byte ;
 int recall_byte ;
 void* uz_malloc (int) ;
 int uzlib_inflate (int ,int ,int ,int,int *,void**) ;

int main(int argc, char *argv[]) {
  assert (argc==3);
  const char *inFile = argv[1], *outFile = argv[2];
  int i, n, res;
  uint crc;
  void *cxt_not_used;
  assert(sizeof(unsigned int) == 4);


  assert((in = uz_malloc(sizeof(*in))) != ((void*)0));
  assert((out = uz_malloc(sizeof(*out))) != ((void*)0));

  memset(in, 0, sizeof(*in));
  memset(out, 0, sizeof(*out));


  assert((in->fin = fopen(inFile, "rb")) != ((void*)0));
  fseek(in->fin, -4, SEEK_END);
  assert(fread((uchar*)&(out->len), 1, 4, in->fin) == 4);
  in->len = ftell(in->fin);
  fseek(in->fin, 0, SEEK_SET);

  assert((out->fout = fopen(outFile, "wb")) != ((void*)0));

  printf ("Inflating in=%s out=%s\n", inFile, outFile);


  n = (out->len > DICTIONARY_WINDOW) ? WRITE_BLOCKS :
                                      1 + (out->len-1) / WRITE_BLOCKSIZE;
  for(i = WRITE_BLOCKS - n + 1; i <= WRITE_BLOCKS; i++)
    assert((out->block[i % WRITE_BLOCKS] = uz_malloc(sizeof(outBlock))) != ((void*)0));

  out->breakNdx = (out->len < WRITE_BLOCKSIZE) ? out->len : WRITE_BLOCKSIZE;
  out->fullBlkCB = processOutRec;
  out->crc = ~0;


  res = uzlib_inflate (get_byte, put_byte, recall_byte, in->len, &crc, &cxt_not_used);

  if (res > 0 && crc != ~out->crc)
    res = UZLIB_CHKSUM_ERROR;

  for (i = 0; i < WRITE_BLOCKS; i++)
    FREE(out->block[i]);

  fclose(in->fin);
  FREE(in);
  FREE(out);

  if (res < 0)
    printf("Error during decompression: %d\n", res);

  return (res != 0) ? 1: 0;
}
