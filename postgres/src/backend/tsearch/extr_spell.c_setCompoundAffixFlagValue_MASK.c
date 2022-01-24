#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32 ;
struct TYPE_7__ {int i; int /*<<< orphan*/  s; } ;
struct TYPE_9__ {scalar_t__ flagMode; int /*<<< orphan*/  value; TYPE_1__ flag; } ;
struct TYPE_8__ {scalar_t__ flagMode; } ;
typedef  TYPE_2__ IspellDict ;
typedef  TYPE_3__ CompoundAffixFlag ;

/* Variables and functions */
 scalar_t__ ERANGE ; 
 int /*<<< orphan*/  ERRCODE_CONFIG_FILE_ERROR ; 
 int /*<<< orphan*/  ERROR ; 
 int FLAGNUM_MAXSIZE ; 
 scalar_t__ FM_NUM ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 scalar_t__ errno ; 
 int FUNC4 (char*,char**,int) ; 

__attribute__((used)) static void
FUNC5(IspellDict *Conf, CompoundAffixFlag *entry,
						  char *s, uint32 val)
{
	if (Conf->flagMode == FM_NUM)
	{
		char	   *next;
		int			i;

		i = FUNC4(s, &next, 10);
		if (s == next || errno == ERANGE)
			FUNC1(ERROR,
					(FUNC2(ERRCODE_CONFIG_FILE_ERROR),
					 FUNC3("invalid affix flag \"%s\"", s)));
		if (i < 0 || i > FLAGNUM_MAXSIZE)
			FUNC1(ERROR,
					(FUNC2(ERRCODE_CONFIG_FILE_ERROR),
					 FUNC3("affix flag \"%s\" is out of range", s)));

		entry->flag.i = i;
	}
	else
		entry->flag.s = FUNC0(Conf, s);

	entry->flagMode = Conf->flagMode;
	entry->value = val;
}