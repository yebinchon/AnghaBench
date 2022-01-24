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
struct generator {int def_rounds; int min_rounds; int max_rounds; char* (* gen ) (int,char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  input_len; int /*<<< orphan*/ * name; } ;
typedef  int /*<<< orphan*/  rbuf ;

/* Variables and functions */
 int PXE_BAD_SALT_ROUNDS ; 
 int PXE_NO_RANDOM ; 
 int PXE_UNKNOWN_SALT_ALGO ; 
 int /*<<< orphan*/  PX_MAX_SALT_LEN ; 
 struct generator* gen_list ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (char*) ; 
 char* FUNC4 (int,char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

int
FUNC5(const char *salt_type, char *buf, int rounds)
{
	struct generator *g;
	char	   *p;
	char		rbuf[16];

	for (g = gen_list; g->name; g++)
		if (FUNC0(g->name, salt_type) == 0)
			break;

	if (g->name == NULL)
		return PXE_UNKNOWN_SALT_ALGO;

	if (g->def_rounds)
	{
		if (rounds == 0)
			rounds = g->def_rounds;

		if (rounds < g->min_rounds || rounds > g->max_rounds)
			return PXE_BAD_SALT_ROUNDS;
	}

	if (!FUNC1(rbuf, g->input_len))
		return PXE_NO_RANDOM;

	p = g->gen(rounds, rbuf, g->input_len, buf, PX_MAX_SALT_LEN);
	FUNC2(rbuf, 0, sizeof(rbuf));

	if (p == NULL)
		return PXE_BAD_SALT_ROUNDS;

	return FUNC3(p);
}