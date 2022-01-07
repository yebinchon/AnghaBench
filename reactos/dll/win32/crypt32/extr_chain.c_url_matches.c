
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;
typedef char* LPCWSTR ;
typedef int DWORD ;
typedef int BOOL ;


 int ARRAY_SIZE (char*) ;
 int CERT_TRUST_INVALID_NAME_CONSTRAINTS ;
 int FALSE ;
 int TRACE (char*,int ,int ) ;
 int debugstr_w (char*) ;
 int domain_name_matches (char*,char*) ;
 int memcpy (char*,char*,int) ;
 char* strchrW (char*,char) ;
 int strlenW (char*) ;

__attribute__((used)) static BOOL url_matches(LPCWSTR constraint, LPCWSTR name,
 DWORD *trustErrorStatus)
{
    BOOL match = FALSE;

    TRACE("%s, %s\n", debugstr_w(constraint), debugstr_w(name));

    if (!constraint)
        *trustErrorStatus |= CERT_TRUST_INVALID_NAME_CONSTRAINTS;
    else if (!name)
        ;
    else
    {
        LPCWSTR colon, authority_end, at, hostname = ((void*)0);

        WCHAR hostname_buf[255];
        colon = strchrW(name, ':');
        if (colon && *(colon + 1) == '/' && *(colon + 2) == '/')
            name = colon + 3;




        authority_end = strchrW(name, '/');
        if (!authority_end)
            authority_end = strchrW(name, '?');
        if (!authority_end)
            authority_end = name + strlenW(name);




        for (colon = authority_end; colon >= name && *colon != ':' &&
         *colon != '@'; colon--)
            ;
        if (*colon == ':')
            authority_end = colon;

        if ((at = strchrW(name, '@')))
            name = at;

        if (*authority_end)
        {
            if (authority_end - name < ARRAY_SIZE(hostname_buf))
            {
                memcpy(hostname_buf, name,
                 (authority_end - name) * sizeof(WCHAR));
                hostname_buf[authority_end - name] = 0;
                hostname = hostname_buf;
            }

        }
        else
            hostname = name;
        if (hostname)
            match = domain_name_matches(constraint, hostname);
    }
    return match;
}
