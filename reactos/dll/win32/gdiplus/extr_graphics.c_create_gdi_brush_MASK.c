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
typedef  int /*<<< orphan*/  LOGBRUSH ;
typedef  int /*<<< orphan*/  HBRUSH ;
typedef  int /*<<< orphan*/  GpBrush ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ Ok ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static HBRUSH FUNC3(const GpBrush *brush)
{
    LOGBRUSH lb;
    HBRUSH gdibrush;

    if (FUNC1(brush, &lb) != Ok) return 0;

    gdibrush = FUNC0(&lb);
    FUNC2(&lb);

    return gdibrush;
}