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
struct TYPE_3__ {int /*<<< orphan*/  element; } ;
typedef  TYPE_1__ TextFreq ;
struct TYPE_4__ {int length; int /*<<< orphan*/  lexeme; } ;
typedef  TYPE_2__ LexemeKey ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC3(const void *e1, const void *e2)
{
	const LexemeKey *key = (const LexemeKey *) e1;
	const TextFreq *t = (const TextFreq *) e2;
	int			len1,
				len2;

	len1 = key->length;
	len2 = FUNC1(t->element);

	/* Compare lengths first, possibly avoiding a strncmp call */
	if (len1 > len2)
		return 1;
	else if (len1 < len2)
		return -1;

	/* Fall back on byte-for-byte comparison */
	return FUNC2(key->lexeme, FUNC0(t->element), len1);
}