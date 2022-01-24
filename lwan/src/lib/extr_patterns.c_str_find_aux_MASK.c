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
struct str_find {int sm_so; scalar_t__ sm_eo; } ;
struct match_state {int maxcaptures; char const* src_init; char const* src_end; char const* p_end; int /*<<< orphan*/ * error; scalar_t__ level; int /*<<< orphan*/  repetitioncounter; int /*<<< orphan*/  matchdepth; } ;
typedef  scalar_t__ off_t ;

/* Variables and functions */
 size_t MAXCAPTURES ; 
 int /*<<< orphan*/  MAXCCALLS ; 
 int /*<<< orphan*/  MAXREPETITION ; 
 char* FUNC0 (char const*,size_t,char const*,size_t) ; 
 char* FUNC1 (struct match_state*,char const*,char const*) ; 
 int FUNC2 (struct match_state*,char*) ; 
 scalar_t__ FUNC3 (char const*,size_t) ; 
 int FUNC4 (struct match_state*,char const*,char const*,struct str_find*,size_t) ; 
 size_t FUNC5 (char const*) ; 

__attribute__((used)) static int
FUNC6(struct match_state *ms, const char *pattern, const char *string,
    struct str_find *sm, size_t nsm, off_t init)
{
	size_t		 ls = FUNC5(string);
	size_t		 lp = FUNC5(pattern);
	const char	*s = string;
	const char	*p = pattern;
	const char	*s1, *s2;
	int		 anchor, i;

	if (init < 0)
		init = 0;
	else if (init > (off_t)ls)
		return FUNC2(ms, "starting after string's end");
	s1 = s + init;

	if (FUNC3(p, lp)) {
		/* do a plain search */
		s2 = FUNC0(s1, ls - (size_t)init, p, lp);
		if (s2 == NULL)
			return (0);

		i = 0;
		sm[i].sm_so = 0;
		sm[i].sm_eo = (off_t)ls;
		if (nsm > 1) {
			i++;
			sm[i].sm_so = s2 - s;
			sm[i].sm_eo = (off_t)((s2 - s) + (off_t)lp);
		}
		return (i + 1);
	}

	anchor = (*p == '^');
	if (anchor) {
		p++;
		lp--;	/* skip anchor character */
	}
	ms->maxcaptures = (int)((nsm > MAXCAPTURES ? MAXCAPTURES : nsm) - 1);
	ms->matchdepth = MAXCCALLS;
	ms->repetitioncounter = MAXREPETITION;
	ms->src_init = s;
	ms->src_end = s + ls;
	ms->p_end = p + lp;
	do {
		const char *res;
		ms->level = 0;
		if ((res = FUNC1(ms, s1, p)) != NULL) {
			sm->sm_so = 0;
			sm->sm_eo = (off_t)ls;
			return FUNC4(ms, s1, res, sm + 1, nsm - 1) + 1;

		} else if (ms->error != NULL) {
			return 0;
		}
	} while (s1++ < ms->src_end && !anchor);

	return 0;
}