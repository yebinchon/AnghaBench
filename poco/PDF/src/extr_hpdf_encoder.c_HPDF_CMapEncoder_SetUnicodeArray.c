
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int** unicode_map; } ;
struct TYPE_7__ {int attr; } ;
struct TYPE_6__ {int unicode; int code; } ;
typedef TYPE_1__ HPDF_UnicodeMap_Rec ;
typedef TYPE_2__* HPDF_Encoder ;
typedef TYPE_3__* HPDF_CMapEncoderAttr ;
typedef size_t HPDF_BYTE ;


 int HPDF_PTRACE (char*) ;

void
HPDF_CMapEncoder_SetUnicodeArray (HPDF_Encoder encoder,
                                   const HPDF_UnicodeMap_Rec *array)
{
    HPDF_CMapEncoderAttr attr = (HPDF_CMapEncoderAttr)encoder->attr;

    HPDF_PTRACE ((" HPDF_CMapEncoder_SetUnicodeArray\n"));

    if (array != ((void*)0))
        while (array->unicode != 0xffff) {
            HPDF_BYTE l = (HPDF_BYTE)array->code;
            HPDF_BYTE h = (HPDF_BYTE)(array->code >> 8);
            attr->unicode_map[l][h] = array->unicode;
            array++;
        }
}
