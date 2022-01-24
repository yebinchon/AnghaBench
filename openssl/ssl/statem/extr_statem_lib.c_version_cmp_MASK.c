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
typedef  int /*<<< orphan*/  SSL ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,int) ; 
 int FUNC1 (int /*<<< orphan*/  const*) ; 

__attribute__((used)) static int FUNC2(const SSL *s, int a, int b)
{
    int dtls = FUNC1(s);

    if (a == b)
        return 0;
    if (!dtls)
        return a < b ? -1 : 1;
    return FUNC0(a, b) ? -1 : 1;
}