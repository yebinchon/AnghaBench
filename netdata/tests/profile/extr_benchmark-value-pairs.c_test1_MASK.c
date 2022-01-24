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
struct TYPE_2__ {char* name; char* value; } ;

/* Variables and functions */
 TYPE_1__* pairs ; 
 int /*<<< orphan*/  FUNC0 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char const*,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/ * values1 ; 

void FUNC3() {
  int i;
  for(i = 0; pairs[i].name ; i++) {
    const char *s = pairs[i].name;
    const char *v = pairs[i].value;

    if(FUNC2(!FUNC0(s, "cache")))
      values1[i] = FUNC1(v, NULL, 10);

    else if(FUNC2(!FUNC0(s, "rss")))
      values1[i] = FUNC1(v, NULL, 10);
    
    else if(FUNC2(!FUNC0(s, "rss_huge")))
      values1[i] = FUNC1(v, NULL, 10);
  
    else if(FUNC2(!FUNC0(s, "mapped_file")))
      values1[i] = FUNC1(v, NULL, 10);
    
    else if(FUNC2(!FUNC0(s, "writeback")))
      values1[i] = FUNC1(v, NULL, 10);
    
    else if(FUNC2(!FUNC0(s, "dirty")))
      values1[i] = FUNC1(v, NULL, 10);
    
    else if(FUNC2(!FUNC0(s, "swap")))
      values1[i] = FUNC1(v, NULL, 10);
    
    else if(FUNC2(!FUNC0(s, "pgpgin")))
      values1[i] = FUNC1(v, NULL, 10);
    
    else if(FUNC2(!FUNC0(s, "pgpgout")))
      values1[i] = FUNC1(v, NULL, 10);
    
    else if(FUNC2(!FUNC0(s, "pgfault")))
      values1[i] = FUNC1(v, NULL, 10);
    
    else if(FUNC2(!FUNC0(s, "pgmajfault")))
      values1[i] = FUNC1(v, NULL, 10);
  }
}