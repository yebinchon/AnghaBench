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
 int /*<<< orphan*/  FUNC0 (struct buffer const*) ; 
 int /*<<< orphan*/  FUNC1 (struct buffer const*) ; 
 int FUNC2 (struct buffer*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline bool
FUNC3(struct buffer *dest, const struct buffer *src)
{
    return FUNC2(dest, FUNC1(src), FUNC0(src));
}