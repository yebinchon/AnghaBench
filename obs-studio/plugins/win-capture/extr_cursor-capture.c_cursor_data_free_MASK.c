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
struct TYPE_2__ {size_t num; struct cached_cursor* array; } ;
struct cursor_data {TYPE_1__ cached_textures; } ;
struct cached_cursor {int /*<<< orphan*/  texture; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct cursor_data*,int /*<<< orphan*/ ,int) ; 

void FUNC3(struct cursor_data *data)
{
	for (size_t i = 0; i < data->cached_textures.num; i++) {
		struct cached_cursor *pcc = &data->cached_textures.array[i];
		FUNC1(pcc->texture);
	}
	FUNC0(data->cached_textures);
	FUNC2(data, 0, sizeof(*data));
}