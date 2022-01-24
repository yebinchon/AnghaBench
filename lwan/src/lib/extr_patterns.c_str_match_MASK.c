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
struct str_match {char* error; int sm_nmatch; scalar_t__ sm_so; scalar_t__ sm_eo; int /*<<< orphan*/ ** sm_match; } ;
struct str_find {char* error; int sm_nmatch; scalar_t__ sm_so; scalar_t__ sm_eo; int /*<<< orphan*/ ** sm_match; } ;
struct match_state {char* error; int sm_nmatch; scalar_t__ sm_so; scalar_t__ sm_eo; int /*<<< orphan*/ ** sm_match; } ;
typedef  int /*<<< orphan*/  sm ;
typedef  int /*<<< orphan*/  ms ;

/* Variables and functions */
 int MAXCAPTURES ; 
 int /*<<< orphan*/ ** FUNC0 (size_t,int) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC1 (struct str_match*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct str_match*,char const*,char const*,struct str_match*,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct str_match*) ; 
 char* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (char const*,size_t) ; 

int
FUNC6(const char *string, const char *pattern, struct str_match *m,
    const char **errstr)
{
	struct str_find		 sm[MAXCAPTURES];
	struct match_state	 ms;
	int			 i, ret;
	size_t			 len, nsm;

	nsm = MAXCAPTURES;
	FUNC1(&ms, 0, sizeof(ms));
	FUNC1(sm, 0, sizeof(sm));
	FUNC1(m, 0, sizeof(*m));

	ret = FUNC2(&ms, pattern, string, sm, nsm, 0);
	if (ret <= 0 || ms.error != NULL) {
		/* Return -1 on error and store the error string */
		*errstr = ms.error;
		return (-1);
	}

	if ((m->sm_match = FUNC0((size_t)ret, sizeof(char *))) == NULL) {
		*errstr = FUNC4(errno);
		return (-1);
	}
	m->sm_nmatch = ret;

	for (i = 0; i < ret; i++) {
		if (sm[i].sm_so > sm[i].sm_eo)
			continue;
		len = (size_t)(sm[i].sm_eo - sm[i].sm_so);
		if ((m->sm_match[i] = FUNC5(string +
		    sm[i].sm_so, len)) == NULL) {
			*errstr = FUNC4(errno);
			FUNC3(m);
			return (-1);
		}
	}

	*errstr = NULL;
	return (0);
}