
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int properties ;
typedef int UInt32 ;
struct TYPE_3__ {int * Probs; int Properties; } ;
typedef int SizeT ;
typedef int CProb ;
typedef TYPE_1__ CLzmaDecoderState ;


 int LZMA_PROPERTIES_SIZE ;
 int LZMA_RESULT_DATA_ERROR ;
 scalar_t__ LZMA_RESULT_OK ;
 int LzmaDecode (TYPE_1__*,unsigned char*,int,int*,unsigned char*,int,int*) ;
 scalar_t__ LzmaDecodeProperties (int *,unsigned char*,int) ;
 int LzmaGetNumProbs (int *) ;
 int MyReadFileAndCheck (unsigned char*,unsigned char*,int) ;
 scalar_t__ dpos ;
 int free (int *) ;
 char* kCantAllocateMessage ;
 char* kCantReadMessage ;
 scalar_t__ malloc (int) ;
 int printf (char*,...) ;
 int rpos ;

int lzma_inflate(unsigned char *source, int s_len, unsigned char *dest, int *d_len)
{



  UInt32 outSize = 0;
  UInt32 outSizeHigh = 0;
  SizeT outSizeFull;
  unsigned char *outStream;

  int waitEOS = 1;



  SizeT compressedSize;
  unsigned char *inStream;

  CLzmaDecoderState state;
  unsigned char properties[LZMA_PROPERTIES_SIZE];

  int res;

  rpos=0; dpos=0;

  if (sizeof(UInt32) < 4)
  {

    printf("LZMA decoder needs correct UInt32\n");

    return LZMA_RESULT_DATA_ERROR;
  }

  {
    long length=s_len;
    if ((long)(SizeT)length != length)
    {

      printf("Too big compressed stream\n");

      return LZMA_RESULT_DATA_ERROR;
    }
    compressedSize = (SizeT)(length - (LZMA_PROPERTIES_SIZE + 8));
  }



  if (!MyReadFileAndCheck(source, properties, sizeof(properties)))
  {

    printf("%s\n", kCantReadMessage);

    return LZMA_RESULT_DATA_ERROR;
  }


  {
    int i;
    for (i = 0; i < 8; i++)
    {
      unsigned char b;
      if (!MyReadFileAndCheck(source, &b, 1))
      {

        printf("%s\n", kCantReadMessage);

        return LZMA_RESULT_DATA_ERROR;
      }
      if (b != 0xFF)
        waitEOS = 0;
      if (i < 4)
        outSize += (UInt32)(b) << (i * 8);
      else
        outSizeHigh += (UInt32)(b) << ((i - 4) * 8);
    }

    if (waitEOS)
    {

      printf("Stream with EOS marker is not supported");

      return LZMA_RESULT_DATA_ERROR;
    }
    outSizeFull = (SizeT)outSize;
    if (sizeof(SizeT) >= 8)
      outSizeFull |= (((SizeT)outSizeHigh << 16) << 16);
    else if (outSizeHigh != 0 || (UInt32)(SizeT)outSize != outSize)
    {

      printf("Too big uncompressed stream");

      return LZMA_RESULT_DATA_ERROR;
    }
  }


  if (LzmaDecodeProperties(&state.Properties, properties, LZMA_PROPERTIES_SIZE) != LZMA_RESULT_OK)
  {

    printf("Incorrect stream properties");

    return LZMA_RESULT_DATA_ERROR;
  }
  state.Probs = (CProb *)malloc(LzmaGetNumProbs(&state.Properties) * sizeof(CProb));

  if (outSizeFull == 0)
    outStream = 0;
  else
  {
    if (outSizeFull > *d_len)
      outStream = 0;
    else
      outStream = dest;
  }

  if (compressedSize == 0)
    inStream = 0;
  else
  {
    if ((compressedSize+rpos) > s_len )
      inStream = 0;
    else
      inStream = source + rpos;
  }

  if (state.Probs == 0
    || (outStream == 0 && outSizeFull != 0)
    || (inStream == 0 && compressedSize != 0)
    )
  {
    free(state.Probs);

    printf("%s\n", kCantAllocateMessage);

    return LZMA_RESULT_DATA_ERROR;
  }


  {
    SizeT inProcessed;
    SizeT outProcessed;
    res = LzmaDecode(&state,
      inStream, compressedSize, &inProcessed,
      outStream, outSizeFull, &outProcessed);
    if (res != 0)
    {

      printf("\nDecoding error = %d\n", res);

      res = 1;
    }
    else
    {
      *d_len = outProcessed;
    }
  }

  free(state.Probs);
  return res;
}
