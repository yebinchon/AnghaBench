#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_8__ ;
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
struct TYPE_10__ {int /*<<< orphan*/  member_0; } ;
typedef  TYPE_2__ string_hash_tuple ;
struct TYPE_11__ {scalar_t__ as_int; } ;
typedef  TYPE_3__ ip_type4 ;
struct TYPE_14__ {size_t counter; int capa; TYPE_4__** list; } ;
struct TYPE_9__ {TYPE_3__ v4; } ;
struct TYPE_13__ {TYPE_1__ addr; } ;
struct TYPE_12__ {scalar_t__ hash; void* string; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 scalar_t__ FUNC1 (char*) ; 
 void* FUNC2 (char*,size_t) ; 
 TYPE_8__* internal_ips ; 
 TYPE_6__ ip_type_invalid ; 
 TYPE_3__ FUNC3 (size_t) ; 
 void* FUNC4 (TYPE_4__**,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,void*) ; 

__attribute__((used)) static ip_type4 FUNC6(char* name, size_t len) {
	uint32_t hash = FUNC1((char *) name);
	size_t i;
	ip_type4 res;
	void* new_mem;
	// see if we already have this dns entry saved.
	if(internal_ips->counter) {
		for(i = 0; i < internal_ips->counter; i++) {
			if(internal_ips->list[i]->hash == hash && !FUNC5(name, internal_ips->list[i]->string)) {
				res = FUNC3(i);
				FUNC0("got cached ip for %s\n", name);
				goto have_ip;
			}
		}
	}
	// grow list if needed.
	if(internal_ips->capa < internal_ips->counter + 1) {
		FUNC0("realloc\n");
		new_mem = FUNC4(internal_ips->list, (internal_ips->capa + 16) * sizeof(void *));
		if(new_mem) {
			internal_ips->capa += 16;
			internal_ips->list = new_mem;
		} else {
	oom:
			FUNC0("out of mem\n");
			goto err_plus_unlock;
		}
	}

	res = FUNC3(internal_ips->counter);
	if(res.as_int == ip_type_invalid.addr.v4.as_int)
		goto err_plus_unlock;

	string_hash_tuple tmp = { 0 };
	new_mem = FUNC2((char*) &tmp, sizeof(string_hash_tuple));
	if(!new_mem)
		goto oom;

	FUNC0("creating new entry %d for ip of %s\n", (int) internal_ips->counter, name);

	internal_ips->list[internal_ips->counter] = new_mem;
	internal_ips->list[internal_ips->counter]->hash = hash;

	new_mem = FUNC2((char*) name, len + 1);

	if(!new_mem) {
		internal_ips->list[internal_ips->counter] = 0;
		goto oom;
	}
	internal_ips->list[internal_ips->counter]->string = new_mem;

	internal_ips->counter += 1;

	have_ip:

	return res;
	err_plus_unlock:

	FUNC0("return err\n");
	return ip_type_invalid.addr.v4;
}