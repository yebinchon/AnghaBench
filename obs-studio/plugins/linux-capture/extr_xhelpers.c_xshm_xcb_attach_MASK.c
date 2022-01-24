#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int shmid; int /*<<< orphan*/  data; int /*<<< orphan*/  seg; int /*<<< orphan*/ * xcb; } ;
typedef  TYPE_1__ xcb_shm_t ;
typedef  int /*<<< orphan*/  xcb_connection_t ;

/* Variables and functions */
 int IPC_CREAT ; 
 int /*<<< orphan*/  IPC_PRIVATE ; 
 TYPE_1__* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int const,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 

xcb_shm_t *FUNC6(xcb_connection_t *xcb, const int w, const int h)
{
	if (!xcb)
		return NULL;

	xcb_shm_t *shm = FUNC0(sizeof(xcb_shm_t));
	shm->xcb = xcb;
	shm->seg = FUNC3(shm->xcb);

	shm->shmid = FUNC2(IPC_PRIVATE, w * h * 4, IPC_CREAT | 0777);
	if (shm->shmid == -1)
		goto fail;

	FUNC4(shm->xcb, shm->seg, shm->shmid, false);

	shm->data = FUNC1(shm->shmid, NULL, 0);

	return shm;
fail:
	FUNC5(shm);
	return NULL;
}