
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HPDF_Encoder ;
typedef int HPDF_BYTE ;
typedef int HPDF_BOOL ;


 int HPDF_UNUSED (int ) ;

__attribute__((used)) static HPDF_BOOL
GBK_EUC_IsLeadByte (HPDF_Encoder encoder,
                  HPDF_BYTE b)
{
    HPDF_UNUSED (encoder);
    return ((b >= 0x81 && b <= 0xfe));
}
