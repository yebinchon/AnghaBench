
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TOOLTIPS_INFO ;
typedef int LRESULT ;


 int TOOLTIPS_InitSystemSettings (int *) ;

__attribute__((used)) static LRESULT
TOOLTIPS_WinIniChange (TOOLTIPS_INFO *infoPtr)
{
    TOOLTIPS_InitSystemSettings (infoPtr);

    return 0;
}
