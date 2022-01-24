#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int method_size; int types_size; } ;
struct TYPE_10__ {TYPE_2__ header; TYPE_1__* methods; scalar_t__ types; } ;
struct TYPE_8__ {int class_id; } ;
typedef  TYPE_3__ RBinDexObj ;

/* Variables and functions */
 char* FUNC0 (TYPE_3__*,int) ; 
 char* FUNC1 (TYPE_3__*,int) ; 
 char* FUNC2 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 
 char* FUNC6 (char*,char*,char const*,char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,char,int /*<<< orphan*/ ) ; 
 scalar_t__ simplifiedDemangling ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 char* FUNC9 (char*,char) ; 
 char* FUNC10 (char const*) ; 

__attribute__((used)) static char *FUNC11(RBinDexObj *bin, int method_idx) {
	FUNC4 (bin && bin->types, NULL);
	if (method_idx < 0 || method_idx >= bin->header.method_size) {
		return NULL;
	}
	int cid = bin->methods[method_idx].class_id;
	if (cid < 0 || cid >= bin->header.types_size) {
		return NULL;
	}
	const char *name = FUNC1 (bin, method_idx);
	if (!name) {
		return NULL;
	}
	const char *className = FUNC0 (bin, cid);
	char *flagname = NULL;
	if (className) {
		char *class_name = FUNC10 (className);
		FUNC7 (class_name, ';', 0);
		char *signature = FUNC2 (bin, method_idx);
		if (signature) {
			flagname = FUNC6 ("%s.%s%s", class_name, name, signature);
			FUNC3 (signature);
		} else {
			flagname = FUNC6 ("%s.%s%s", class_name, name, "???");
		}
		FUNC3 (class_name);
	} else {
		char *signature = FUNC2 (bin, method_idx);
		if (signature) {
			flagname = FUNC6 ("%s.%s%s", "???", name, signature);
			FUNC3 (signature);
		} else {
			flagname = FUNC6 ("%s.%s%s", "???", name, "???");
			FUNC3 (signature);
		}
	}
	if (flagname && simplifiedDemangling) {
		char *p = FUNC9 (flagname, '(');
		if (p) {
			*p = 0;
			char *q = FUNC9 (p + 1, ')');
			if (q) {
				FUNC8 (q + 1);
				FUNC5 (p, q + 1);
			}
			FUNC8 (flagname);
		}
	}

	return flagname;
}