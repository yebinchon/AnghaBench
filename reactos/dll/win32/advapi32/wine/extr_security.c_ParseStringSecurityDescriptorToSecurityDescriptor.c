
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef char WCHAR ;
struct TYPE_3__ {int Control; void* Sacl; void* Dacl; void* Group; void* Owner; } ;
typedef TYPE_1__ SECURITY_DESCRIPTOR_RELATIVE ;
typedef int PACL ;
typedef int* LPDWORD ;
typedef char* LPCWSTR ;
typedef void* LPBYTE ;
typedef int DWORD ;
typedef int BOOL ;


 int ERROR_INVALID_PARAMETER ;
 int FALSE ;
 int FIXME (char*) ;
 int ParseStringAclToAcl (char*,int*,int ,int*) ;
 int ParseStringSidToSid (char*,void*,int*) ;
 int SE_DACL_PRESENT ;
 int SE_SACL_PRESENT ;
 int SetLastError (int ) ;
 int TRUE ;
 char* heap_alloc (int) ;
 int heap_free (char*) ;
 int lstrlenW (char*) ;
 int memcpy (char*,char*,int) ;

__attribute__((used)) static BOOL ParseStringSecurityDescriptorToSecurityDescriptor(
    LPCWSTR StringSecurityDescriptor,
    SECURITY_DESCRIPTOR_RELATIVE* SecurityDescriptor,
    LPDWORD cBytes)
{
    BOOL bret = FALSE;
    WCHAR toktype;
    WCHAR *tok;
    LPCWSTR lptoken;
    LPBYTE lpNext = ((void*)0);
    DWORD len;

    *cBytes = sizeof(SECURITY_DESCRIPTOR_RELATIVE);

    tok = heap_alloc( (lstrlenW(StringSecurityDescriptor) + 1) * sizeof(WCHAR));

    if (SecurityDescriptor)
        lpNext = (LPBYTE)(SecurityDescriptor + 1);

    while (*StringSecurityDescriptor == ' ')
        StringSecurityDescriptor++;

    while (*StringSecurityDescriptor)
    {
        toktype = *StringSecurityDescriptor;


 StringSecurityDescriptor++;
        if (*StringSecurityDescriptor != ':')
        {
            SetLastError(ERROR_INVALID_PARAMETER);
            goto lend;
        }
 StringSecurityDescriptor++;


 lptoken = StringSecurityDescriptor;
 while (*lptoken && *lptoken != ':')
            lptoken++;

 if (*lptoken)
            lptoken--;

        len = lptoken - StringSecurityDescriptor;
        memcpy( tok, StringSecurityDescriptor, len * sizeof(WCHAR) );
        tok[len] = 0;

        switch (toktype)
 {
            case 'O':
            {
                DWORD bytes;

                if (!ParseStringSidToSid(tok, lpNext, &bytes))
                    goto lend;

                if (SecurityDescriptor)
                {
                    SecurityDescriptor->Owner = lpNext - (LPBYTE)SecurityDescriptor;
                    lpNext += bytes;
                }

  *cBytes += bytes;

                break;
            }

            case 'G':
            {
                DWORD bytes;

                if (!ParseStringSidToSid(tok, lpNext, &bytes))
                    goto lend;

                if (SecurityDescriptor)
                {
                    SecurityDescriptor->Group = lpNext - (LPBYTE)SecurityDescriptor;
                    lpNext += bytes;
                }

  *cBytes += bytes;

                break;
            }

            case 'D':
     {
                DWORD flags;
                DWORD bytes;

                if (!ParseStringAclToAcl(tok, &flags, (PACL)lpNext, &bytes))
                    goto lend;

                if (SecurityDescriptor)
                {
                    SecurityDescriptor->Control |= SE_DACL_PRESENT | flags;
                    SecurityDescriptor->Dacl = lpNext - (LPBYTE)SecurityDescriptor;
                    lpNext += bytes;
  }

  *cBytes += bytes;

  break;
            }

            case 'S':
            {
                DWORD flags;
                DWORD bytes;

                if (!ParseStringAclToAcl(tok, &flags, (PACL)lpNext, &bytes))
                    goto lend;

                if (SecurityDescriptor)
                {
                    SecurityDescriptor->Control |= SE_SACL_PRESENT | flags;
                    SecurityDescriptor->Sacl = lpNext - (LPBYTE)SecurityDescriptor;
                    lpNext += bytes;
  }

  *cBytes += bytes;

  break;
            }

            default:
                FIXME("Unknown token\n");
                SetLastError(ERROR_INVALID_PARAMETER);
  goto lend;
 }

        StringSecurityDescriptor = lptoken;
    }

    bret = TRUE;

lend:
    heap_free(tok);
    return bret;
}
