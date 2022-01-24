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
typedef  scalar_t__ uint32_t ;
struct TYPE_2__ {char* name; char* value; } ;

/* Variables and functions */
 scalar_t__ cache_hash ; 
 scalar_t__ dirty_hash ; 
 scalar_t__ mapped_file_hash ; 
 TYPE_1__* pairs ; 
 scalar_t__ pgfault_hash ; 
 scalar_t__ pgmajfault_hash ; 
 scalar_t__ pgpgin_hash ; 
 scalar_t__ pgpgout_hash ; 
 scalar_t__ rss_hash ; 
 scalar_t__ rss_huge_hash ; 
 scalar_t__ FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char const*,int /*<<< orphan*/ *,int) ; 
 scalar_t__ swap_hash ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/ * values2 ; 
 scalar_t__ writeback_hash ; 

void FUNC4() {
    int i;
    for(i = 0; pairs[i].name ; i++) {
        const char *s = pairs[i].name;
        const char *v = pairs[i].value;

    uint32_t hash = FUNC0(s);

    if(FUNC3(hash == cache_hash && !FUNC1(s, "cache")))
      values2[i] = FUNC2(v, NULL, 10);
    
    else if(FUNC3(hash == rss_hash && !FUNC1(s, "rss")))
      values2[i] = FUNC2(v, NULL, 10);
    
    else if(FUNC3(hash == rss_huge_hash && !FUNC1(s, "rss_huge")))
      values2[i] = FUNC2(v, NULL, 10);
    
    else if(FUNC3(hash == mapped_file_hash && !FUNC1(s, "mapped_file")))
      values2[i] = FUNC2(v, NULL, 10);
    
    else if(FUNC3(hash == writeback_hash && !FUNC1(s, "writeback")))
      values2[i] = FUNC2(v, NULL, 10);
    
    else if(FUNC3(hash == dirty_hash && !FUNC1(s, "dirty")))
      values2[i] = FUNC2(v, NULL, 10);
    
    else if(FUNC3(hash == swap_hash && !FUNC1(s, "swap")))
      values2[i] = FUNC2(v, NULL, 10);
  
    else if(FUNC3(hash == pgpgin_hash && !FUNC1(s, "pgpgin")))
      values2[i] = FUNC2(v, NULL, 10);
    
    else if(FUNC3(hash == pgpgout_hash && !FUNC1(s, "pgpgout")))
      values2[i] = FUNC2(v, NULL, 10);
    
    else if(FUNC3(hash == pgfault_hash && !FUNC1(s, "pgfault")))
      values2[i] = FUNC2(v, NULL, 10);
    
    else if(FUNC3(hash == pgmajfault_hash && !FUNC1(s, "pgmajfault")))
      values2[i] = FUNC2(v, NULL, 10);
  }
}