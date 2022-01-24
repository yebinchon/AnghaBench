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
struct cf_parser {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cf_parser*) ; 
 int FUNC1 (struct cf_parser*,struct cf_token*) ; 

__attribute__((used)) static inline bool FUNC2(struct cf_parser *p,
				       struct cf_token *peek)
{
	bool success = FUNC1(p, peek);
	if (!success)
		FUNC0(p);
	return success;
}