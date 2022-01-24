#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  long long ut64 ;
typedef  int /*<<< orphan*/  ut32 ;
struct TYPE_5__ {int perm; int /*<<< orphan*/  uri; int /*<<< orphan*/  fd; TYPE_1__* io; } ;
struct TYPE_4__ {TYPE_2__* desc; } ;
typedef  TYPE_2__ RIODesc ;
typedef  int /*<<< orphan*/  PJ ;

/* Variables and functions */
 int R_PERM_W ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,long long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 

__attribute__((used)) static bool FUNC7(void *user, void *data, ut32 id) {
	PJ *pj = (PJ *)user;
	RIODesc *desc = (RIODesc *)data;
	// TODO: from is always 0? See libr/core/file.c:945
	ut64 from = 0LL;
	FUNC5 (pj);
	FUNC2 (pj, "raised", desc->io && (desc->io->desc == desc));
	FUNC1 (pj, "fd", desc->fd);
	FUNC4 (pj, "uri", desc->uri);
	FUNC3 (pj, "from", from);
	FUNC2 (pj, "writable", desc->perm & R_PERM_W);
	FUNC1 (pj, "size", FUNC6 (desc));
	FUNC0 (pj);
	return true;
}