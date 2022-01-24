#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {char* guid; } ;
typedef  TYPE_1__ PERSON ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 TYPE_1__* FUNC5 (char*,char*,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC7 (int,char**) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

int FUNC9(int argc, char **argv) {
	FUNC0("registry", "enabled", 1);

	//debug_flags = 0xFFFFFFFF;
	FUNC7(argc, argv);
	FUNC1(0);

	(void)argc;
	(void)argv;


	PERSON *p1, *p2;

	FUNC2(stderr, "\n\nINITIALIZATION\n");

	FUNC4();

	int i = 2;

	FUNC2(stderr, "\n\nADDING ENTRY\n");
	p1 = FUNC5("2c95abd0-1542-11e6-8c66-00508db7e9c9", "7c173980-145c-11e6-b86f-00508db7e9c1", "http://localhost:19999/", "test", FUNC8(NULL));

	if(0)
	while(i--) {
#ifdef REGISTRY_STDOUT_DUMP
		fprintf(stderr, "\n\nADDING ENTRY\n");
#endif /* REGISTRY_STDOUT_DUMP */
		p1 = FUNC5(NULL, "7c173980-145c-11e6-b86f-00508db7e9c1", "http://localhost:19999/", "test", FUNC8(NULL));

#ifdef REGISTRY_STDOUT_DUMP
		fprintf(stderr, "\n\nADDING ANOTHER URL\n");
#endif /* REGISTRY_STDOUT_DUMP */
		p1 = FUNC5(p1->guid, "7c173980-145c-11e6-b86f-00508db7e9c1", "http://127.0.0.1:19999/", "test", FUNC8(NULL));

#ifdef REGISTRY_STDOUT_DUMP
		fprintf(stderr, "\n\nADDING ANOTHER URL\n");
#endif /* REGISTRY_STDOUT_DUMP */
		p1 = FUNC5(p1->guid, "7c173980-145c-11e6-b86f-00508db7e9c1", "http://my.server:19999/", "test", FUNC8(NULL));

#ifdef REGISTRY_STDOUT_DUMP
		fprintf(stderr, "\n\nADDING ANOTHER MACHINE\n");
#endif /* REGISTRY_STDOUT_DUMP */
		p1 = FUNC5(p1->guid, "7c173980-145c-11e6-b86f-00508db7e9c1", "http://my.server:19999/", "test", FUNC8(NULL));

#ifdef REGISTRY_STDOUT_DUMP
		fprintf(stderr, "\n\nADDING ANOTHER PERSON\n");
#endif /* REGISTRY_STDOUT_DUMP */
		p2 = FUNC5(NULL, "7c173980-145c-11e6-b86f-00508db7e9c3", "http://localhost:19999/", "test", FUNC8(NULL));

#ifdef REGISTRY_STDOUT_DUMP
		fprintf(stderr, "\n\nADDING ANOTHER MACHINE\n");
#endif /* REGISTRY_STDOUT_DUMP */
		p2 = FUNC5(p2->guid, "7c173980-145c-11e6-b86f-00508db7e9c3", "http://localhost:19999/", "test", FUNC8(NULL));
	}

	FUNC2(stderr, "\n\nSAVE\n");
	FUNC6();

	FUNC2(stderr, "\n\nCLEANUP\n");
	FUNC3();
	return 0;
}