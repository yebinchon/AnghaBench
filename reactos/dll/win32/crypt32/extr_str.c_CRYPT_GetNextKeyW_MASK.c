#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct X500TokenW {char* start; char* end; } ;
typedef  char* LPCWSTR ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  CRYPT_E_INVALID_X500_STRING ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (char) ; 

__attribute__((used)) static BOOL FUNC4(LPCWSTR str, struct X500TokenW *token,
 LPCWSTR *ppszError)
{
    BOOL ret = TRUE;

    while (*str && FUNC3(*str))
        str++;
    if (*str)
    {
        token->start = str;
        while (*str && *str != '=' && !FUNC3(*str))
            str++;
        if (*str && (*str == '=' || FUNC3(*str)))
            token->end = str;
        else
        {
            FUNC1("missing equals char at %s\n", FUNC2(token->start));
            if (ppszError)
                *ppszError = token->start;
            FUNC0(CRYPT_E_INVALID_X500_STRING);
            ret = FALSE;
        }
    }
    else
        token->start = NULL;
    return ret;
}