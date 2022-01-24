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
 char const* S_DotSoW ; 
 int /*<<< orphan*/  S_ElfW ; 
 int /*<<< orphan*/  S_WineLoaderW ; 
 char* FUNC0 (char const*,char const*) ; 
 char* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,size_t) ; 
 size_t FUNC3 (char*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*,size_t) ; 
 size_t FUNC5 (int,size_t) ; 
 int /*<<< orphan*/  FUNC6 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ) ; 
 size_t FUNC8 (char const*) ; 
 char FUNC9 (char) ; 

__attribute__((used)) static void FUNC10(const WCHAR* in, WCHAR* out, size_t size)
{
    const WCHAR *loader = FUNC1();
    const WCHAR *ptr, *endptr;
    size_t      len, l;

    ptr = FUNC0(in, endptr = in + FUNC8(in));
    len = FUNC5(endptr - ptr, size - 1);
    FUNC4(out, ptr, len * sizeof(WCHAR));
    out[len] = '\0';
    if (len > 4 && (l = FUNC3(out, len)))
        out[len - l] = '\0';
    else if (len > FUNC8(loader) && !FUNC6(out + len - FUNC8(loader), loader))
        FUNC2(out, S_WineLoaderW, size);
    else
    {
        if (len > 3 && !FUNC6(&out[len - 3], S_DotSoW) &&
            (l = FUNC3(out, len - 3)))
            FUNC7(&out[len - l - 3], S_ElfW);
    }
    while ((*out = FUNC9(*out))) out++;
}