#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int shmid; scalar_t__ data; int /*<<< orphan*/  seg; int /*<<< orphan*/  xcb; } ;
typedef  TYPE_1__ xcb_shm_t ;

/* Variables and functions */
 int /*<<< orphan*/  IPC_RMID ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC4(xcb_shm_t *shm)
{
	if (!shm)
		return;

	FUNC3(shm->xcb, shm->seg);

	if ((char *)shm->data != (char *)-1)
		FUNC2(shm->data);

	if (shm->shmid != -1)
		FUNC1(shm->shmid, IPC_RMID, NULL);

	FUNC0(shm);
}