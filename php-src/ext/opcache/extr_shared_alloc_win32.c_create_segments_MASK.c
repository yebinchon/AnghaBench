#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {size_t size; scalar_t__ pos; void* p; } ;
typedef  TYPE_1__ zend_shared_segment ;
struct TYPE_5__ {char* mmap_base; } ;
typedef  int /*<<< orphan*/  FILE ;
typedef  size_t DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  ACCEL_FILEMAP_NAME ; 
 int /*<<< orphan*/  ACCEL_LOG_FATAL ; 
 int /*<<< orphan*/  ACCEL_LOG_WARNING ; 
 int ALLOC_FAILURE ; 
 int ALLOC_FAIL_MAPPING ; 
 int ALLOC_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,size_t,size_t,int /*<<< orphan*/ ) ; 
 int FILE_MAP_ALL_ACCESS ; 
 int FILE_MAP_EXECUTE ; 
 int FILE_MAP_READ ; 
 int FILE_MAP_WRITE ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  INVALID_HANDLE_VALUE ; 
 int MAX_MAP_RETRIES ; 
 void* FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/ * FUNC4 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int PAGE_EXECUTE_READWRITE ; 
 int /*<<< orphan*/  PAGE_READWRITE ; 
 int SEC_COMMIT ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (void*,size_t,int /*<<< orphan*/ ,size_t*) ; 
 TYPE_3__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  accel_directives ; 
 scalar_t__ FUNC8 (int,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ execute_ex ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC11 (char*,char*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,char*,void*) ; 
 char* FUNC13 () ; 
 void* mapping_base ; 
 int /*<<< orphan*/ * memfile ; 
 int FUNC14 (char*,char*,void**) ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int FUNC16 (size_t,char**) ; 
 int /*<<< orphan*/  FUNC17 () ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static int FUNC19(size_t requested_size, zend_shared_segment ***shared_segments_p, int *shared_segments_count, char **error_in)
{
	int err = 0, ret;
	zend_shared_segment *shared_segment;
	int map_retries = 0;
	void *default_mapping_base_set[] = { 0, 0 };
	/* TODO:
	  improve fixed addresses on x64. It still makes no sense to do it as Windows addresses are virtual per se and can or should be randomized anyway
	  through Address Space Layout Radomization (ASLR). We can still let the OS do its job and be sure that each process gets the same address if
	  desired. Not done yet, @zend refused but did not remember the exact reason, pls add info here if one of you know why :)
	*/
#if defined(_WIN64)
	void *vista_mapping_base_set[] = { (void *) 0x0000100000000000, (void *) 0x0000200000000000, (void *) 0x0000300000000000, (void *) 0x0000700000000000, 0 };
	DWORD size_high = (requested_size >> 32), size_low = (requested_size & 0xffffffff);
#else
	void *vista_mapping_base_set[] = { (void *) 0x20000000, (void *) 0x21000000, (void *) 0x30000000, (void *) 0x31000000, (void *) 0x50000000, 0 };
	DWORD size_high = 0, size_low = requested_size;
#endif
	void **wanted_mapping_base = default_mapping_base_set;

	FUNC15();
	/* Mapping retries: When Apache2 restarts, the parent process startup routine
	   can be called before the child process is killed. In this case, the map will fail
	   and we have to sleep some time (until the child releases the mapping object) and retry.*/
	do {
		memfile = FUNC4(FILE_MAP_READ|FILE_MAP_WRITE|FILE_MAP_EXECUTE, 0, FUNC9(ACCEL_FILEMAP_NAME));
		if (memfile == NULL) {
			err = FUNC2();
			break;
		}

		ret =  FUNC16(requested_size, error_in);
		if (ret == ALLOC_FAIL_MAPPING) {
			err = FUNC2();
			/* Mapping failed, wait for mapping object to get freed and retry */
			FUNC0(memfile);
			memfile = NULL;
			if (++map_retries >= MAX_MAP_RETRIES) {
				break;
			}
			FUNC17();
			FUNC5(1000 * (map_retries + 1));
			FUNC15();
		} else {
			FUNC17();
			return ret;
		}
	} while (1);

	if (map_retries == MAX_MAP_RETRIES) {
		FUNC17();
		FUNC18(ACCEL_LOG_FATAL, "Unable to open file mapping", err);
		*error_in = "OpenFileMapping";
		return ALLOC_FAILURE;
	}

	/* creating segment here */
	*shared_segments_count = 1;
	*shared_segments_p = (zend_shared_segment **) FUNC8(1, sizeof(zend_shared_segment)+sizeof(void *));
	if (!*shared_segments_p) {
		err = FUNC2();
		FUNC17();
		FUNC18(ACCEL_LOG_FATAL, "calloc() failed", err);
		*error_in = "calloc";
		return ALLOC_FAILURE;
	}
	shared_segment = (zend_shared_segment *)((char *)(*shared_segments_p) + sizeof(void *));
	(*shared_segments_p)[0] = shared_segment;

	memfile	= FUNC1(INVALID_HANDLE_VALUE, NULL, PAGE_EXECUTE_READWRITE | SEC_COMMIT, size_high, size_low,
								FUNC9(ACCEL_FILEMAP_NAME));
	if (memfile == NULL) {
		err = FUNC2();
		FUNC17();
		FUNC18(ACCEL_LOG_FATAL, "Unable to create file mapping", err);
		*error_in = "CreateFileMapping";
		return ALLOC_FAILURE;
	}

	/* Starting from windows Vista, heap randomization occurs which might cause our mapping base to
	   be taken (fail to map). So under Vista, we try to map into a hard coded predefined addresses
	   in high memory. */
	if (!FUNC7(accel_directives).mmap_base || !*FUNC7(accel_directives).mmap_base) {
		wanted_mapping_base = vista_mapping_base_set;
	} else {
		char *s = FUNC7(accel_directives).mmap_base;

		/* skip leading 0x, %p assumes hexdeciaml format anyway */
		if (*s == '0' && *(s + 1) == 'x') {
			s += 2;
		}
		if (FUNC14(s, "%p", &default_mapping_base_set[0]) != 1) {
			FUNC17();
			FUNC18(ACCEL_LOG_FATAL, "Bad mapping address specified in opcache.mmap_base", err);
			return ALLOC_FAILURE;
		}
	}

	do {
		shared_segment->p = mapping_base = FUNC3(memfile, FILE_MAP_ALL_ACCESS|FILE_MAP_EXECUTE, 0, 0, 0, *wanted_mapping_base);
		if (*wanted_mapping_base == NULL) { /* Auto address (NULL) is the last option on the array */
			break;
		}
		wanted_mapping_base++;
	} while (!mapping_base);

	if (mapping_base == NULL) {
		err = FUNC2();
		FUNC17();
		FUNC18(ACCEL_LOG_FATAL, "Unable to create view for file mapping", err);
		*error_in = "MapViewOfFile";
		return ALLOC_FAILURE;
	} else {
		char *mmap_base_file;
		void *execute_ex_base = (void *)execute_ex;
		FILE *fp;
		DWORD old;

		if (!FUNC6(mapping_base, requested_size, PAGE_READWRITE, &old)) {
			err = FUNC2();
			FUNC18(ACCEL_LOG_FATAL, "VirtualProtect() failed", err);
			return ALLOC_FAILURE;
		}
		mmap_base_file = FUNC13();
		fp = FUNC11(mmap_base_file, "w");
		if (!fp) {
			err = FUNC2();
			FUNC17();
			FUNC18(ACCEL_LOG_WARNING, mmap_base_file, err);
			FUNC18(ACCEL_LOG_FATAL, "Unable to write base address", err);
			return ALLOC_FAILURE;
		}
		FUNC12(fp, "%p\n", mapping_base);
		FUNC12(fp, "%p\n", execute_ex_base);
		FUNC10(fp);
	}

	shared_segment->pos = 0;
	shared_segment->size = requested_size;

	FUNC17();

	return ALLOC_SUCCESS;
}