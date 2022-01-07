
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ WORD ;
struct TYPE_2__ {scalar_t__ wRecordType; int * pszRecordName; } ;
typedef int TCHAR ;
typedef int * LPTSTR ;
typedef size_t INT ;


 TYPE_1__* TypeArray ;
 int _T (char*) ;
 int _stprintf (int *,int ,scalar_t__) ;

LPTSTR
GetRecordTypeName(WORD wType)
{
    static TCHAR szType[8];
    INT i;

    for (i = 0; ; i++)
    {
         if (TypeArray[i].pszRecordName == ((void*)0))
             break;

         if (TypeArray[i].wRecordType == wType)
             return TypeArray[i].pszRecordName;
    }

    _stprintf(szType, _T("%hu"), wType);

    return szType;
}
