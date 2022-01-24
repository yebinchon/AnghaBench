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
struct serializer {struct file_output_data* data; } ;
struct file_output_data {struct file_output_data* temp_name; struct file_output_data* file_name; int /*<<< orphan*/  file; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct file_output_data*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct file_output_data*,struct file_output_data*) ; 
 int /*<<< orphan*/  FUNC3 (struct file_output_data*) ; 

void FUNC4(struct serializer *s)
{
	struct file_output_data *out = s->data;

	if (out) {
		FUNC1(out->file);

		if (out->temp_name) {
			FUNC3(out->file_name);
			FUNC2(out->temp_name, out->file_name);
		}

		FUNC0(out->file_name);
		FUNC0(out->temp_name);
		FUNC0(out);
	}
}