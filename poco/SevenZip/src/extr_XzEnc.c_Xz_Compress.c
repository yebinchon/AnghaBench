
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_37__ TYPE_8__ ;
typedef struct TYPE_36__ TYPE_7__ ;
typedef struct TYPE_35__ TYPE_6__ ;
typedef struct TYPE_34__ TYPE_5__ ;
typedef struct TYPE_33__ TYPE_4__ ;
typedef struct TYPE_32__ TYPE_3__ ;
typedef struct TYPE_31__ TYPE_2__ ;
typedef struct TYPE_30__ TYPE_25__ ;
typedef struct TYPE_29__ TYPE_23__ ;
typedef struct TYPE_28__ TYPE_1__ ;
typedef struct TYPE_27__ TYPE_19__ ;
typedef struct TYPE_26__ TYPE_15__ ;


typedef scalar_t__ UInt64 ;
struct TYPE_30__ {int Read; } ;
struct TYPE_27__ {TYPE_25__ p; TYPE_25__* realStream; } ;
struct TYPE_29__ {TYPE_25__ p; TYPE_25__* inStream; } ;
struct TYPE_37__ {TYPE_19__ filter; TYPE_23__ sb; int lzma2; } ;
struct TYPE_36__ {int processed; TYPE_25__ p; int * realStream; } ;
struct TYPE_26__ {int Write; } ;
struct TYPE_35__ {scalar_t__ processed; TYPE_15__ p; int * realStream; } ;
struct TYPE_34__ {int unpackSize; scalar_t__ packSize; TYPE_4__* filters; } ;
struct TYPE_33__ {scalar_t__ id; int propsSize; void** props; } ;
struct TYPE_32__ {scalar_t__ id; int delta; int ip; scalar_t__ ipDefined; } ;
struct TYPE_31__ {TYPE_3__* filterProps; int lzma2Props; scalar_t__ checkId; } ;
struct TYPE_28__ {void* flags; } ;
typedef int SRes ;
typedef int ISeqOutStream ;
typedef int ISeqInStream ;
typedef int ICompressProgress ;
typedef TYPE_1__ CXzStream ;
typedef TYPE_2__ CXzProps ;
typedef TYPE_3__ CXzFilterProps ;
typedef TYPE_4__ CXzFilter ;
typedef TYPE_5__ CXzBlock ;
typedef TYPE_6__ CSeqSizeOutStream ;
typedef TYPE_7__ CSeqCheckInStream ;
typedef TYPE_8__ CLzma2WithFilters ;
typedef void* Byte ;


 int Lzma2Enc_Encode (int ,TYPE_15__*,TYPE_25__*,int *) ;
 int Lzma2Enc_SetProps (int ,int ) ;
 void* Lzma2Enc_WriteProperties (int ) ;
 int MyWrite ;
 int RINOK (int ) ;
 int SbEncInStream_Init (TYPE_23__*) ;
 int SeqCheckInStream_GetDigest (TYPE_7__*,void**) ;
 int SeqCheckInStream_Init (TYPE_7__*,int ) ;
 int SeqCheckInStream_Read ;
 int SeqInFilter_Init (TYPE_19__*,TYPE_4__*) ;
 int SetUi32 (void**,int ) ;
 int WriteBytes (TYPE_15__*,void**,scalar_t__) ;
 scalar_t__ XZ_ID_Delta ;
 scalar_t__ XZ_ID_LZMA2 ;
 scalar_t__ XZ_ID_Subblock ;
 int XzBlock_ClearFlags (TYPE_5__*) ;
 int XzBlock_SetNumFilters (TYPE_5__*,int) ;
 int XzBlock_WriteHeader (TYPE_5__*,TYPE_15__*) ;
 scalar_t__ XzFlags_GetCheckSize (void*) ;
 int XzFlags_GetCheckType (void*) ;
 int Xz_AddIndexRecord (TYPE_1__*,int ,scalar_t__,int *) ;
 int Xz_WriteFooter (TYPE_1__*,int *) ;
 int Xz_WriteHeader (void*,int *) ;
 int g_Alloc ;

__attribute__((used)) static SRes Xz_Compress(CXzStream *xz, CLzma2WithFilters *lzmaf,
    ISeqOutStream *outStream, ISeqInStream *inStream,
    const CXzProps *props, ICompressProgress *progress)
{
  xz->flags = (Byte)props->checkId;

  RINOK(Lzma2Enc_SetProps(lzmaf->lzma2, props->lzma2Props));
  RINOK(Xz_WriteHeader(xz->flags, outStream));

  {
    CSeqCheckInStream checkInStream;
    CSeqSizeOutStream seqSizeOutStream;
    CXzBlock block;
    int filterIndex = 0;
    CXzFilter *filter = ((void*)0);
    const CXzFilterProps *fp = props->filterProps;

    XzBlock_ClearFlags(&block);
    XzBlock_SetNumFilters(&block, 1 + (fp ? 1 : 0));

    if (fp)
    {
      filter = &block.filters[filterIndex++];
      filter->id = fp->id;
      filter->propsSize = 0;
      if (fp->id == XZ_ID_Delta)
      {
        filter->props[0] = (Byte)(fp->delta - 1);
        filter->propsSize = 1;
      }
      else if (fp->ipDefined)
      {
        SetUi32(filter->props, fp->ip);
        filter->propsSize = 4;
      }
    }

    {
      CXzFilter *f = &block.filters[filterIndex++];
      f->id = XZ_ID_LZMA2;
      f->propsSize = 1;
      f->props[0] = Lzma2Enc_WriteProperties(lzmaf->lzma2);
    }

    seqSizeOutStream.p.Write = MyWrite;
    seqSizeOutStream.realStream = outStream;
    seqSizeOutStream.processed = 0;

    RINOK(XzBlock_WriteHeader(&block, &seqSizeOutStream.p));

    checkInStream.p.Read = SeqCheckInStream_Read;
    checkInStream.realStream = inStream;
    SeqCheckInStream_Init(&checkInStream, XzFlags_GetCheckType(xz->flags));

    if (fp)
    {
      {
        lzmaf->filter.realStream = &checkInStream.p;
        RINOK(SeqInFilter_Init(&lzmaf->filter, filter));
      }
    }

    {
      UInt64 packPos = seqSizeOutStream.processed;
      SRes res = Lzma2Enc_Encode(lzmaf->lzma2, &seqSizeOutStream.p,
        fp ?



        &lzmaf->filter.p:
        &checkInStream.p,
        progress);
      RINOK(res);
      block.unpackSize = checkInStream.processed;
      block.packSize = seqSizeOutStream.processed - packPos;
    }

    {
      unsigned padSize = 0;
      Byte buf[128];
      while((((unsigned)block.packSize + padSize) & 3) != 0)
        buf[padSize++] = 0;
      SeqCheckInStream_GetDigest(&checkInStream, buf + padSize);
      RINOK(WriteBytes(&seqSizeOutStream.p, buf, padSize + XzFlags_GetCheckSize(xz->flags)));
      RINOK(Xz_AddIndexRecord(xz, block.unpackSize, seqSizeOutStream.processed - padSize, &g_Alloc));
    }
  }
  return Xz_WriteFooter(xz, outStream);
}
