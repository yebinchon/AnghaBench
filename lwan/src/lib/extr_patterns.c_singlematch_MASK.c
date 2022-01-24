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
struct match_state {char const* src_end; } ;

/* Variables and functions */
#define  L_ESC 128 
 int FUNC0 (int,int) ; 
 int FUNC1 (int,char const*,char const*) ; 
 int FUNC2 (char const) ; 

__attribute__((used)) static int
FUNC3(struct match_state *ms, const char *s, const char *p,
    const char *ep)
{
	if (s >= ms->src_end)
		return 0;
	else {
		int c = FUNC2(*s);
		switch (*p) {
		case '.':
			/* matches any char */
			return (1);
		case L_ESC:
			return FUNC0(c, FUNC2(*(p + 1)));
		case '[':
			return FUNC1(c, p, ep - 1);
		default:
			return (FUNC2(*p) == c);
		}
	}
}