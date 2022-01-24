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
struct serializer {int /*<<< orphan*/  get_pos; int /*<<< orphan*/  write; struct serializer* data; } ;
struct array_output_data {int /*<<< orphan*/  get_pos; int /*<<< orphan*/  write; struct array_output_data* data; } ;

/* Variables and functions */
 int /*<<< orphan*/  array_output_get_pos ; 
 int /*<<< orphan*/  array_output_write ; 
 int /*<<< orphan*/  FUNC0 (struct serializer*,int /*<<< orphan*/ ,int) ; 

void FUNC1(struct serializer *s,
				  struct array_output_data *data)
{
	FUNC0(s, 0, sizeof(struct serializer));
	FUNC0(data, 0, sizeof(struct array_output_data));
	s->data = data;
	s->write = array_output_write;
	s->get_pos = array_output_get_pos;
}