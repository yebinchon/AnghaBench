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
typedef  char mpc_val_t ;

/* Variables and functions */
 char* FUNC0 (int,int) ; 
 char* FUNC1 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*) ; 
 scalar_t__ FUNC3 (char const*) ; 

__attribute__((used)) static mpc_val_t *FUNC4(mpc_val_t *x, const char *input, const char **output) {
  
  int i;
  int found;
  char buff[2];
  char *s = x;
  char *y = FUNC0(1, 1);
  
  while (*s) {
    
    i = 0;
    found = 0;

    while (output[i]) {
      if (*s == input[i]) {
        y = FUNC1(y, FUNC3(y) + FUNC3(output[i]) + 1);
        FUNC2(y, output[i]);
        found = 1;
        break;
      }
      i++;
    }
    
    if (!found) {
      y = FUNC1(y, FUNC3(y) + 2);
      buff[0] = *s; buff[1] = '\0';
      FUNC2(y, buff);
    }
    
    s++;
  }
  
  
  return y;
}