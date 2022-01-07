
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int stream; } ;
typedef int HPDF_Xref ;
typedef scalar_t__ HPDF_STATUS ;
typedef TYPE_1__* HPDF_Number ;
typedef int HPDF_MMgr ;
typedef TYPE_1__* HPDF_Dict ;


 scalar_t__ HPDF_Dict_Add (TYPE_1__*,char*,TYPE_1__*) ;
 TYPE_1__* HPDF_Dict_New (int ) ;
 int HPDF_MemStream_New (int ,int ) ;
 TYPE_1__* HPDF_Number_New (int ,int ) ;
 scalar_t__ HPDF_OK ;
 int HPDF_STREAM_BUF_SIZ ;
 scalar_t__ HPDF_Xref_Add (int ,TYPE_1__*) ;

HPDF_Dict
HPDF_DictStream_New (HPDF_MMgr mmgr,
                      HPDF_Xref xref)
{
    HPDF_Dict obj;
    HPDF_Number length;
    HPDF_STATUS ret = 0;

    obj = HPDF_Dict_New (mmgr);
    if (!obj)
        return ((void*)0);


    ret += HPDF_Xref_Add (xref, obj);
    if (ret != HPDF_OK)
        return ((void*)0);

    length = HPDF_Number_New (mmgr, 0);
    if (!length)
        return ((void*)0);

    ret = HPDF_Xref_Add (xref, length);
    if (ret != HPDF_OK)
        return ((void*)0);

    ret = HPDF_Dict_Add (obj, "Length", length);
    if (ret != HPDF_OK)
        return ((void*)0);

    obj->stream = HPDF_MemStream_New (mmgr, HPDF_STREAM_BUF_SIZ);
    if (!obj->stream)
        return ((void*)0);

    return obj;
}
