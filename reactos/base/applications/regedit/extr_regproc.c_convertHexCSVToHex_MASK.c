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
typedef  char WCHAR ;
typedef  int UINT ;
typedef  int DWORD ;
typedef  char BYTE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 char* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int FUNC7 (char*) ; 
 int /*<<< orphan*/  stderr ; 
 int FUNC8 (char*,char**,int) ; 

__attribute__((used)) static BYTE* FUNC9(WCHAR *str, DWORD *size)
{
    WCHAR *s;
    BYTE *d, *data;

    /* The worst case is 1 digit + 1 comma per byte */
    *size=(FUNC7(str)+1)/2;
    data=FUNC3(FUNC2(), 0, *size);
    FUNC0(data);

    s = str;
    d = data;
    *size=0;
    while (*s != '\0') {
        UINT wc;
        WCHAR *end;

        wc = FUNC8(s,&end,16);
        if (end == s || wc > 0xff || (*end && *end != ',')) {
            char* strA = FUNC1(s);
            FUNC5(stderr,"%d: ERROR converting CSV hex stream. Invalid value at '%s'\n",
                    FUNC6(), strA);
            FUNC4(FUNC2(), 0, data);
            FUNC4(FUNC2(), 0, strA);
            return NULL;
        }
        *d++ =(BYTE)wc;
        (*size)++;
        if (*end) end++;
        s = end;
    }

    return data;
}