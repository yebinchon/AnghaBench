#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {scalar_t__ value_len; } ;
struct TYPE_11__ {TYPE_1__ base; } ;
struct TYPE_10__ {int fd; TYPE_3__ tmpkv; int /*<<< orphan*/  dir; int /*<<< orphan*/  ndump; int /*<<< orphan*/  ht; int /*<<< orphan*/  ns; int /*<<< orphan*/  path; int /*<<< orphan*/  name; scalar_t__ refs; scalar_t__ lock; int /*<<< orphan*/  db; } ;
typedef  TYPE_2__ Sdb ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__*) ; 

__attribute__((used)) static void FUNC12(Sdb* s, int donull) {
	if (!s) {
		return;
	}
	FUNC5 (s);
	FUNC0 (&s->db);
	if (s->lock) {
		FUNC10 (FUNC8 (s->dir));
	}
	FUNC9 (s);
	s->refs = 0;
	FUNC2 (s->name);
	FUNC2 (s->path);
	FUNC3 (s->ns);
	FUNC6 (s->ht);
	FUNC7 (s);
	if (s->fd != -1) {
		FUNC1 (s->fd);
		s->fd = -1;
	}
	FUNC2 (s->ndump);
	FUNC2 (s->dir);
	FUNC2 (FUNC11 (&s->tmpkv));
	s->tmpkv.base.value_len = 0;
	if (donull) {
		FUNC4 (s, 0, sizeof (Sdb));
	}
}