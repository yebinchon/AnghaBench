#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ app_shared_globals; } ;
typedef  TYPE_1__ zend_smm_shared_globals ;
typedef  int /*<<< orphan*/  zend_shared_segment ;
typedef  int /*<<< orphan*/  zend_accel_shared_globals ;
typedef  int /*<<< orphan*/  info ;
struct TYPE_8__ {scalar_t__ file_cache_fallback; scalar_t__ file_cache; } ;
struct TYPE_7__ {scalar_t__ State; size_t RegionSize; } ;
typedef  TYPE_2__ MEMORY_BASIC_INFORMATION ;
typedef  int /*<<< orphan*/  FILE ;
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  ACCEL_LOG_FATAL ; 
 int /*<<< orphan*/  ACCEL_LOG_WARNING ; 
 int ALLOC_FAILURE ; 
 int ALLOC_FAIL_MAPPING ; 
 int ALLOC_FALLBACK ; 
 int ERROR_INVALID_ADDRESS ; 
 int FILE_MAP_ALL_ACCESS ; 
 int FILE_MAP_EXECUTE ; 
 int FUNC0 () ; 
 scalar_t__ MEM_FREE ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t,void*) ; 
 int /*<<< orphan*/  PAGE_READWRITE ; 
 int SUCCESSFULLY_REATTACHED ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (void*,TYPE_2__*,int) ; 
 TYPE_4__ FUNC4 (int /*<<< orphan*/ ) ; 
 size_t FUNC5 (int) ; 
 int /*<<< orphan*/  accel_directives ; 
 int /*<<< orphan*/ * accel_shared_globals ; 
 scalar_t__ execute_ex ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (char*,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*,void**) ; 
 char* FUNC9 () ; 
 int /*<<< orphan*/ * mapping_base ; 
 int /*<<< orphan*/  memfile ; 
 TYPE_1__* smm_shared_globals ; 
 scalar_t__ FUNC10 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static int FUNC12(size_t requested_size, char **error_in)
{
	int err;
	void *wanted_mapping_base;
	char *mmap_base_file = FUNC9();
	FILE *fp = FUNC7(mmap_base_file, "r");
	MEMORY_BASIC_INFORMATION info;
	void *execute_ex_base;
	int execute_ex_moved;

	if (!fp) {
		err = FUNC0();
		FUNC11(ACCEL_LOG_WARNING, mmap_base_file, err);
		FUNC11(ACCEL_LOG_FATAL, "Unable to open base address file", err);
		*error_in="fopen";
		return ALLOC_FAILURE;
	}
	if (!FUNC8(fp, "%p", &wanted_mapping_base)) {
		err = FUNC0();
		FUNC11(ACCEL_LOG_FATAL, "Unable to read base address", err);
		*error_in="read mapping base";
		FUNC6(fp);
		return ALLOC_FAILURE;
	}
	if (!FUNC8(fp, "%p", &execute_ex_base)) {
		err = FUNC0();
		FUNC11(ACCEL_LOG_FATAL, "Unable to read execute_ex base address", err);
		*error_in="read execute_ex base";
		FUNC6(fp);
		return ALLOC_FAILURE;
	}
	FUNC6(fp);

	if (0 > FUNC10(mmap_base_file, NULL)) {
		err = FUNC0();
		FUNC11(ACCEL_LOG_WARNING, mmap_base_file, err);
	}

	execute_ex_moved = (void *)execute_ex != execute_ex_base;

	/* Check if execute_ex is at the same address and if the requested address space is free */
	if (execute_ex_moved ||
	    FUNC3(wanted_mapping_base, &info, sizeof(info)) == 0 ||
	    info.State != MEM_FREE ||
	    info.RegionSize < requested_size) {
#if ENABLE_FILE_CACHE_FALLBACK
		if (ZCG(accel_directives).file_cache && ZCG(accel_directives).file_cache_fallback) {
			size_t pre_size, wanted_mb_save;

			wanted_mb_save = (size_t)wanted_mapping_base;

			if (execute_ex_moved) {
				err = ERROR_INVALID_ADDRESS;
				zend_win_error_message(ACCEL_LOG_WARNING, "Opcode handlers are unusable due to ASLR (fall-back to file cache)", err);
			} else {
				err = ERROR_INVALID_ADDRESS;
				zend_win_error_message(ACCEL_LOG_WARNING, "Base address marks unusable memory region (fall-back to file cache)", err);
			}

			pre_size = ZEND_ALIGNED_SIZE(sizeof(zend_smm_shared_globals)) + ZEND_ALIGNED_SIZE(sizeof(zend_shared_segment)) + ZEND_ALIGNED_SIZE(sizeof(void *)) + ZEND_ALIGNED_SIZE(sizeof(int));
			/* Map only part of SHM to have access opcache shared globals */
			mapping_base = MapViewOfFileEx(memfile, FILE_MAP_ALL_ACCESS, 0, 0, pre_size + ZEND_ALIGNED_SIZE(sizeof(zend_accel_shared_globals)), NULL);
			if (mapping_base == NULL) {
				err = GetLastError();
				zend_win_error_message(ACCEL_LOG_FATAL, "Unable to reattach to opcache shared globals", err);
				return ALLOC_FAILURE;
			}
			accel_shared_globals = (zend_accel_shared_globals *)((char *)((zend_smm_shared_globals *)mapping_base)->app_shared_globals + ((char *)mapping_base - (char *)wanted_mb_save));

			return ALLOC_FALLBACK;
		}
#endif
		if (execute_ex_moved) {
			err = ERROR_INVALID_ADDRESS;
			FUNC11(ACCEL_LOG_FATAL, "Opcode handlers are unusable due to ASLR. Please setup opcache.file_cache and opcache.file_cache_fallback directives for more convenient Opcache usage", err);
		} else {
			err = ERROR_INVALID_ADDRESS;
			FUNC11(ACCEL_LOG_FATAL, "Base address marks unusable memory region. Please setup opcache.file_cache and opcache.file_cache_fallback directives for more convenient Opcache usage", err);
		}
		return ALLOC_FAILURE;
	}

	mapping_base = FUNC1(memfile, FILE_MAP_ALL_ACCESS|FILE_MAP_EXECUTE, 0, 0, 0, wanted_mapping_base);

	if (mapping_base == NULL) {
		err = FUNC0();
		if (err == ERROR_INVALID_ADDRESS) {
			FUNC11(ACCEL_LOG_FATAL, "Unable to reattach to base address", err);
			return ALLOC_FAILURE;
		}
		return ALLOC_FAIL_MAPPING;
	} else {
		DWORD old;

		if (!FUNC2(mapping_base, requested_size, PAGE_READWRITE, &old)) {
			err = FUNC0();
			FUNC11(ACCEL_LOG_FATAL, "VirtualProtect() failed", err);
			return ALLOC_FAIL_MAPPING;
		}
	}

	smm_shared_globals = (zend_smm_shared_globals *) mapping_base;

	return SUCCESSFULLY_REATTACHED;
}