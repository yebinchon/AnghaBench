
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int WCHAR ;
struct TYPE_3__ {int pCHMInfo; } ;
typedef TYPE_1__ HHInfo ;
typedef scalar_t__ DWORD ;


 int GetChmString (int ,scalar_t__) ;
 int * strdupAtoW (int ) ;

__attribute__((used)) static inline WCHAR *ConvertChmString(HHInfo *info, DWORD id)
{
    WCHAR *ret = ((void*)0);

    if(id)
        ret = strdupAtoW(GetChmString(info->pCHMInfo, id));
    return ret;
}
