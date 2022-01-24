#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int utcrc ;
struct TYPE_3__ {int crc; int size; int xout; scalar_t__ reflect; } ;
typedef  TYPE_1__ R_CRC_CTX ;

/* Variables and functions */
 int FUNC0 (int) ; 

__attribute__((used)) static void FUNC1 (R_CRC_CTX *ctx, utcrc *r) {
	utcrc crc;
	int i;

	crc = ctx->crc;
	crc &= (((FUNC0(1) << (ctx->size - 1)) - 1) << 1) | 1;
	if (ctx->reflect) {
		for (i = 0; i < (ctx->size >> 1); i++) {
			if (((crc >> i) ^ (crc >> (ctx->size - 1 - i))) & 1) {
				crc ^= (FUNC0(1) << i) ^ (FUNC0(1) << (ctx->size - 1 - i));
			}
		}
	}

	*r = crc ^ ctx->xout;
}