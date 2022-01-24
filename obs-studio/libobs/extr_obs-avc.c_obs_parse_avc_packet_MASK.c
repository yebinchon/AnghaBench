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
struct serializer {int dummy; } ;
struct encoder_packet {int /*<<< orphan*/  priority; int /*<<< orphan*/  drop_priority; scalar_t__ size; scalar_t__ data; int /*<<< orphan*/  keyframe; } ;
struct TYPE_2__ {scalar_t__ num; scalar_t__ array; } ;
struct array_output_data {TYPE_1__ bytes; } ;
typedef  int /*<<< orphan*/  ref ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct serializer*,struct array_output_data*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct serializer*,long*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct serializer*,scalar_t__,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void FUNC4(struct encoder_packet *avc_packet,
			  const struct encoder_packet *src)
{
	struct array_output_data output;
	struct serializer s;
	long ref = 1;

	FUNC0(&s, &output);
	*avc_packet = *src;

	FUNC2(&s, &ref, sizeof(ref));
	FUNC3(&s, src->data, src->size, &avc_packet->keyframe,
			   &avc_packet->priority);

	avc_packet->data = output.bytes.array + sizeof(ref);
	avc_packet->size = output.bytes.num - sizeof(ref);
	avc_packet->drop_priority = FUNC1(avc_packet->priority);
}