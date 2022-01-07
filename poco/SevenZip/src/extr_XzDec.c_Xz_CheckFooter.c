
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UInt64 ;
typedef scalar_t__ CXzStreamFlags ;
typedef int Byte ;
typedef int Bool ;


 scalar_t__ CrcCalc (int const*,int) ;
 scalar_t__ GetBe16 (int const*) ;
 scalar_t__ GetUi32 (int const*) ;
 int XZ_FOOTER_SIG ;
 int XZ_FOOTER_SIG_SIZE ;
 scalar_t__ memcmp (int const*,int ,int ) ;

__attribute__((used)) static Bool Xz_CheckFooter(CXzStreamFlags flags, UInt64 indexSize, const Byte *buf)
{
  return
      indexSize == (((UInt64)GetUi32(buf + 4) + 1) << 2) &&
      (GetUi32(buf) == CrcCalc(buf + 4, 6) &&
      flags == GetBe16(buf + 8) &&
      memcmp(buf + 10, XZ_FOOTER_SIG, XZ_FOOTER_SIG_SIZE) == 0);
}
