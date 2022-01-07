
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int code_space_range; } ;
struct TYPE_4__ {int mmgr; int attr; } ;
typedef int HPDF_STATUS ;
typedef TYPE_1__* HPDF_Encoder ;
typedef int HPDF_CidRange_Rec ;
typedef TYPE_2__* HPDF_CMapEncoderAttr ;


 int AddCidRainge (int ,int ,int ) ;
 int HPDF_PTRACE (char*) ;

HPDF_STATUS
HPDF_CMapEncoder_AddCodeSpaceRange (HPDF_Encoder encoder,
                                     HPDF_CidRange_Rec range)
{
    HPDF_CMapEncoderAttr attr = (HPDF_CMapEncoderAttr)encoder->attr;

    HPDF_PTRACE ((" HPDF_CMapEncoder_AddNotDefRange\n"));

    return AddCidRainge (encoder->mmgr, range, attr->code_space_range);
}
