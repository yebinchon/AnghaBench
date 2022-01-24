#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  Properties; } ;
typedef  int SizeT ;

/* Variables and functions */
 int LZMA_PROPERTIES_SIZE ; 
 int FUNC0 (int /*<<< orphan*/ *,unsigned char*,int) ; 
 unsigned char FUNC1 () ; 
 int lzma_outsize ; 
 TYPE_1__ lzma_state ; 

__attribute__((used)) static int FUNC2(void)
{
	unsigned char props[LZMA_PROPERTIES_SIZE];
	int res;
	int i;

	/* read lzma properties */
	for (i = 0; i < LZMA_PROPERTIES_SIZE; i++)
		props[i] = FUNC1();

	/* read the lower half of uncompressed size in the header */
	lzma_outsize = ((SizeT) FUNC1()) +
		       ((SizeT) FUNC1() << 8) +
		       ((SizeT) FUNC1() << 16) +
		       ((SizeT) FUNC1() << 24);

	/* skip rest of the header (upper half of uncompressed size) */
	for (i = 0; i < 4; i++)
		FUNC1();

	res = FUNC0(&lzma_state.Properties, props,
					LZMA_PROPERTIES_SIZE);
	return res;
}