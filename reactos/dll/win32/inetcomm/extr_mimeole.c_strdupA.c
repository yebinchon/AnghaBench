
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char* LPSTR ;
typedef int LPCSTR ;


 int GetProcessHeap () ;
 char* HeapAlloc (int ,int ,int) ;
 int memcpy (char*,int ,int) ;
 int strlen (int ) ;

__attribute__((used)) static LPSTR strdupA(LPCSTR str)
{
    char *ret;
    int len = strlen(str);
    ret = HeapAlloc(GetProcessHeap(), 0, len + 1);
    memcpy(ret, str, len + 1);
    return ret;
}
