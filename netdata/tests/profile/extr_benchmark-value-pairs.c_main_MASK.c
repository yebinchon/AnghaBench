#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {char* name; void* hash; } ;

/* Variables and functions */
 void* active_anon_hash ; 
 void* active_file_hash ; 
 int /*<<< orphan*/  FUNC0 () ; 
 void* cache_hash ; 
 void* dirty_hash ; 
 unsigned long FUNC1 () ; 
 void* hierarchical_memory_limit_hash ; 
 void* inactive_anon_hash ; 
 void* inactive_file_hash ; 
 void* mapped_file_hash ; 
 TYPE_1__* pairs ; 
 void* pgfault_hash ; 
 void* pgmajfault_hash ; 
 void* pgpgin_hash ; 
 void* pgpgout_hash ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 void* rss_hash ; 
 void* rss_huge_hash ; 
 void* FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 void* swap_hash ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 () ; 
 void* total_active_anon_hash ; 
 void* total_active_file_hash ; 
 void* total_cache_hash ; 
 void* total_dirty_hash ; 
 void* total_inactive_anon_hash ; 
 void* total_inactive_file_hash ; 
 void* total_mapped_file_hash ; 
 void* total_pgfault_hash ; 
 void* total_pgmajfault_hash ; 
 void* total_pgpgin_hash ; 
 void* total_pgpgout_hash ; 
 void* total_rss_hash ; 
 void* total_rss_huge_hash ; 
 void* total_swap_hash ; 
 void* total_unevictable_hash ; 
 void* total_writeback_hash ; 
 void* unevictable_hash ; 
 int /*<<< orphan*/ * values1 ; 
 int /*<<< orphan*/ * values2 ; 
 int /*<<< orphan*/ * values3 ; 
 int /*<<< orphan*/ * values4 ; 
 int /*<<< orphan*/ * values5 ; 
 int /*<<< orphan*/ * values6 ; 
 int /*<<< orphan*/ * values7 ; 
 int /*<<< orphan*/ * values8 ; 
 int /*<<< orphan*/ * values9 ; 
 void* writeback_hash ; 

int FUNC16(void)
{
    {
        int i;
        for(i = 0; pairs[i].name; i++)
            pairs[i].hash = FUNC3(pairs[i].name);
    }

    cache_hash = FUNC3("cache");
    rss_hash = FUNC3("rss");
    rss_huge_hash = FUNC3("rss_huge");
    mapped_file_hash = FUNC3("mapped_file");
    writeback_hash = FUNC3("writeback");
    dirty_hash = FUNC3("dirty");
    swap_hash = FUNC3("swap");
    pgpgin_hash = FUNC3("pgpgin");
    pgpgout_hash = FUNC3("pgpgout");
    pgfault_hash = FUNC3("pgfault");
    pgmajfault_hash = FUNC3("pgmajfault");
    inactive_anon_hash = FUNC3("inactive_anon");
    active_anon_hash = FUNC3("active_anon");
    inactive_file_hash = FUNC3("inactive_file");
    active_file_hash = FUNC3("active_file");
    unevictable_hash = FUNC3("unevictable");
    hierarchical_memory_limit_hash = FUNC3("hierarchical_memory_limit");
    total_cache_hash = FUNC3("total_cache");
    total_rss_hash = FUNC3("total_rss");
    total_rss_huge_hash = FUNC3("total_rss_huge");
    total_mapped_file_hash = FUNC3("total_mapped_file");
    total_writeback_hash = FUNC3("total_writeback");
    total_dirty_hash = FUNC3("total_dirty");
    total_swap_hash = FUNC3("total_swap");
    total_pgpgin_hash = FUNC3("total_pgpgin");
    total_pgpgout_hash = FUNC3("total_pgpgout");
    total_pgfault_hash = FUNC3("total_pgfault");
    total_pgmajfault_hash = FUNC3("total_pgmajfault");
    total_inactive_anon_hash = FUNC3("total_inactive_anon");
    total_active_anon_hash = FUNC3("total_active_anon");
    total_inactive_file_hash = FUNC3("total_inactive_file");
    total_active_file_hash = FUNC3("total_active_file");
    total_unevictable_hash = FUNC3("total_unevictable");

    // cache functions
    (void)FUNC4("hello world");
    (void)FUNC5("1", "2");
    (void)FUNC6("123", NULL, 0);

  unsigned long i, c1 = 0, c2 = 0, c3 = 0, c4 = 0, c5 = 0, c6 = 0, c7 = 0, c8 = 0, c9 = 0;
  unsigned long max = 1000000;

  FUNC0();
  for(i = 0; i <= max ;i++) FUNC7();
  c1 = FUNC1();

  FUNC0();
  for(i = 0; i <= max ;i++) FUNC8();
  c2 = FUNC1();
    
  FUNC0();
  for(i = 0; i <= max ;i++) FUNC9();
  c3 = FUNC1();

  FUNC0();
  for(i = 0; i <= max ;i++) FUNC10();
  c4 = FUNC1();

  FUNC0();
  for(i = 0; i <= max ;i++) FUNC11();
  c5 = FUNC1();

    FUNC0();
    for(i = 0; i <= max ;i++) FUNC12();
    c6 = FUNC1();

    FUNC0();
    for(i = 0; i <= max ;i++) FUNC13();
    c7 = FUNC1();

    FUNC0();
    for(i = 0; i <= max ;i++) FUNC14();
    c8 = FUNC1();

    FUNC0();
    for(i = 0; i <= max ;i++) FUNC15();
    c9 = FUNC1();

    for(i = 0; i < 11 ; i++)
        FUNC2("value %lu: %llu %llu %llu %llu %llu %llu %llu %llu %llu\n", i, values1[i], values2[i], values3[i], values4[i], values5[i], values6[i], values7[i], values8[i], values9[i]);
  
  FUNC2("\n\nRESULTS\n");
  FUNC2("test1() [1] in %lu usecs: simple system strcmp().\n"
         "test2() [4] in %lu usecs: inline simple_hash() with system strtoull().\n"
         "test3() [5] in %lu usecs: statement expression simple_hash(), system strtoull().\n"
         "test4() [6] in %lu usecs: inline simple_hash(), if-continue checks.\n"
         "test5() [7] in %lu usecs: inline simple_hash(), if-else-if-else-if (netdata default prior to ARL).\n"
         "test6() [8] in %lu usecs: adaptive re-sortable array with strtoull() (wow!)\n"
         "test7() [9] in %lu usecs: adaptive re-sortable array with str2ull() (wow!)\n"
         "test8() [2] in %lu usecs: nested loop with strtoull()\n"
         "test9() [3] in %lu usecs: nested loop with str2ull()\n"
         , c1
         , c2
         , c3
         , c4
         , c5
         , c6
         , c7
         , c8
         , c9
         );

  return 0;
}