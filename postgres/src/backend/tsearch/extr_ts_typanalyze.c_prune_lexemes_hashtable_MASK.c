#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {char* lexeme; } ;
struct TYPE_4__ {int frequency; int delta; TYPE_1__ key; } ;
typedef  TYPE_2__ TrackItem ;
typedef  int /*<<< orphan*/  HTAB ;
typedef  int /*<<< orphan*/  HASH_SEQ_STATUS ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  HASH_REMOVE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,void const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

__attribute__((used)) static void
FUNC5(HTAB *lexemes_tab, int b_current)
{
	HASH_SEQ_STATUS scan_status;
	TrackItem  *item;

	FUNC2(&scan_status, lexemes_tab);
	while ((item = (TrackItem *) FUNC3(&scan_status)) != NULL)
	{
		if (item->frequency + item->delta <= b_current)
		{
			char	   *lexeme = item->key.lexeme;

			if (FUNC1(lexemes_tab, (const void *) &item->key,
							HASH_REMOVE, NULL) == NULL)
				FUNC0(ERROR, "hash table corrupted");
			FUNC4(lexeme);
		}
	}
}