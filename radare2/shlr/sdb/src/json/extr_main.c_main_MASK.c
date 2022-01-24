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
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  Rangstr ;

/* Variables and functions */
 char* FUNC0 (char*,char*,char*) ; 
 int FUNC1 (char*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 int FUNC4 (char*,char*) ; 
 char* FUNC5 (char*,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 char* FUNC8 (char*,char*) ; 
 char* FUNC9 (char*) ; 
 int /*<<< orphan*/  stdin ; 

int FUNC10(int argc, char **argv) {
	Rangstr rs;
	char buf[4096];
	int n = FUNC1 (buf, 1, sizeof (buf), stdin);
	buf[n] = 0;
//return test_glossary (buf);
//return test_main ();
	char *path = argv[1];

#if 1
	FUNC6 (">>>> %s <<<<\n", FUNC9 (buf));
	FUNC6 (">>>> %s <<<<\n", FUNC8 (buf, "  "));
// set value //
	path = "glossary.title";
	char *s = FUNC0 (buf, path, "patata");
	if (s) {
		FUNC6 ("%s\n", s);
		FUNC2 (s);
	} else FUNC6 ("set failed\n");
#endif
//printf ("%s\n", str); return 0;

//	s = "[1,3,4]";
#if 0
	char *a = "{}";
	a = json_seti (a, "id", 123);
	a = json_seti (a, "user.name", "blah");
	printf ("id = %d\n", json_geti ("{'id':123}", "id"));
#endif
	//json_walk (buf);

	path = argv[1];
	rs = FUNC3 (buf, path);
	FUNC6 ("-- output --\n");
	FUNC7(&rs);
	FUNC6 ("\n");
	return 0;
}