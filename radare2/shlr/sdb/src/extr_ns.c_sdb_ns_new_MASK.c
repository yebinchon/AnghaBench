#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_6__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ut32 ;
struct TYPE_11__ {TYPE_1__* name; TYPE_1__* path; } ;
struct TYPE_10__ {char const* dir; } ;
struct TYPE_9__ {struct TYPE_9__* name; TYPE_6__* sdb; int /*<<< orphan*/  hash; } ;
typedef  TYPE_1__ SdbNs ;
typedef  TYPE_2__ Sdb ;

/* Variables and functions */
 int SDB_MAX_PATH ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 TYPE_1__* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,int) ; 
 TYPE_6__* FUNC3 () ; 
 TYPE_1__* FUNC4 (char const*) ; 
 int FUNC5 (char const*) ; 

__attribute__((used)) static SdbNs *FUNC6 (Sdb *s, const char *name, ut32 hash) {
	char dir[SDB_MAX_PATH];
	SdbNs *ns;
	if (s->dir && *s->dir && name && *name) {
		int dir_len = FUNC5 (s->dir);
		int name_len = FUNC5 (name);
		if ((dir_len+name_len+3)>SDB_MAX_PATH) {
			return NULL;
		}
		FUNC2 (dir, s->dir, dir_len);
		FUNC2 (dir + dir_len, ".", 1);
		FUNC2 (dir + dir_len + 1, name, name_len + 1);
	} else {
		dir[0] = 0;
	}
	ns = FUNC1 (sizeof (SdbNs));
	if (!ns) {
		return NULL;
	}
	ns->hash = hash;
	ns->name = name? FUNC4 (name): NULL;
	//ns->sdb = sdb_new (dir, ns->name, 0);
	ns->sdb = FUNC3 ();
	// TODO: generate path

	if (ns->sdb) {
		FUNC0 (ns->sdb->path);
		ns->sdb->path = NULL;
		if (*dir) {
			ns->sdb->path = FUNC4 (dir);
		}
		FUNC0 (ns->sdb->name);
		if (name && *name) {
			ns->sdb->name = FUNC4 (name);
		}
	} else {
		FUNC0 (ns->name);
		FUNC0 (ns);
		ns = NULL;
	}
	return ns;
}