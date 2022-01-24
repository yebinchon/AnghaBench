#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  text ;
struct TYPE_8__ {int /*<<< orphan*/  zero_end; int /*<<< orphan*/  zero_start; int /*<<< orphan*/  multi; int /*<<< orphan*/  need_locale; int /*<<< orphan*/  pre_lsign_num; int /*<<< orphan*/  post; int /*<<< orphan*/  pre; int /*<<< orphan*/  lsign; int /*<<< orphan*/  flag; } ;
struct TYPE_10__ {TYPE_1__ Num; int /*<<< orphan*/ * format; } ;
struct TYPE_9__ {int /*<<< orphan*/  zero_end; int /*<<< orphan*/  zero_start; int /*<<< orphan*/  multi; int /*<<< orphan*/  need_locale; int /*<<< orphan*/  pre_lsign_num; int /*<<< orphan*/  post; int /*<<< orphan*/  pre; int /*<<< orphan*/  lsign; int /*<<< orphan*/  flag; } ;
typedef  TYPE_2__ NUMDesc ;
typedef  TYPE_3__ NUMCacheEntry ;
typedef  int /*<<< orphan*/  FormatNode ;

/* Variables and functions */
 int NUM_CACHE_SIZE ; 
 int /*<<< orphan*/  NUM_FLAG ; 
 TYPE_3__* FUNC0 (char*) ; 
 int /*<<< orphan*/  NUM_index ; 
 int /*<<< orphan*/  NUM_keywords ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 char* FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 

__attribute__((used)) static FormatNode *
FUNC7(int len, NUMDesc *Num, text *pars_str, bool *shouldFree)
{
	FormatNode *format = NULL;
	char	   *str;

	str = FUNC5(pars_str);

	if (len > NUM_CACHE_SIZE)
	{
		/*
		 * Allocate new memory if format picture is bigger than static cache
		 * and do not use cache (call parser always)
		 */
		format = (FormatNode *) FUNC2((len + 1) * sizeof(FormatNode));

		*shouldFree = true;

		FUNC6(Num);

		FUNC3(format, str, NUM_keywords,
					 NULL, NUM_index, NUM_FLAG, Num);
	}
	else
	{
		/*
		 * Use cache buffers
		 */
		NUMCacheEntry *ent = FUNC0(str);

		*shouldFree = false;

		format = ent->format;

		/*
		 * Copy cache to used struct
		 */
		Num->flag = ent->Num.flag;
		Num->lsign = ent->Num.lsign;
		Num->pre = ent->Num.pre;
		Num->post = ent->Num.post;
		Num->pre_lsign_num = ent->Num.pre_lsign_num;
		Num->need_locale = ent->Num.need_locale;
		Num->multi = ent->Num.multi;
		Num->zero_start = ent->Num.zero_start;
		Num->zero_end = ent->Num.zero_end;
	}

#ifdef DEBUG_TO_FROM_CHAR
	/* dump_node(format, len); */
	dump_index(NUM_keywords, NUM_index);
#endif

	FUNC4(str);
	return format;
}