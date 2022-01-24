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
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 char** strings ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/ * values1 ; 

void FUNC3() {
  int i;
  for(i = 0; strings[i] ; i++) {
    char *s = strings[i];

    if(FUNC2(!FUNC0(s, "cache")))
      values1[i] = FUNC1(NUMBER1, NULL, 10);

    else if(FUNC2(!FUNC0(s, "rss")))
      values1[i] = FUNC1(NUMBER2, NULL, 10);
    
    else if(FUNC2(!FUNC0(s, "rss_huge")))
      values1[i] = FUNC1(NUMBER3, NULL, 10);
  
    else if(FUNC2(!FUNC0(s, "mapped_file")))
      values1[i] = FUNC1(NUMBER4, NULL, 10);
    
    else if(FUNC2(!FUNC0(s, "writeback")))
      values1[i] = FUNC1(NUMBER5, NULL, 10);
    
    else if(FUNC2(!FUNC0(s, "dirty")))
      values1[i] = FUNC1(NUMBER6, NULL, 10);
    
    else if(FUNC2(!FUNC0(s, "swap")))
      values1[i] = FUNC1(NUMBER7, NULL, 10);
    
    else if(FUNC2(!FUNC0(s, "pgpgin")))
      values1[i] = FUNC1(NUMBER8, NULL, 10);
    
    else if(FUNC2(!FUNC0(s, "pgpgout")))
      values1[i] = FUNC1(NUMBER9, NULL, 10);
    
    else if(FUNC2(!FUNC0(s, "pgfault")))
      values1[i] = FUNC1(NUMBER10, NULL, 10);
    
    else if(FUNC2(!FUNC0(s, "pgmajfault")))
      values1[i] = FUNC1(NUMBER11, NULL, 10);
  }
}