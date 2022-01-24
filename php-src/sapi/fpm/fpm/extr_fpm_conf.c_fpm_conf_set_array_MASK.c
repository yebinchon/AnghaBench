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
typedef  int /*<<< orphan*/  zval ;
struct key_value_s {struct key_value_s* next; struct key_value_s* key; void* value; } ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (void**) ; 
 char* FUNC2 (int /*<<< orphan*/ *,void**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct key_value_s*) ; 
 struct key_value_s* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct key_value_s*,int /*<<< orphan*/ ,int) ; 
 void* FUNC6 (char*) ; 

__attribute__((used)) static char *FUNC7(zval *key, zval *value, void **config, int convert_to_bool) /* {{{ */
{
	struct key_value_s *kv;
	struct key_value_s ***parent = (struct key_value_s ***) config;
	int b;
	void *subconf = &b;

	kv = FUNC4(sizeof(*kv));

	if (!kv) {
		return "malloc() failed";
	}

	FUNC5(kv, 0, sizeof(*kv));
	kv->key = FUNC6(FUNC0(key));

	if (!kv->key) {
		FUNC3(kv);
		return "fpm_conf_set_array: strdup(key) failed";
	}

	if (convert_to_bool) {
		char *err = FUNC2(value, &subconf, 0);
		if (err) {
			FUNC3(kv->key);
			FUNC3(kv);
			return err;
		}
		kv->value = FUNC6(b ? "1" : "0");
	} else {
		kv->value = FUNC6(FUNC0(value));
		if (FUNC1(&kv->value) == -1) {
			FUNC3(kv->key);
			FUNC3(kv);
			return "Can't use '$pool' when the pool is not defined";
		}
	}

	if (!kv->value) {
		FUNC3(kv->key);
		FUNC3(kv);
		return "fpm_conf_set_array: strdup(value) failed";
	}

	kv->next = **parent;
	**parent = kv;
	return NULL;
}