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
typedef  union local_storage {int dummy; } local_storage ;
struct state {int dummy; } ;

/* Variables and functions */
 int errno ; 
 int /*<<< orphan*/  FUNC0 (union local_storage*) ; 
 union local_storage* FUNC1 (int) ; 
 int FUNC2 (char const*,char*,struct state*,int,union local_storage*) ; 

int
FUNC3(const char *name, char *canonname, struct state *sp, bool doextend)
{
	union local_storage *lsp = FUNC1(sizeof *lsp);

	if (!lsp)
		return errno;
	else
	{
		int			err = FUNC2(name, canonname, sp, doextend, lsp);

		FUNC0(lsp);
		return err;
	}
}