#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ut8 ;
struct TYPE_5__ {int key_size; int rounds; int columns; int /*<<< orphan*/  key; } ;
struct TYPE_4__ {int dir; } ;
typedef  TYPE_1__ RCrypto ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int) ; 
 TYPE_2__ st ; 

__attribute__((used)) static bool FUNC1(RCrypto *cry, const ut8 *key, int keylen, int mode, int direction) {
	if (!(keylen == 128 / 8 || keylen == 192 / 8 || keylen == 256 / 8)) {
		return false;
	}
	st.key_size = keylen;
	st.rounds = 6 + (int)(keylen / 4);
	st.columns = (int)(keylen / 4);
	FUNC0 (st.key, key, keylen);
	cry->dir = direction;
	return true;
}