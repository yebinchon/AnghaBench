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
typedef  int /*<<< orphan*/  uint8_t ;
struct flv_output {int /*<<< orphan*/  file; int /*<<< orphan*/  output; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ **,size_t*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,size_t,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct flv_output *stream)
{
	uint8_t *meta_data;
	size_t meta_data_size;

	FUNC1(stream->output, &meta_data, &meta_data_size, true, 0);
	FUNC2(meta_data, 1, meta_data_size, stream->file);
	FUNC0(meta_data);
}