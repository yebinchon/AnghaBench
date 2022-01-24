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
struct vars {int cflags; } ;
struct cvec {int dummy; } ;
typedef  char chr ;

/* Variables and functions */
 char FUNC0 (char) ; 
 int REG_FAKE ; 
 int /*<<< orphan*/  FUNC1 (struct cvec*,char) ; 
 struct cvec* FUNC2 (struct vars*,char) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct cvec* FUNC4 (struct vars*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct cvec *
FUNC5(struct vars *v,			/* context */
	   chr c,					/* Collating element representing the
								 * equivalence class. */
	   int cases)				/* all cases? */
{
	struct cvec *cv;

	/* crude fake equivalence class for testing */
	if ((v->cflags & REG_FAKE) && c == 'x')
	{
		cv = FUNC4(v, 4, 0);
		FUNC1(cv, FUNC0('x'));
		FUNC1(cv, FUNC0('y'));
		if (cases)
		{
			FUNC1(cv, FUNC0('X'));
			FUNC1(cv, FUNC0('Y'));
		}
		return cv;
	}

	/* otherwise, none */
	if (cases)
		return FUNC2(v, c);
	cv = FUNC4(v, 1, 0);
	FUNC3(cv != NULL);
	FUNC1(cv, c);
	return cv;
}