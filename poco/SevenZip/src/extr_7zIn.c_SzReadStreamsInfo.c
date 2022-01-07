
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ UInt64 ;
typedef int UInt32 ;
struct TYPE_3__ {int Folders; int NumFolders; int PackCRCs; int PackCRCsDefined; int PackSizes; int NumPackStreams; } ;
typedef int SRes ;
typedef int ISzAlloc ;
typedef int CSzData ;
typedef TYPE_1__ CSzAr ;
typedef int Byte ;


 int RINOK (int ) ;
 int SZ_ERROR_UNSUPPORTED ;
 int SZ_OK ;
 int SzReadID (int *,scalar_t__*) ;
 int SzReadPackInfo (int *,scalar_t__*,int *,int *,int *,int *,int *) ;
 int SzReadSubStreamsInfo (int *,int ,int ,int *,scalar_t__**,int **,int **,int *) ;
 int SzReadUnpackInfo (int *,int *,int *,int *,int *) ;





__attribute__((used)) static SRes SzReadStreamsInfo(
    CSzData *sd,
    UInt64 *dataOffset,
    CSzAr *p,
    UInt32 *numUnpackStreams,
    UInt64 **unpackSizes,
    Byte **digestsDefined,
    UInt32 **digests,
    ISzAlloc *alloc,
    ISzAlloc *allocTemp)
{
  for (;;)
  {
    UInt64 type;
    RINOK(SzReadID(sd, &type));
    if ((UInt64)(int)type != type)
      return SZ_ERROR_UNSUPPORTED;
    switch((int)type)
    {
      case 131:
        return SZ_OK;
      case 130:
      {
        RINOK(SzReadPackInfo(sd, dataOffset, &p->NumPackStreams,
            &p->PackSizes, &p->PackCRCsDefined, &p->PackCRCs, alloc));
        break;
      }
      case 128:
      {
        RINOK(SzReadUnpackInfo(sd, &p->NumFolders, &p->Folders, alloc, allocTemp));
        break;
      }
      case 129:
      {
        RINOK(SzReadSubStreamsInfo(sd, p->NumFolders, p->Folders,
            numUnpackStreams, unpackSizes, digestsDefined, digests, allocTemp));
        break;
      }
      default:
        return SZ_ERROR_UNSUPPORTED;
    }
  }
}
