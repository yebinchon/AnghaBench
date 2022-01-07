
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;
typedef char* LPWSTR ;
typedef int LPCWSTR ;


 char* PathFindExtensionW (char*) ;
 char* StrChrW (char*,char) ;
 int lstrcpyW (char*,int ) ;

__attribute__((used)) static LPWSTR get_first_ext_from_spec(LPWSTR buf, LPCWSTR spec)
{
    WCHAR *endpos, *ext;

    lstrcpyW(buf, spec);
    if( (endpos = StrChrW(buf, ';')) )
        *endpos = '\0';

    ext = PathFindExtensionW(buf);
    if(StrChrW(ext, '*'))
        return ((void*)0);

    return ext;
}
