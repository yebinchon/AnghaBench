
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ unicode; } ;
typedef TYPE_1__ COMBOEX_INFO ;
typedef scalar_t__ BOOL ;


 int TRACE (char*,char*,char*) ;

__attribute__((used)) static BOOL COMBOEX_SetUnicodeFormat (COMBOEX_INFO *infoPtr, BOOL value)
{
    BOOL bTemp = infoPtr->unicode;

    TRACE("to %s, was %s\n", value ? "TRUE":"FALSE", bTemp ? "TRUE":"FALSE");

    infoPtr->unicode = value;

    return bTemp;
}
