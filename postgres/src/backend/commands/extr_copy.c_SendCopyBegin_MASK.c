#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int int16 ;
struct TYPE_3__ {int /*<<< orphan*/  copy_dest; scalar_t__ binary; int /*<<< orphan*/  attnumlist; } ;
typedef  int /*<<< orphan*/  StringInfoData ;
typedef  TYPE_1__* CopyState ;

/* Variables and functions */
 int /*<<< orphan*/  COPY_NEW_FE ; 
 int /*<<< orphan*/  COPY_OLD_FE ; 
 int /*<<< orphan*/  ERRCODE_FEATURE_NOT_SUPPORTED ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FrontendProtocol ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 () ; 

__attribute__((used)) static void
FUNC11(CopyState cstate)
{
	if (FUNC0(FrontendProtocol) >= 3)
	{
		/* new way */
		StringInfoData buf;
		int			natts = FUNC4(cstate->attnumlist);
		int16		format = (cstate->binary ? 1 : 0);
		int			i;

		FUNC5(&buf, 'H');
		FUNC8(&buf, format);	/* overall format */
		FUNC9(&buf, natts);
		for (i = 0; i < natts; i++)
			FUNC9(&buf, format); /* per-column formats */
		FUNC6(&buf);
		cstate->copy_dest = COPY_NEW_FE;
	}
	else
	{
		/* old way */
		if (cstate->binary)
			FUNC1(ERROR,
					(FUNC2(ERRCODE_FEATURE_NOT_SUPPORTED),
					 FUNC3("COPY BINARY is not supported to stdout or from stdin")));
		FUNC7('H');
		/* grottiness needed for old COPY OUT protocol */
		FUNC10();
		cstate->copy_dest = COPY_OLD_FE;
	}
}