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
struct ff_codec_desc {struct ff_codec_desc* next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*) ; 

void FUNC1(const struct ff_codec_desc *codec_desc)
{
	const struct ff_codec_desc *desc = codec_desc;
	while (desc != NULL) {
		const struct ff_codec_desc *next = desc->next;
		FUNC0((void *)desc);
		desc = next;
	}
}