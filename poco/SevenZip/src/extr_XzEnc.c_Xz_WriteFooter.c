
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef unsigned int UInt64 ;
typedef int UInt32 ;
struct TYPE_5__ {size_t totalSize; size_t unpackSize; } ;
struct TYPE_4__ {size_t numBlocks; int flags; TYPE_2__* blocks; } ;
typedef int SRes ;
typedef int ISeqOutStream ;
typedef TYPE_1__ CXzStream ;
typedef TYPE_2__ CXzBlockSizes ;
typedef scalar_t__ Byte ;


 int CRC_GET_DIGEST (int ) ;
 int CRC_INIT_VAL ;
 int CrcCalc (scalar_t__*,int) ;
 int RINOK (int ) ;
 int SetUi32 (scalar_t__*,int ) ;
 int WriteBytes (int *,scalar_t__*,int) ;
 int WriteBytesAndCrc (int *,scalar_t__*,int,int *) ;
 int XZ_FOOTER_SIG ;
 int XZ_FOOTER_SIG_SIZE ;
 unsigned int Xz_WriteVarInt (scalar_t__*,size_t) ;
 int memcpy (scalar_t__*,int ,int ) ;

SRes Xz_WriteFooter(CXzStream *p, ISeqOutStream *s)
{
  Byte buf[32];
  UInt64 globalPos;
  {
    UInt32 crc = CRC_INIT_VAL;
    unsigned pos = 1 + Xz_WriteVarInt(buf + 1, p->numBlocks);
    size_t i;

    globalPos = pos;
    buf[0] = 0;
    RINOK(WriteBytesAndCrc(s, buf, pos, &crc));
    for (i = 0; i < p->numBlocks; i++)
    {
      const CXzBlockSizes *block = &p->blocks[i];
      pos = Xz_WriteVarInt(buf, block->totalSize);
      pos += Xz_WriteVarInt(buf + pos, block->unpackSize);
      globalPos += pos;
      RINOK(WriteBytesAndCrc(s, buf, pos, &crc));
    }
    pos = ((unsigned)globalPos & 3);
    if (pos != 0)
    {
      buf[0] = buf[1] = buf[2] = 0;
      RINOK(WriteBytesAndCrc(s, buf, 4 - pos, &crc));
      globalPos += 4 - pos;
    }
    {
      SetUi32(buf, CRC_GET_DIGEST(crc));
      RINOK(WriteBytes(s, buf, 4));
      globalPos += 4;
    }
  }

  {
    UInt32 indexSize = (UInt32)((globalPos >> 2) - 1);
    SetUi32(buf + 4, indexSize);
    buf[8] = (Byte)(p->flags >> 8);
    buf[9] = (Byte)(p->flags & 0xFF);
    SetUi32(buf, CrcCalc(buf + 4, 6));
    memcpy(buf + 10, XZ_FOOTER_SIG, XZ_FOOTER_SIG_SIZE);
    return WriteBytes(s, buf, 12);
  }
}
