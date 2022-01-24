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
struct key_value_s {char* key; scalar_t__ value; struct key_value_s* next; } ;
struct fpm_worker_pool_s {scalar_t__ home; scalar_t__ user; TYPE_1__* config; } ;
struct TYPE_2__ {struct key_value_s* env; scalar_t__ clear_env; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC4 (char**,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

int FUNC5(struct fpm_worker_pool_s *wp) /* {{{ */
{
	struct key_value_s *kv;
	char *title;
	FUNC4(&title, 0, "pool %s", wp->config->name);
	FUNC2(title);
	FUNC1(title);

	if (wp->config->clear_env) {
		FUNC0();
	}

	for (kv = wp->config->env; kv; kv = kv->next) {
		FUNC3(kv->key, kv->value, 1);
	}

	if (wp->user) {
		FUNC3("USER", wp->user, 1);
	}

	if (wp->home) {
		FUNC3("HOME", wp->home, 1);
	}

	return 0;
}