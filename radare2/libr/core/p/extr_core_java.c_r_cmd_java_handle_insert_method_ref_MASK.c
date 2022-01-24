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
typedef  int ut32 ;
struct TYPE_4__ {int /*<<< orphan*/  fcns; } ;
typedef  int /*<<< orphan*/  RCore ;
typedef  int /*<<< orphan*/  RBinJavaObj ;
typedef  TYPE_1__ RAnal ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *) ; 
 char* FUNC3 (int) ; 
 char* FUNC4 (char const*,char,int) ; 
 scalar_t__ FUNC5 (TYPE_1__*) ; 
 char* FUNC6 (char const*,char,int) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,char*,char*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*,int,char*,char const*) ; 
 int FUNC10 (char const*) ; 

__attribute__((used)) static int FUNC11 (RCore *core, const char *input) {
	RAnal *anal = FUNC2 (core);
	RBinJavaObj *bin = anal ? (RBinJavaObj *) FUNC5 (anal) : NULL;
	const char *p = input? FUNC4 (input, ' ', -1): NULL, *n = NULL;
	char  *classname=NULL, *name = NULL, *descriptor = NULL;
	ut32 cn_sz = 0, n_sz = 0, d_sz = 0;
	int res = false;

	if (!bin) {
		return res;
	}
	if (!anal || !anal->fcns || FUNC8 (anal->fcns) == 0) {
		FUNC0 ("Unable to access the current analysis, perform 'af' for function analysis.\n");
		return true;
	}
	if (!p) {
		return res;
	}

	n = p && *p ? FUNC6 (p, ' ', -1) : NULL;
	classname = n && p && p != n ? FUNC3 (n-p+1) : NULL;
	cn_sz = n && p ? n-p +1 : 0;
	if (!classname) {
		return res;
	}

	FUNC9 (classname, cn_sz, "%s", p);
	//memset (classname, 0, cn_sz);
	//memcpy (classname, p, n-p);
	p = n+1;
	n = p && *p ? FUNC6 (p, ' ', -1) : NULL;
	name = n && p && p != n ? FUNC3 (n-p+1) : NULL;
	n_sz = n && p ? n-p +1 : 0;
	if (!name) {
		FUNC1 (classname);
		return res;
	}
	FUNC9 (name, n_sz, "%s", p);
	//memset (name, 0, n_sz);
	//memcpy (name, p, n-p);

	p = n + 1;
	n =  p && *p ? FUNC6 (p, ' ', -1) : NULL;
	if (n) {
		descriptor = n && p && p != n ? FUNC3 (n-p+1) : NULL;
		d_sz = n-p +1;
	} else if (p && *p) {
		d_sz = FUNC10 (p) + 1;
		descriptor = d_sz > 1 ? FUNC3 (d_sz) : NULL;
	}

	if (!descriptor) {
		FUNC1 (classname);
		FUNC1 (name);
		return res;
	}
	FUNC9 (descriptor, d_sz, "%s", p);
	//memset (descriptor, 0, d_sz);
	//memcpy (descriptor, p, n-p);

	FUNC7 ("Would be adding class name:%s, name: %s, descriptor: %s\n", classname, name, descriptor);
	FUNC1 (classname);
	FUNC1 (name);
	FUNC1 (descriptor);
	res = true;
	return res;
}