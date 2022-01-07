
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ LPCWSTR ;
typedef int DWORD ;
typedef int BOOL ;


 int CERT_TRUST_INVALID_NAME_CONSTRAINTS ;
 int FALSE ;
 int TRACE (char*,int ,int ) ;
 int debugstr_w (scalar_t__) ;
 int domain_name_matches (scalar_t__,scalar_t__) ;
 int lstrcmpiW (scalar_t__,scalar_t__) ;
 scalar_t__ strchrW (scalar_t__,char) ;

__attribute__((used)) static BOOL rfc822_name_matches(LPCWSTR constraint, LPCWSTR name,
 DWORD *trustErrorStatus)
{
    BOOL match = FALSE;
    LPCWSTR at;

    TRACE("%s, %s\n", debugstr_w(constraint), debugstr_w(name));

    if (!constraint)
        *trustErrorStatus |= CERT_TRUST_INVALID_NAME_CONSTRAINTS;
    else if (!name)
        ;
    else if (strchrW(constraint, '@'))
        match = !lstrcmpiW(constraint, name);
    else
    {
        if ((at = strchrW(name, '@')))
            match = domain_name_matches(constraint, at + 1);
        else
            match = !lstrcmpiW(constraint, name);
    }
    return match;
}
