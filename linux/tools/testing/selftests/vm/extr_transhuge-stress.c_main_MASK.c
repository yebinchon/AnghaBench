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
typedef  int uint8_t ;
struct timespec {int tv_sec; int tv_nsec; } ;
typedef  size_t int64_t ;

/* Variables and functions */
 int /*<<< orphan*/  CLOCK_MONOTONIC ; 
 size_t HPAGE_SHIFT ; 
 size_t HPAGE_SIZE ; 
 int /*<<< orphan*/  MADV_DONTNEED ; 
 int /*<<< orphan*/  MADV_HUGEPAGE ; 
 int MAP_ANONYMOUS ; 
 void* MAP_FAILED ; 
 int MAP_NORESERVE ; 
 int MAP_PRIVATE ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int PAGE_SHIFT ; 
 size_t PAGE_SIZE ; 
 int PROT_READ ; 
 int PROT_WRITE ; 
 int SIZE_MAX ; 
 int /*<<< orphan*/  _SC_PAGESIZE ; 
 int /*<<< orphan*/  _SC_PHYS_PAGES ; 
 size_t FUNC0 (void*) ; 
 int FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct timespec*) ; 
 int /*<<< orphan*/  FUNC3 (int,char*) ; 
 int /*<<< orphan*/  FUNC4 (int,char*,...) ; 
 scalar_t__ FUNC5 (void*,size_t,int /*<<< orphan*/ ) ; 
 int* FUNC6 (size_t) ; 
 int /*<<< orphan*/  FUNC7 (int*,int /*<<< orphan*/ ,size_t) ; 
 void* FUNC8 (int /*<<< orphan*/ *,size_t,int,int,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ pagemap_fd ; 
 int* FUNC10 (int*,size_t) ; 
 int /*<<< orphan*/  FUNC11 (char*,char*) ; 
 size_t FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (char*,double,double,size_t,...) ; 

int FUNC14(int argc, char **argv)
{
	size_t ram, len;
	void *ptr, *p;
	struct timespec a, b;
	double s;
	uint8_t *map;
	size_t map_len;

	ram = FUNC12(_SC_PHYS_PAGES);
	if (ram > SIZE_MAX / FUNC12(_SC_PAGESIZE) / 4)
		ram = SIZE_MAX / 4;
	else
		ram *= FUNC12(_SC_PAGESIZE);

	if (argc == 1)
		len = ram;
	else if (!FUNC11(argv[1], "-h"))
		FUNC4(1, "usage: %s [size in MiB]", argv[0]);
	else
		len = FUNC1(argv[1]) << 20;

	FUNC13("allocate %zd transhuge pages, using %zd MiB virtual memory"
	      " and %zd MiB of ram", len >> HPAGE_SHIFT, len >> 20,
	      len >> (20 + HPAGE_SHIFT - PAGE_SHIFT - 1));

	pagemap_fd = FUNC9("/proc/self/pagemap", O_RDONLY);
	if (pagemap_fd < 0)
		FUNC3(2, "open pagemap");

	len -= len % HPAGE_SIZE;
	ptr = FUNC8(NULL, len + HPAGE_SIZE, PROT_READ | PROT_WRITE,
			MAP_ANONYMOUS | MAP_NORESERVE | MAP_PRIVATE, -1, 0);
	if (ptr == MAP_FAILED)
		FUNC3(2, "initial mmap");
	ptr += HPAGE_SIZE - (uintptr_t)ptr % HPAGE_SIZE;

	if (FUNC5(ptr, len, MADV_HUGEPAGE))
		FUNC3(2, "MADV_HUGEPAGE");

	map_len = ram >> (HPAGE_SHIFT - 1);
	map = FUNC6(map_len);
	if (!map)
		FUNC4(2, "map malloc");

	while (1) {
		int nr_succeed = 0, nr_failed = 0, nr_pages = 0;

		FUNC7(map, 0, map_len);

		FUNC2(CLOCK_MONOTONIC, &a);
		for (p = ptr; p < ptr + len; p += HPAGE_SIZE) {
			int64_t pfn;

			pfn = FUNC0(p);

			if (pfn < 0) {
				nr_failed++;
			} else {
				size_t idx = pfn >> (HPAGE_SHIFT - PAGE_SHIFT);

				nr_succeed++;
				if (idx >= map_len) {
					map = FUNC10(map, idx + 1);
					if (!map)
						FUNC4(2, "map realloc");
					FUNC7(map + map_len, 0, idx + 1 - map_len);
					map_len = idx + 1;
				}
				if (!map[idx])
					nr_pages++;
				map[idx] = 1;
			}

			/* split transhuge page, keep last page */
			if (FUNC5(p, HPAGE_SIZE - PAGE_SIZE, MADV_DONTNEED))
				FUNC3(2, "MADV_DONTNEED");
		}
		FUNC2(CLOCK_MONOTONIC, &b);
		s = b.tv_sec - a.tv_sec + (b.tv_nsec - a.tv_nsec) / 1000000000.;

		FUNC13("%.3f s/loop, %.3f ms/page, %10.3f MiB/s\t"
		      "%4d succeed, %4d failed, %4d different pages",
		      s, s * 1000 / (len >> HPAGE_SHIFT), len / s / (1 << 20),
		      nr_succeed, nr_failed, nr_pages);
	}
}