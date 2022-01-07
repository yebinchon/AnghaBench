
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * Probs; } ;
typedef int SizeT ;
typedef int CProb ;


 int DBG (char*,...) ;
 int LZMA_RESULT_OK ;
 int LzmaDecode (TYPE_1__*,int *,int ,int*,unsigned char*,int ,int*) ;
 int * lzma_data ;
 int lzma_datasize ;
 int lzma_outsize ;
 TYPE_1__ lzma_state ;
 scalar_t__ workspace ;

__attribute__((used)) static int lzma_decompress(unsigned char *outStream)
{
 SizeT ip, op;
 int ret;

 lzma_state.Probs = (CProb *) workspace;

 ret = LzmaDecode(&lzma_state, lzma_data, lzma_datasize, &ip, outStream,
    lzma_outsize, &op);

 if (ret != LZMA_RESULT_OK) {
  int i;

  DBG("LzmaDecode error %d at %08x, osize:%d ip:%d op:%d\n",
      ret, lzma_data + ip, lzma_outsize, ip, op);

  for (i = 0; i < 16; i++)
   DBG("%02x ", lzma_data[ip + i]);

  DBG("\n");
 }

 return ret;
}
