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
struct TYPE_9__ {unsigned long long tv_sec; unsigned long long tv_usec; } ;
struct rusage {TYPE_1__ ru_utime; } ;
struct myvalue {int i; } ;
struct TYPE_11__ {TYPE_2__* stats; } ;
struct TYPE_10__ {unsigned long long inserts; unsigned long long deletes; unsigned long long searches; } ;
typedef  TYPE_3__ DICTIONARY ;

/* Variables and functions */
 int /*<<< orphan*/  DICTIONARY_FLAG_WITH_STATISTICS ; 
 int /*<<< orphan*/  RUSAGE_SELF ; 
 TYPE_3__* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 struct myvalue* FUNC3 (TYPE_3__*,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,char*,struct myvalue*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct rusage*) ; 
 int /*<<< orphan*/  FUNC8 (char*,int,char*,int) ; 
 int /*<<< orphan*/  stderr ; 

int FUNC9(int argc, char **argv) {
	if(argc || argv) {;}

//	DICTIONARY *dict = dictionary_create(DICTIONARY_FLAG_SINGLE_THREADED|DICTIONARY_FLAG_WITH_STATISTICS);
	DICTIONARY *dict = FUNC0(DICTIONARY_FLAG_WITH_STATISTICS);
	if(!dict) FUNC5("Cannot create dictionary.");

	struct rusage start, end;
	unsigned long long dt;
	char buf[100 + 1];
	struct myvalue value, *v;
	int i, max = 30000000, max2;

	// ------------------------------------------------------------------------

	FUNC7(RUSAGE_SELF, &start);
	dict->stats->inserts = dict->stats->deletes = dict->stats->searches = 0ULL;
	FUNC6(stderr, "Inserting %d entries in the dictionary\n", max);
	for(i = 0; i < max; i++) {
		value.i = i;
		FUNC8(buf, 100, "%d", i);

		FUNC4(dict, buf, &value, sizeof(struct myvalue));
	}
	FUNC7(RUSAGE_SELF, &end);
	dt = (end.ru_utime.tv_sec * 1000000ULL + end.ru_utime.tv_usec) - (start.ru_utime.tv_sec * 1000000ULL + start.ru_utime.tv_usec);
	FUNC6(stderr, "Added %d entries in %llu nanoseconds: %llu inserts per second\n", max, dt, max * 1000000ULL / dt);
	FUNC6(stderr, " > Dictionary: %llu inserts, %llu deletes, %llu searches\n\n", dict->stats->inserts, dict->stats->deletes, dict->stats->searches);

	// ------------------------------------------------------------------------

	FUNC7(RUSAGE_SELF, &start);
	dict->stats->inserts = dict->stats->deletes = dict->stats->searches = 0ULL;
	FUNC6(stderr, "Retrieving %d entries from the dictionary\n", max);
	for(i = 0; i < max; i++) {
		value.i = i;
		FUNC8(buf, 100, "%d", i);

		v = FUNC3(dict, buf);
		if(!v)
			FUNC6(stderr, "ERROR: cannot get value %d from the dictionary\n", i);
		else if(v->i != i)
			FUNC6(stderr, "ERROR: expected %d but got %d\n", i, v->i);
	}
	FUNC7(RUSAGE_SELF, &end);
	dt = (end.ru_utime.tv_sec * 1000000ULL + end.ru_utime.tv_usec) - (start.ru_utime.tv_sec * 1000000ULL + start.ru_utime.tv_usec);
	FUNC6(stderr, "Read %d entries in %llu nanoseconds: %llu searches per second\n", max, dt, max * 1000000ULL / dt);
	FUNC6(stderr, " > Dictionary: %llu inserts, %llu deletes, %llu searches\n\n", dict->stats->inserts, dict->stats->deletes, dict->stats->searches);

	// ------------------------------------------------------------------------

	FUNC7(RUSAGE_SELF, &start);
	dict->stats->inserts = dict->stats->deletes = dict->stats->searches = 0ULL;
	FUNC6(stderr, "Resetting %d entries in the dictionary\n", max);
	for(i = 0; i < max; i++) {
		value.i = i;
		FUNC8(buf, 100, "%d", i);

		FUNC4(dict, buf, &value, sizeof(struct myvalue));
	}
	FUNC7(RUSAGE_SELF, &end);
	dt = (end.ru_utime.tv_sec * 1000000ULL + end.ru_utime.tv_usec) - (start.ru_utime.tv_sec * 1000000ULL + start.ru_utime.tv_usec);
	FUNC6(stderr, "Reset %d entries in %llu nanoseconds: %llu resets per second\n", max, dt, max * 1000000ULL / dt);
	FUNC6(stderr, " > Dictionary: %llu inserts, %llu deletes, %llu searches\n\n", dict->stats->inserts, dict->stats->deletes, dict->stats->searches);

	// ------------------------------------------------------------------------

	FUNC7(RUSAGE_SELF, &start);
	dict->stats->inserts = dict->stats->deletes = dict->stats->searches = 0ULL;
	FUNC6(stderr, "Searching  %d non-existing entries in the dictionary\n", max);
	max2 = max * 2;
	for(i = max; i < max2; i++) {
		value.i = i;
		FUNC8(buf, 100, "%d", i);

		v = FUNC3(dict, buf);
		if(v)
			FUNC6(stderr, "ERROR: cannot got non-existing value %d from the dictionary\n", i);
	}
	FUNC7(RUSAGE_SELF, &end);
	dt = (end.ru_utime.tv_sec * 1000000ULL + end.ru_utime.tv_usec) - (start.ru_utime.tv_sec * 1000000ULL + start.ru_utime.tv_usec);
	FUNC6(stderr, "Searched %d non-existing entries in %llu nanoseconds: %llu not found searches per second\n", max, dt, max * 1000000ULL / dt);
	FUNC6(stderr, " > Dictionary: %llu inserts, %llu deletes, %llu searches\n\n", dict->stats->inserts, dict->stats->deletes, dict->stats->searches);

	// ------------------------------------------------------------------------

	FUNC7(RUSAGE_SELF, &start);
	dict->stats->inserts = dict->stats->deletes = dict->stats->searches = 0ULL;
	FUNC6(stderr, "Deleting %d entries from the dictionary\n", max);
	for(i = 0; i < max; i++) {
		value.i = i;
		FUNC8(buf, 100, "%d", i);

		FUNC1(dict, buf);
	}
	FUNC7(RUSAGE_SELF, &end);
	dt = (end.ru_utime.tv_sec * 1000000ULL + end.ru_utime.tv_usec) - (start.ru_utime.tv_sec * 1000000ULL + start.ru_utime.tv_usec);
	FUNC6(stderr, "Deleted %d entries in %llu nanoseconds: %llu deletes per second\n", max, dt, max * 1000000ULL / dt);
	FUNC6(stderr, " > Dictionary: %llu inserts, %llu deletes, %llu searches\n\n", dict->stats->inserts, dict->stats->deletes, dict->stats->searches);

	// ------------------------------------------------------------------------

	FUNC7(RUSAGE_SELF, &start);
	dict->stats->inserts = dict->stats->deletes = dict->stats->searches = 0ULL;
	FUNC6(stderr, "Destroying dictionary\n");
	FUNC2(dict);
	FUNC7(RUSAGE_SELF, &end);
	dt = (end.ru_utime.tv_sec * 1000000ULL + end.ru_utime.tv_usec) - (start.ru_utime.tv_sec * 1000000ULL + start.ru_utime.tv_usec);
	FUNC6(stderr, "Destroyed in %llu nanoseconds\n", dt);

	return 0;
}