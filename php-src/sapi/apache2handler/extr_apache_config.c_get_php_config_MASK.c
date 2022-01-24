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
struct TYPE_4__ {char* value; } ;
typedef  TYPE_1__ php_dir_entry ;
struct TYPE_5__ {int /*<<< orphan*/  config; } ;
typedef  TYPE_2__ php_conf_rec ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *,char*,size_t) ; 

char *FUNC1(void *conf, char *name, size_t name_len)
{
	php_conf_rec *d = conf;
	php_dir_entry *pe;

	if ((pe = FUNC0(&d->config, name, name_len)) != NULL) {
		return pe->value;
	}

	return "";
}