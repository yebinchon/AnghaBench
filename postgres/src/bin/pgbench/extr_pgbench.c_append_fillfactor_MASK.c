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
 int fillfactor ; 
 int /*<<< orphan*/  FUNC0 (char*,int,char*,int) ; 
 int FUNC1 (char*) ; 

__attribute__((used)) static void
FUNC2(char *opts, int len)
{
	FUNC0(opts + FUNC1(opts), len - FUNC1(opts),
			 " with (fillfactor=%d)", fillfactor);
}