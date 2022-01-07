
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HPDF_Encoder ;
typedef int HPDF_BYTE ;
typedef int HPDF_BOOL ;


 int HPDF_UNUSED (int ) ;

__attribute__((used)) static HPDF_BOOL
KSC_EUC_IsTrialByte (HPDF_Encoder encoder,
                    HPDF_BYTE b)
{
    HPDF_UNUSED (encoder);
    return (b >= 0xa0 && b <= 0xfe);
}
