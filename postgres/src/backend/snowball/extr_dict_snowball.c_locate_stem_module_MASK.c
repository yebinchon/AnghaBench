#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ enc; int /*<<< orphan*/  (* create ) () ;int /*<<< orphan*/  stem; scalar_t__ name; } ;
typedef  TYPE_1__ stemmer_module ;
struct TYPE_6__ {int needrecode; int /*<<< orphan*/  z; int /*<<< orphan*/  stem; } ;
typedef  TYPE_2__ DictSnowball ;

/* Variables and functions */
 int /*<<< orphan*/  ERRCODE_UNDEFINED_OBJECT ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ PG_SQL_ASCII ; 
 scalar_t__ PG_UTF8 ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (scalar_t__,char const*) ; 
 TYPE_1__* stemmer_modules ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 

__attribute__((used)) static void
FUNC8(DictSnowball *d, const char *lang)
{
	const stemmer_module *m;

	/*
	 * First, try to find exact match of stemmer module. Stemmer with
	 * PG_SQL_ASCII encoding is treated as working with any server encoding
	 */
	for (m = stemmer_modules; m->name; m++)
	{
		if ((m->enc == PG_SQL_ASCII || m->enc == FUNC0()) &&
			FUNC5(m->name, lang) == 0)
		{
			d->stem = m->stem;
			d->z = m->create();
			d->needrecode = false;
			return;
		}
	}

	/*
	 * Second, try to find stemmer for needed language for UTF8 encoding.
	 */
	for (m = stemmer_modules; m->name; m++)
	{
		if (m->enc == PG_UTF8 && FUNC5(m->name, lang) == 0)
		{
			d->stem = m->stem;
			d->z = m->create();
			d->needrecode = true;
			return;
		}
	}

	FUNC2(ERROR,
			(FUNC3(ERRCODE_UNDEFINED_OBJECT),
			 FUNC4("no Snowball stemmer available for language \"%s\" and encoding \"%s\"",
					lang, FUNC1())));
}