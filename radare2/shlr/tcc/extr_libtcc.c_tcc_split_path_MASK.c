#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  data; } ;
struct TYPE_7__ {int /*<<< orphan*/  tcc_lib_path; } ;
typedef  TYPE_1__ TCCState ;
typedef  TYPE_2__ CString ;

/* Variables and functions */
 int PATHSEP ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,char) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (void***,int*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(TCCState *s, void ***p_ary, int *p_nb_ary, const char *in)
{
	const char *p;
	do {
		int c;
		CString str;

		FUNC2 (&str);
		for (p = in; c = *p, c != '\0' && c != PATHSEP; ++p) {
			if (c == '{' && p[1] && p[2] == '}') {
				c = p[1], p += 2;
				if (c == 'B') {
					FUNC0 (&str, s->tcc_lib_path);
				}
			} else {
				FUNC1 (&str, c);
			}
		}
		FUNC1 (&str, '\0');
		FUNC3 (p_ary, p_nb_ary, str.data);
		in = p + 1;
	} while (*p);
}