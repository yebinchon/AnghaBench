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
struct MD5Context {int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct MD5Context*) ; 
 int /*<<< orphan*/  FUNC2 (struct MD5Context*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3(unsigned char digest[16], struct MD5Context *context)
{
	/* Do padding. */
	FUNC1(context);

	/* Store state in digest */
	FUNC0(digest, context->state, 16);

	/* Zeroize sensitive information. */
	FUNC2(context, 0, sizeof(*context));
}