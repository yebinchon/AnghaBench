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
struct buffer {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct buffer const*) ; 
 int /*<<< orphan*/  FUNC1 (struct buffer const*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static inline bool
FUNC3(const struct buffer *a, const struct buffer *b)
{
    return FUNC0(a) == FUNC0(b) && 0 == FUNC2(FUNC1(a), FUNC1(b), FUNC0(a));
}