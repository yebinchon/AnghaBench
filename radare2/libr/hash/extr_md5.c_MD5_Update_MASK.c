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
typedef  int /*<<< orphan*/  ut8 ;
typedef  int ut32 ;
struct TYPE_3__ {int* count; int /*<<< orphan*/  const* buffer; int /*<<< orphan*/  state; } ;
typedef  TYPE_1__ R_MD5_CTX ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (void*,void*,int) ; 

void FUNC2(R_MD5_CTX *context, const ut8 *input, ut32 inputLen) {
	ut32 i;

	/* Compute number of bytes mod 64 */
	ut32 index = (ut32)((context->count[0] >> 3) & 0x3F);

	/* Update number of bits */
	if ((context->count[0] += ((ut32)inputLen << 3)) < ((ut32)inputLen << 3)) {
		context->count[1]++;
	}
	context->count[1] += ((ut32)inputLen >> 29);

	ut32 partLen = 64 - index;

	// Transform as many times as possible
	if (inputLen >= partLen) {
		FUNC1 ((void*)&context->buffer[index], (void*)input, partLen);
		FUNC0 (context->state, context->buffer);
		for (i = partLen; i + 63 < inputLen; i += 64) {
			FUNC0 (context->state, &input[i]);
		}
		index = 0;
	} else {
		i = 0;
	}
	// remaining input
	FUNC1 ((void*)&context->buffer[index], (void*)&input[i], inputLen - i);
}