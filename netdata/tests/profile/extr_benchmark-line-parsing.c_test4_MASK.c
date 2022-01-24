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
typedef  scalar_t__ uint32_t ;

/* Variables and functions */
 int /*<<< orphan*/  NUMBER1 ; 
 int /*<<< orphan*/  NUMBER10 ; 
 int /*<<< orphan*/  NUMBER11 ; 
 int /*<<< orphan*/  NUMBER2 ; 
 int /*<<< orphan*/  NUMBER3 ; 
 int /*<<< orphan*/  NUMBER4 ; 
 int /*<<< orphan*/  NUMBER5 ; 
 int /*<<< orphan*/  NUMBER6 ; 
 int /*<<< orphan*/  NUMBER7 ; 
 int /*<<< orphan*/  NUMBER8 ; 
 int /*<<< orphan*/  NUMBER9 ; 
 scalar_t__ cache_hash ; 
 scalar_t__ dirty_hash ; 
 scalar_t__ mapped_file_hash ; 
 scalar_t__ pgfault_hash ; 
 scalar_t__ pgmajfault_hash ; 
 scalar_t__ pgpgin_hash ; 
 scalar_t__ pgpgout_hash ; 
 scalar_t__ rss_hash ; 
 scalar_t__ rss_huge_hash ; 
 scalar_t__ FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 char** strings ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ swap_hash ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/ * values4 ; 
 scalar_t__ writeback_hash ; 

void FUNC4() {
  int i;
  for(i = 0; strings[i] ; i++) {
    char *s = strings[i];
    uint32_t hash = FUNC0(s);

    if(FUNC3(hash == cache_hash && !FUNC1(s, "cache"))) {
      values4[i] = FUNC2(NUMBER1, NULL, 0);
      continue;
    }

    if(FUNC3(hash == rss_hash && !FUNC1(s, "rss"))) {
      values4[i] = FUNC2(NUMBER2, NULL, 0);
      continue;
    }
    
    if(FUNC3(hash == rss_huge_hash && !FUNC1(s, "rss_huge"))) {
      values4[i] = FUNC2(NUMBER3, NULL, 0);
      continue;
    }
    
    if(FUNC3(hash == mapped_file_hash && !FUNC1(s, "mapped_file"))) {
      values4[i] = FUNC2(NUMBER4, NULL, 0);
      continue;
    }
    
    if(FUNC3(hash == writeback_hash && !FUNC1(s, "writeback"))) {
      values4[i] = FUNC2(NUMBER5, NULL, 0);
      continue;
    }
    
    if(FUNC3(hash == dirty_hash && !FUNC1(s, "dirty"))) {
      values4[i] = FUNC2(NUMBER6, NULL, 0);
      continue;
    }
    
    if(FUNC3(hash == swap_hash && !FUNC1(s, "swap"))) {
      values4[i] = FUNC2(NUMBER7, NULL, 0);
      continue;
    }
    
    if(FUNC3(hash == pgpgin_hash && !FUNC1(s, "pgpgin"))) {
      values4[i] = FUNC2(NUMBER8, NULL, 0);
      continue;
    }
    
    if(FUNC3(hash == pgpgout_hash && !FUNC1(s, "pgpgout"))) {
      values4[i] = FUNC2(NUMBER9, NULL, 0);
      continue;
    }
    
    if(FUNC3(hash == pgfault_hash && !FUNC1(s, "pgfault"))) {
      values4[i] = FUNC2(NUMBER10, NULL, 0);
      continue;
    }
    
    if(FUNC3(hash == pgmajfault_hash && !FUNC1(s, "pgmajfault"))) {
      values4[i] = FUNC2(NUMBER11, NULL, 0);
      continue;
    }
  }
}