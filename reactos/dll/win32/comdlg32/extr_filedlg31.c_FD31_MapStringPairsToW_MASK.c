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
typedef  int /*<<< orphan*/  WCHAR ;
typedef  unsigned int UINT ;
typedef  int /*<<< orphan*/ * LPWSTR ;
typedef  scalar_t__* LPCSTR ;

/* Variables and functions */
 int /*<<< orphan*/  CP_ACP ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*,unsigned int,int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/ * FUNC1 (unsigned int) ; 
 int FUNC2 (scalar_t__*) ; 

__attribute__((used)) static LPWSTR FUNC3(LPCSTR strA, UINT size)
{
    LPCSTR s;
    LPWSTR x;
    unsigned int n, len;

    s = strA;
    while (*s)
        s = s+FUNC2(s)+1;
    s++;
    n = s + 1 - strA; /* Don't forget the other \0 */
    if (n < size) n = size;

    len = FUNC0( CP_ACP, 0, strA, n, NULL, 0 );
    x = FUNC1(len * sizeof(WCHAR));
    FUNC0( CP_ACP, 0, strA, n, x, len );
    return x;
}