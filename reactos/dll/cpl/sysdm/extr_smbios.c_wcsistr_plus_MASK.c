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
typedef  int wchar_t ;
typedef  int UINT ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int const*,int) ; 
 int* FUNC1 (int const*,int*) ; 
 int FUNC2 (int*) ; 

__attribute__((used)) static
wchar_t * FUNC3(const wchar_t *s, wchar_t *b)
{
    wchar_t * result = FUNC1(s, b);
    UINT len = FUNC2(b);
    // workarounds
    if (!result && b[len - 1] == L' ' && FUNC0(s, L',') != NULL)
    {
        b[len - 1] = L',';
        result = FUNC1(s, b);
        b[len - 1] = L' ';
        if (!result)
        {
            b[0] = L',';
            result = FUNC1(s, b);
            b[0] = L' ';
        }
    }
    if (!result && b[len - 1] == L' ' && FUNC0(s, L'(') != NULL)
    {
        b[len - 1] = L'(';
        result = FUNC1(s, b);
        b[len - 1] = L' ';
    }
    if (!result && b[len - 1] == L' ' && FUNC0(s, L'_') != NULL)
    {
        b[0] = L'_';
        result = FUNC1(s, b);
        b[0] = L' ';
    }
    if (!result && b[0] == L' ' && b[len - 1] == L' ' && FUNC0(s, L')') != NULL)
    {
        b[0] = L')';
        result = FUNC1(s, b);
        if (!result && FUNC0(s, L'.'))
        {
            b[len - 1] = L'.';
            result = FUNC1(s, b);
            b[len - 1] = L' ';
        }
        b[0] = L' ';
    }
    return result;
}