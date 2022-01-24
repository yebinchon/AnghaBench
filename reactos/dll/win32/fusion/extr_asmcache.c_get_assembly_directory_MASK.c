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
typedef  int PEKIND ;
typedef  int LPWSTR ;
typedef  int DWORD ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int FUNC0 (char const*) ; 
 int /*<<< orphan*/  FALSE ; 
 int FUNC1 (int,int) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int,char const*) ; 
#define  peAMD64 131 
#define  peI386 130 
#define  peMSIL 129 
#define  peNone 128 
 int /*<<< orphan*/  FUNC4 (char const*,char*) ; 

__attribute__((used)) static BOOL FUNC5(LPWSTR dir, DWORD size, const char *version, PEKIND architecture)
{
    static const WCHAR dotnet[] = {'\\','M','i','c','r','o','s','o','f','t','.','N','E','T','\\',0};
    static const WCHAR gac[] = {'\\','a','s','s','e','m','b','l','y','\\','G','A','C',0};
    static const WCHAR msil[] = {'_','M','S','I','L',0};
    static const WCHAR x86[] = {'_','3','2',0};
    static const WCHAR amd64[] = {'_','6','4',0};
    DWORD len = FUNC1(dir, size);

    if (!FUNC4(version, "v4.0.30319"))
    {
        FUNC3(dir + len, dotnet);
        len += FUNC0(dotnet) - 1;
        FUNC3(dir + len, gac + 1);
        len += FUNC0(gac) - 2;
    }
    else
    {
        FUNC3(dir + len, gac);
        len += FUNC0(gac) - 1;
    }
    switch (architecture)
    {
        case peNone:
            break;

        case peMSIL:
            FUNC3(dir + len, msil);
            break;

        case peI386:
            FUNC3(dir + len, x86);
            break;

        case peAMD64:
            FUNC3(dir + len, amd64);
            break;

        default:
            FUNC2("unhandled architecture %u\n", architecture);
            return FALSE;
    }
    return TRUE;
}