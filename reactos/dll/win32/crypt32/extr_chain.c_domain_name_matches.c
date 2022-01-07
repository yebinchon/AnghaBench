
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char* LPCWSTR ;
typedef int BOOL ;


 int FALSE ;
 int lstrcmpiW (char*,char*) ;
 int lstrlenW (char*) ;

__attribute__((used)) static BOOL domain_name_matches(LPCWSTR constraint, LPCWSTR name)
{
    BOOL match;
    if (constraint[0] == '.')
    {

        if (lstrlenW(name) > lstrlenW(constraint))
            match = !lstrcmpiW(name + lstrlenW(name) - lstrlenW(constraint),
             constraint);
        else
        {

            match = FALSE;
        }
    }
    else
        match = !lstrcmpiW(name, constraint);
     return match;
}
