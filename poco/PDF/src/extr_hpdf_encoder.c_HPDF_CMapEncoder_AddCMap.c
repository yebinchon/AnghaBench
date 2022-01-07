
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_13__ {int** cid_map; int cmap_range; } ;
struct TYPE_12__ {int from; int to; int cid; } ;
struct TYPE_11__ {scalar_t__ to_unicode_fn; int mmgr; TYPE_1__* error; int attr; } ;
struct TYPE_10__ {int error_no; } ;
typedef int HPDF_UINT16 ;
typedef int HPDF_STATUS ;
typedef TYPE_2__* HPDF_Encoder ;
typedef TYPE_3__ HPDF_CidRange_Rec ;
typedef TYPE_4__* HPDF_CMapEncoderAttr ;
typedef size_t HPDF_BYTE ;


 scalar_t__ HPDF_CMapEncoder_ToUnicode ;
 int HPDF_FreeMem (int ,TYPE_3__*) ;
 TYPE_3__* HPDF_GetMem (int ,int) ;
 int HPDF_List_Add (int ,TYPE_3__*) ;
 int HPDF_OK ;
 int HPDF_PTRACE (char*) ;

HPDF_STATUS
HPDF_CMapEncoder_AddCMap (HPDF_Encoder encoder,
                           const HPDF_CidRange_Rec *range)
{
    HPDF_CMapEncoderAttr attr = (HPDF_CMapEncoderAttr)encoder->attr;

    HPDF_PTRACE ((" HPDF_CMapEncoder_AddCMap\n"));


    while (range->from != 0xffff || range->to != 0xffff) {
 HPDF_CidRange_Rec *prange;
 HPDF_STATUS ret;




 if (encoder->to_unicode_fn == HPDF_CMapEncoder_ToUnicode) {
     HPDF_UINT16 code = range->from;
     HPDF_UINT16 cid = range->cid;

     while (code <= range->to) {
  HPDF_BYTE l = code;
  HPDF_BYTE h = code >> 8;

  attr->cid_map[l][h] = cid;
  code++;
  cid++;
     }
 }

        prange = HPDF_GetMem (encoder->mmgr, sizeof(HPDF_CidRange_Rec));
        if (!prange)
            return encoder->error->error_no;

        prange->from = range->from;
        prange->to = range->to;
        prange->cid = range->cid;

        if ((ret = HPDF_List_Add (attr->cmap_range, prange)) != HPDF_OK) {
            HPDF_FreeMem (encoder->mmgr, prange);
            return ret;
        }

        range++;
    }

    return HPDF_OK;
}
