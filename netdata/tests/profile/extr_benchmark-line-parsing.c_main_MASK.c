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
 void* pgfault_hash ; 
 void* pgmajfault_hash ; 
 void* pgpgin_hash ; 
 void* pgpgout_hash ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 void* rss_hash ; 
 void* rss_huge_hash ; 
 void* FUNC3 (char*) ; 
 void* swap_hash ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
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
 unsigned long* values1 ; 
 unsigned long* values2 ; 
 unsigned long* values3 ; 
 unsigned long* values4 ; 
 unsigned long* values5 ; 
 unsigned long* values6 ; 
 void* writeback_hash ; 

int FUNC11(void)
{
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

  unsigned long i, c1 = 0, c2 = 0, c3 = 0, c4 = 0, c5 = 0, c6 = 0, c7;
  unsigned long max = 1000000;

  // let the processor get up to speed
  FUNC0();
  for(i = 0; i <= max ;i++) FUNC4();
  c1 = FUNC1();

  FUNC0();
  for(i = 0; i <= max ;i++) FUNC4();
  c1 = FUNC1();

  FUNC0();
  for(i = 0; i <= max ;i++) FUNC5();
  c2 = FUNC1();
    
  FUNC0();
  for(i = 0; i <= max ;i++) FUNC6();
  c3 = FUNC1();

  FUNC0();
  for(i = 0; i <= max ;i++) FUNC7();
  c4 = FUNC1();

  FUNC0();
  for(i = 0; i <= max ;i++) FUNC8();
  c5 = FUNC1();

    FUNC0();
    for(i = 0; i <= max ;i++) FUNC9();
    c6 = FUNC1();

    FUNC0();
    for(i = 0; i <= max ;i++) FUNC10();
    c7 = FUNC1();

    for(i = 0; i < 11 ; i++)
    FUNC2("value %lu: %llu %llu %llu %llu %llu %llu\n", i, values1[i], values2[i], values3[i], values4[i], values5[i], values6[i]);
  
  FUNC2("\n\nRESULTS\n");
  FUNC2("test1() in %lu usecs: if-else-if-else-if, simple strcmp() with system strtoull().\n"
         "test2() in %lu usecs: inline simple_hash() if-else-if-else-if, with system strtoull().\n"
         "test3() in %lu usecs: statement expression simple_hash(), system strtoull().\n"
         "test4() in %lu usecs: inline simple_hash(), if-continue checks, system strtoull().\n"
         "test5() in %lu usecs: inline simple_hash(), if-else-if-else-if, custom strtoull() (netdata default prior to ARL).\n"
         "test6() in %lu usecs: adaptive re-sortable list, system strtoull() (wow!)\n"
         "test7() in %lu usecs: adaptive re-sortable list, custom strtoull() (wow!)\n"
         , c1
         , c2
         , c3
         , c4
         , c5
         , c6
         , c7
         );

}