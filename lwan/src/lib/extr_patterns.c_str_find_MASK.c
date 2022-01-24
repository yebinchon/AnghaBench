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
struct str_find {char* error; } ;
struct match_state {char* error; } ;
typedef  int /*<<< orphan*/  ms ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct str_find*,int /*<<< orphan*/ ,size_t) ; 
 int FUNC1 (struct str_find*,char const*,char const*,struct str_find*,size_t,int /*<<< orphan*/ ) ; 

int
FUNC2(const char *string, const char *pattern, struct str_find *sm,
    size_t nsm, const char **errstr)
{
	struct match_state	ms;
	int			ret;

	FUNC0(&ms, 0, sizeof(ms));
	FUNC0(sm, 0, nsm * sizeof(*sm));

	ret = FUNC1(&ms, pattern, string, sm, nsm, 0);
	if (ms.error != NULL) {
		/* Return 0 on error and store the error string */
		*errstr = ms.error;
		ret = 0;
	} else
		*errstr = NULL;

	return (ret);
}