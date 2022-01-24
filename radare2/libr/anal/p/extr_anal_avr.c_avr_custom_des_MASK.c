#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int ut64 ;
typedef  int ut32 ;
struct TYPE_10__ {int round; int /*<<< orphan*/ * round_key_hi; int /*<<< orphan*/ * round_key_lo; } ;
struct TYPE_9__ {TYPE_1__* anal; } ;
struct TYPE_8__ {int /*<<< orphan*/  reg; } ;
typedef  TYPE_2__ RAnalEsil ;

/* Variables and functions */
 int UT32_MAX ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int*) ; 
 TYPE_5__ desctx ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,char*,int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int*,int*) ; 
 int /*<<< orphan*/  FUNC4 (int*,int*) ; 
 int /*<<< orphan*/  FUNC5 (int*,int*) ; 
 int /*<<< orphan*/  FUNC6 (int*,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*,int*) ; 

__attribute__((used)) static bool FUNC8 (RAnalEsil *esil) {
	ut64 key, encrypt, text,des_round;
	ut32 key_lo, key_hi, buf_lo, buf_hi;
	if (!esil || !esil->anal || !esil->anal->reg) {
		return false;
	}
	if (!FUNC0 (esil, &des_round)) {
		return false;
	}
	FUNC1 (esil, "hf", &encrypt, NULL);
	FUNC1 (esil, "deskey", &key, NULL);
	FUNC1 (esil, "text", &text, NULL);

	key_lo = key & UT32_MAX;
	key_hi = key >> 32;
	buf_lo = text & UT32_MAX;
	buf_hi = text >> 32;

	if (des_round != desctx.round) {
		desctx.round = des_round;
	}

	if (!desctx.round) {
		int i;
		//generating all round keys
		FUNC5 (&key_lo, &key_hi);
		for (i = 0; i < 16; i++) {
			FUNC7 (i, &desctx.round_key_lo[i], &desctx.round_key_hi[i], &key_lo, &key_hi);
		}
		FUNC3 (&buf_lo, &buf_hi);
	}

	if (encrypt) {
		FUNC6 (&buf_lo, &buf_hi, &desctx.round_key_lo[desctx.round], &desctx.round_key_hi[desctx.round]);
	} else {
		FUNC6 (&buf_lo, &buf_hi, &desctx.round_key_lo[15 - desctx.round], &desctx.round_key_hi[15 - desctx.round]);
	}

	if (desctx.round == 15) {
		FUNC4 (&buf_hi, &buf_lo);
		desctx.round = 0;
	} else {
		desctx.round++;
	}

	FUNC2 (esil, "text", text);
	return true;
}