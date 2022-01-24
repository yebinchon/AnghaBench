#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  char WCHAR ;
struct TYPE_3__ {int Control; void* Sacl; void* Dacl; void* Group; void* Owner; } ;
typedef  TYPE_1__ SECURITY_DESCRIPTOR_RELATIVE ;
typedef  int /*<<< orphan*/  PACL ;
typedef  int* LPDWORD ;
typedef  char* LPCWSTR ;
typedef  void* LPBYTE ;
typedef  int DWORD ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR_INVALID_PARAMETER ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC2 (char*,void*,int*) ; 
 int SE_DACL_PRESENT ; 
 int SE_SACL_PRESENT ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 char* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,int) ; 

__attribute__((used)) static BOOL FUNC8(
    LPCWSTR StringSecurityDescriptor,
    SECURITY_DESCRIPTOR_RELATIVE* SecurityDescriptor,
    LPDWORD cBytes)
{
    BOOL bret = FALSE;
    WCHAR toktype;
    WCHAR *tok;
    LPCWSTR lptoken;
    LPBYTE lpNext = NULL;
    DWORD len;

    *cBytes = sizeof(SECURITY_DESCRIPTOR_RELATIVE);

    tok = FUNC4( (FUNC6(StringSecurityDescriptor) + 1) * sizeof(WCHAR));

    if (SecurityDescriptor)
        lpNext = (LPBYTE)(SecurityDescriptor + 1);

    while (*StringSecurityDescriptor == ' ')
        StringSecurityDescriptor++;

    while (*StringSecurityDescriptor)
    {
        toktype = *StringSecurityDescriptor;

	/* Expect char identifier followed by ':' */
	StringSecurityDescriptor++;
        if (*StringSecurityDescriptor != ':')
        {
            FUNC3(ERROR_INVALID_PARAMETER);
            goto lend;
        }
	StringSecurityDescriptor++;

	/* Extract token */
	lptoken = StringSecurityDescriptor;
	while (*lptoken && *lptoken != ':')
            lptoken++;

	if (*lptoken)
            lptoken--;

        len = lptoken - StringSecurityDescriptor;
        FUNC7( tok, StringSecurityDescriptor, len * sizeof(WCHAR) );
        tok[len] = 0;

        switch (toktype)
	{
            case 'O':
            {
                DWORD bytes;

                if (!FUNC2(tok, lpNext, &bytes))
                    goto lend;

                if (SecurityDescriptor)
                {
                    SecurityDescriptor->Owner = lpNext - (LPBYTE)SecurityDescriptor;
                    lpNext += bytes; /* Advance to next token */
                }

		*cBytes += bytes;

                break;
            }

            case 'G':
            {
                DWORD bytes;

                if (!FUNC2(tok, lpNext, &bytes))
                    goto lend;

                if (SecurityDescriptor)
                {
                    SecurityDescriptor->Group = lpNext - (LPBYTE)SecurityDescriptor;
                    lpNext += bytes; /* Advance to next token */
                }

		*cBytes += bytes;

                break;
            }

            case 'D':
	    {
                DWORD flags;
                DWORD bytes;

                if (!FUNC1(tok, &flags, (PACL)lpNext, &bytes))
                    goto lend;

                if (SecurityDescriptor)
                {
                    SecurityDescriptor->Control |= SE_DACL_PRESENT | flags;
                    SecurityDescriptor->Dacl = lpNext - (LPBYTE)SecurityDescriptor;
                    lpNext += bytes; /* Advance to next token */
		}

		*cBytes += bytes;

		break;
            }

            case 'S':
            {
                DWORD flags;
                DWORD bytes;

                if (!FUNC1(tok, &flags, (PACL)lpNext, &bytes))
                    goto lend;

                if (SecurityDescriptor)
                {
                    SecurityDescriptor->Control |= SE_SACL_PRESENT | flags;
                    SecurityDescriptor->Sacl = lpNext - (LPBYTE)SecurityDescriptor;
                    lpNext += bytes; /* Advance to next token */
		}

		*cBytes += bytes;

		break;
            }

            default:
                FUNC0("Unknown token\n");
                FUNC3(ERROR_INVALID_PARAMETER);
		goto lend;
	}

        StringSecurityDescriptor = lptoken;
    }

    bret = TRUE;

lend:
    FUNC5(tok);
    return bret;
}