
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int member_0; int member_1; int member_2; } ;
struct TYPE_8__ {TYPE_1__* error; } ;
struct TYPE_7__ {scalar_t__ error_no; } ;
typedef scalar_t__ HPDF_STATUS ;
typedef TYPE_2__* HPDF_Encoder ;
typedef TYPE_3__ HPDF_CidRange_Rec ;


 scalar_t__ HPDF_CMapEncoder_AddCodeSpaceRange (TYPE_2__*,TYPE_3__) ;
 scalar_t__ HPDF_OK ;

__attribute__((used)) static HPDF_STATUS
KSC_EUC_AddCodeSpaceRange (HPDF_Encoder encoder)
{
    HPDF_CidRange_Rec code_space_range1 = {0x00, 0x80, 0};
    HPDF_CidRange_Rec code_space_range2 = {0xA1A1, 0xFEFE, 0};

    if (HPDF_CMapEncoder_AddCodeSpaceRange (encoder, code_space_range1)
                    != HPDF_OK)
        return encoder->error->error_no;

    if (HPDF_CMapEncoder_AddCodeSpaceRange (encoder, code_space_range2)
                    != HPDF_OK)
        return encoder->error->error_no;

    return HPDF_OK;
}
