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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const) ; 
 int FUNC1 (int /*<<< orphan*/  const*) ; 

__attribute__((used)) static inline const WCHAR* FUNC2(const WCHAR* str)
{
    const WCHAR*      p;

    for (p = str + FUNC1(str) - 1; p >= str && !FUNC0(*p); p--);
    return p + 1;
}