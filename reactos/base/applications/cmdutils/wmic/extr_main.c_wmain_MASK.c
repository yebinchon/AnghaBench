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

/* Variables and functions */
 int /*<<< orphan*/  STRING_ALIAS_NOT_FOUND ; 
 int /*<<< orphan*/  STRING_CMDLINE_NOT_SUPPORTED ; 
 int /*<<< orphan*/  STRING_INVALID_PATH ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*) ; 

int FUNC6(int argc, WCHAR *argv[])
{
    static const WCHAR getW[] = {'g','e','t',0};
    static const WCHAR quitW[] = {'q','u','i','t',0};
    static const WCHAR exitW[] = {'e','x','i','t',0};
    static const WCHAR pathW[] = {'p','a','t','h',0};
    static const WCHAR classW[] = {'c','l','a','s','s',0};
    static const WCHAR contextW[] = {'c','o','n','t','e','x','t',0};
    const WCHAR *class, *value;
    int i;

    for (i = 1; i < argc && argv[i][0] == '/'; i++)
        FUNC0( "command line switch %s not supported\n", FUNC1(argv[i]) );

    if (i >= argc)
        goto not_supported;

    if (!FUNC5( argv[i], quitW ) ||
        !FUNC5( argv[i], exitW ))
    {
        return 0;
    }

    if (!FUNC5( argv[i], classW) ||
        !FUNC5( argv[i], contextW ))
    {
        FUNC0( "command %s not supported\n", FUNC1(argv[i]) );
        goto not_supported;
    }

    if (!FUNC5( argv[i], pathW ))
    {
        if (++i >= argc)
        {
            FUNC3( STRING_INVALID_PATH );
            return 1;
        }
        class = argv[i];
    }
    else
    {
        class = FUNC2( argv[i] );
        if (!class)
        {
            FUNC3( STRING_ALIAS_NOT_FOUND );
            return 1;
        }
    }

    if (++i >= argc)
        goto not_supported;

    if (!FUNC5( argv[i], getW ))
    {
        if (++i >= argc)
            goto not_supported;
        value = argv[i];
        return FUNC4( class, value );
    }

not_supported:
    FUNC3( STRING_CMDLINE_NOT_SUPPORTED );
    return 1;
}