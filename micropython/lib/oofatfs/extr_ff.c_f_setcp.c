
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WORD ;
typedef size_t UINT ;
typedef int FRESULT ;
typedef int BYTE ;


 int CodePage ;
 int * DbcTbl ;




 int * ExCvt ;
 int FR_INVALID_PARAMETER ;
 int FR_OK ;

FRESULT f_setcp (
    WORD cp
)
{
    static const WORD validcp[] = { 437, 720, 737, 771, 775, 850, 852, 857, 860, 861, 862, 863, 864, 865, 866, 869, 932, 936, 949, 950, 0};
    static const BYTE* const tables[] = {147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 0};
    UINT i;


    for (i = 0; validcp[i] != 0 && validcp[i] != cp; i++) ;
    if (validcp[i] != cp) return FR_INVALID_PARAMETER;

    CodePage = cp;
    if (cp >= 900) {
        ExCvt = 0;
        DbcTbl = tables[i];
    } else {
        ExCvt = tables[i];
        DbcTbl = 0;
    }
    return FR_OK;
}
