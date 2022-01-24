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
typedef  int /*<<< orphan*/  VOID ;
typedef  int /*<<< orphan*/  SHORT ;
typedef  int /*<<< orphan*/  LPSTR ;
typedef  scalar_t__ INT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static
VOID
FUNC4(
    LPSTR str,
    INT maxlen,
    SHORT orgx,
    SHORT orgy)
{
    INT count;

    FUNC1(orgx, orgy);
    for (count = 0; count < (INT)FUNC3(str); count++)
        FUNC0(' ');
    FUNC2(str, 0, maxlen);
    FUNC1(orgx, orgy);
}