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
struct TYPE_8__ {int /*<<< orphan*/  backtrace; } ;
struct TYPE_7__ {int /*<<< orphan*/  data; } ;
typedef  TYPE_1__ StringInfoData ;
typedef  TYPE_2__ ErrorData ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*) ; 
 int FUNC2 (void**,int /*<<< orphan*/ ) ; 
 char** FUNC3 (void**,int) ; 
 int /*<<< orphan*/  FUNC4 (char**) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (void**) ; 

__attribute__((used)) static void
FUNC7(ErrorData *edata, int num_skip)
{
	StringInfoData errtrace;

	FUNC5(&errtrace);

#ifdef HAVE_BACKTRACE_SYMBOLS
	{
		void	   *buf[100];
		int			nframes;
		char	  **strfrms;

		nframes = backtrace(buf, lengthof(buf));
		strfrms = backtrace_symbols(buf, nframes);
		if (strfrms == NULL)
			return;

		for (int i = num_skip; i < nframes; i++)
			appendStringInfo(&errtrace, "\n%s", strfrms[i]);
		free(strfrms);
	}
#else
	FUNC1(&errtrace,
						   "backtrace generation is not supported by this installation");
#endif

	edata->backtrace = errtrace.data;
}