
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int** cid_map; } ;
struct TYPE_4__ {int attr; } ;
typedef int HPDF_UINT16 ;
typedef TYPE_1__* HPDF_Encoder ;
typedef TYPE_2__* HPDF_CMapEncoderAttr ;
typedef size_t HPDF_BYTE ;



HPDF_UINT16
HPDF_CMapEncoder_ToCID (HPDF_Encoder encoder,
                         HPDF_UINT16 code)
{
    HPDF_BYTE l = (HPDF_BYTE)code;
    HPDF_BYTE h = (HPDF_BYTE)(code >> 8);

    HPDF_CMapEncoderAttr attr = (HPDF_CMapEncoderAttr)encoder->attr;

    return attr->cid_map[l][h];
}
