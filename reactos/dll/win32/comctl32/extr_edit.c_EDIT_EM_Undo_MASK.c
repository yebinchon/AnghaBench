#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WCHAR ;
struct TYPE_8__ {int style; int /*<<< orphan*/  undo_text; scalar_t__ undo_insert_count; scalar_t__ undo_position; } ;
typedef  int /*<<< orphan*/  LPWSTR ;
typedef  int INT ;
typedef  TYPE_1__ EDITSTATE ;
typedef  int BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EN_CHANGE ; 
 int ES_MULTILINE ; 
 int ES_READONLY ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC5 (char*,scalar_t__,int /*<<< orphan*/ ) ; 
 int TRUE ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static BOOL FUNC11(EDITSTATE *es)
{
	INT ulength;
	LPWSTR utext;

	/* As per MSDN spec, for a single-line edit control,
	   the return value is always TRUE */
	if( es->style & ES_READONLY )
            return !(es->style & ES_MULTILINE);

	ulength = FUNC10(es->undo_text);

	utext = FUNC7((ulength + 1) * sizeof(WCHAR));

	FUNC9(utext, es->undo_text);

	FUNC5("before UNDO:insertion length = %d, deletion buffer = %s\n",
		     es->undo_insert_count, FUNC6(utext));

	FUNC3(es, es->undo_position, es->undo_position + es->undo_insert_count, FALSE);
	FUNC0(es);
	FUNC1(es, TRUE, utext, ulength, TRUE, TRUE);
	FUNC3(es, es->undo_position, es->undo_position + es->undo_insert_count, FALSE);
        /* send the notification after the selection start and end are set */
        FUNC4(es, EN_CHANGE);
	FUNC2(es);
	FUNC8(utext);

	FUNC5("after UNDO:insertion length = %d, deletion buffer = %s\n",
			es->undo_insert_count, FUNC6(es->undo_text));
	return TRUE;
}