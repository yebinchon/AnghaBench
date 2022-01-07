
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LPFILETIME ;
typedef char* LPCSTR ;


 int filetime_to_str (int ) ;
 char* wine_dbg_sprintf (char*,int ,int ) ;

__attribute__((used)) static LPCSTR debugstr_filetime(LPFILETIME pTime)
{
    if (!pTime)
        return "(nil)";
    return wine_dbg_sprintf("%p (%s)", pTime, filetime_to_str(pTime));
}
