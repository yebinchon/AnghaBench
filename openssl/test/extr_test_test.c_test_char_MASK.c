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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char,char) ; 
 int /*<<< orphan*/  FUNC2 (char,char) ; 
 int /*<<< orphan*/  FUNC3 (char,char) ; 
 int /*<<< orphan*/  FUNC4 (char,char) ; 
 int /*<<< orphan*/  FUNC5 (char,char) ; 
 int /*<<< orphan*/  FUNC6 (char,char) ; 

__attribute__((used)) static int FUNC7(void)
{
    if (!FUNC0(1, FUNC1('a', 'a'))
        | !FUNC0(0, FUNC1('a', 'A'))
        | !FUNC0(1, FUNC6('a', 'c'))
        | !FUNC0(0, FUNC6('e', 'e'))
        | !FUNC0(1, FUNC5('i', 'x'))
        | !FUNC0(0, FUNC5('x', 'i'))
        | !FUNC0(1, FUNC4('i', 'x'))
        | !FUNC0(1, FUNC4('n', 'n'))
        | !FUNC0(0, FUNC4('x', 'i'))
        | !FUNC0(1, FUNC3('w', 'n'))
        | !FUNC0(0, FUNC3('n', 'w'))
        | !FUNC0(1, FUNC2('w', 'n'))
        | !FUNC0(1, FUNC2('p', 'p'))
        | !FUNC0(0, FUNC2('n', 'w')))
        goto err;
    return 1;

err:
    return 0;
}