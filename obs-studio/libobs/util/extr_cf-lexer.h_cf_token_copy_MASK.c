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
struct cf_token {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cf_token*,struct cf_token const*,int) ; 

__attribute__((used)) static inline void FUNC1(struct cf_token *dst,
				 const struct cf_token *src)
{
	FUNC0(dst, src, sizeof(struct cf_token));
}