#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  mutex; int /*<<< orphan*/  format_name; int /*<<< orphan*/  path; int /*<<< orphan*/ * scale_pic; int /*<<< orphan*/  swscale; int /*<<< orphan*/  sem; int /*<<< orphan*/  fmt; int /*<<< orphan*/  a; int /*<<< orphan*/  v; } ;
typedef  TYPE_1__ mp_media_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

void FUNC11(mp_media_t *media)
{
	if (!media)
		return;

	FUNC6(media);
	FUNC5(media);
	FUNC4(&media->v);
	FUNC4(&media->a);
	FUNC1(&media->fmt);
	FUNC8(&media->mutex);
	FUNC7(media->sem);
	FUNC10(media->swscale);
	FUNC0(&media->scale_pic[0]);
	FUNC2(media->path);
	FUNC2(media->format_name);
	FUNC3(media, 0, sizeof(*media));
	FUNC9(&media->mutex);
}