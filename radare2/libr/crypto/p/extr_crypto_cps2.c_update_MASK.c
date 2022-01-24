#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ut8 ;
typedef  int /*<<< orphan*/  ut16 ;
struct TYPE_4__ {int /*<<< orphan*/  dir; } ;
typedef  TYPE_1__ RCrypto ;

/* Variables and functions */
 int /*<<< orphan*/  UPPER_LIMIT ; 
 int /*<<< orphan*/ * FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cps2key ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static bool FUNC4(RCrypto *cry, const ut8 *buf, int len) {
	ut8 *output = FUNC0 (1, len);
	/* TODO : control decryption errors */
	FUNC1 (cry->dir, (const ut16 *)buf, (ut16*)output, len, cps2key, UPPER_LIMIT);
	FUNC3 (cry, output, len);
	FUNC2 (output);
	return true;
}