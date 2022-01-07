
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;
typedef int UInt64 ;
typedef int UChar ;
typedef size_t DWORD ;
typedef int BOOL ;


 int CHM_MAX_PATHLEN ;
 int CP_UTF8 ;
 size_t MultiByteToWideChar (int ,int ,char*,int ,char*,int ) ;

__attribute__((used)) static BOOL _chm_parse_UTF8(UChar **pEntry, UInt64 count, WCHAR *path)
{
    DWORD length = MultiByteToWideChar(CP_UTF8, 0, (char *)*pEntry, count, path, CHM_MAX_PATHLEN);
    path[length] = '\0';
    *pEntry += count;
    return !!length;
}
