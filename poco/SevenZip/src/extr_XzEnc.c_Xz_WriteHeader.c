
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UInt32 ;
typedef int SRes ;
typedef int ISeqOutStream ;
typedef int CXzStreamFlags ;
typedef scalar_t__ Byte ;


 int CrcCalc (scalar_t__*,int) ;
 int SetUi32 (scalar_t__*,int ) ;
 int WriteBytes (int *,scalar_t__*,int) ;
 int XZ_SIG ;
 size_t XZ_SIG_SIZE ;
 int XZ_STREAM_FLAGS_SIZE ;
 int XZ_STREAM_HEADER_SIZE ;
 int memcpy (scalar_t__*,int ,size_t) ;

SRes Xz_WriteHeader(CXzStreamFlags f, ISeqOutStream *s)
{
  UInt32 crc;
  Byte header[XZ_STREAM_HEADER_SIZE];
  memcpy(header, XZ_SIG, XZ_SIG_SIZE);
  header[XZ_SIG_SIZE] = (Byte)(f >> 8);
  header[XZ_SIG_SIZE + 1] = (Byte)(f & 0xFF);
  crc = CrcCalc(header + XZ_SIG_SIZE, XZ_STREAM_FLAGS_SIZE);
  SetUi32(header + XZ_SIG_SIZE + XZ_STREAM_FLAGS_SIZE, crc);
  return WriteBytes(s, header, XZ_STREAM_HEADER_SIZE);
}
