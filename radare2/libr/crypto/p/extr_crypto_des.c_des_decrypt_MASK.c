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
typedef  int /*<<< orphan*/  ut8 ;
struct des_state {int i; void* buflo; void* bufhi; int /*<<< orphan*/ * keyhi; int /*<<< orphan*/ * keylo; } ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (void**,void**) ; 
 int /*<<< orphan*/  FUNC2 (void**,void**) ; 
 int /*<<< orphan*/  FUNC3 (void**,void**,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,void*) ; 

__attribute__((used)) static int FUNC5 (struct des_state *st, const ut8 *input, ut8 *output) {
	if (!st || !input || !output) {
		return false;
	}
	st->buflo = FUNC0 (input + 0);
	st->bufhi = FUNC0 (input + 4);
	//first permutation
	FUNC1 (&st->buflo, &st->bufhi);

	for (st->i = 0; st->i < 16; st->i++) {
	   FUNC3 (&st->buflo, &st->bufhi, &st->keylo[15 - st->i], &st->keyhi[15 - st->i]);
	}

	//last permutation
	FUNC2 (&st->bufhi, &st->buflo);
	//result
	FUNC4 (output + 0, st->bufhi);
	FUNC4 (output + 4, st->buflo);
	return true;
}