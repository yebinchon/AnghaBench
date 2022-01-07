
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;


 int ARRAYSIZE (int *) ;
 int GetPriorityClipboardFormat (int *,int ) ;

UINT GetAutomaticClipboardFormat(void)
{
    static UINT uFormatList[] =
    {
        131,
        128,
        129,
        132,
        134,
        133,
        139,
        140,
        141,
        135,
        138,
        136,
        137,
        130
    };

    return GetPriorityClipboardFormat(uFormatList, ARRAYSIZE(uFormatList));
}
