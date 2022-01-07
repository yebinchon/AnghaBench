
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_13__ {int cid; int to; int from; } ;
struct TYPE_12__ {TYPE_1__* error; } ;
struct TYPE_11__ {int error_no; } ;
typedef int HPDF_STATUS ;
typedef TYPE_2__* HPDF_MMgr ;
typedef int HPDF_List ;
typedef TYPE_3__ HPDF_CidRange_Rec ;


 int HPDF_FreeMem (TYPE_2__*,TYPE_3__*) ;
 TYPE_3__* HPDF_GetMem (TYPE_2__*,int) ;
 int HPDF_List_Add (int ,TYPE_3__*) ;
 int HPDF_OK ;

__attribute__((used)) static HPDF_STATUS
AddCidRainge (HPDF_MMgr mmgr,
               HPDF_CidRange_Rec range,
               HPDF_List target)
{
    HPDF_CidRange_Rec *prange;
    HPDF_STATUS ret;

    prange = HPDF_GetMem (mmgr, sizeof(HPDF_CidRange_Rec));
    if (!prange)
        return mmgr->error->error_no;

    prange->from = range.from;
    prange->to = range.to;
    prange->cid = range.cid;

    if ((ret = HPDF_List_Add (target, prange))
                != HPDF_OK) {
        HPDF_FreeMem (mmgr, prange);
        return ret;
    }

    return HPDF_OK;
}
