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
typedef  char mpc_parser_t ;

/* Variables and functions */
 char* FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (char*) ; 
 char* FUNC3 (char*) ; 
 char* FUNC4 (char*) ; 
 char* FUNC5 (char const) ; 
 char* FUNC6 (char*,int) ; 
 int /*<<< orphan*/  FUNC7 (char*,char const*) ; 
 int FUNC8 (char const*) ; 

__attribute__((used)) static mpc_val_t *FUNC9(mpc_val_t *x) {
  
  mpc_parser_t *out;
  size_t i, j;
  size_t start, end;
  const char *tmp = NULL;
  const char *s = x;
  int comp = s[0] == '^' ? 1 : 0;
  char *range;
  
  if (s[0] == '\0') { FUNC1(x); return FUNC2("Invalid Regex Range Expression"); } 
  if (s[0] == '^' && 
      s[1] == '\0') { FUNC1(x); return FUNC2("Invalid Regex Range Expression"); }
  
  range = FUNC0(1,1);

  for (i = comp; i < FUNC8(s); i++){
    
    /* Regex Range Escape */
    if (s[i] == '\\') {
      tmp = FUNC5(s[i+1]);
      if (tmp != NULL) {
        range = FUNC6(range, FUNC8(range) + FUNC8(tmp) + 1);
        FUNC7(range, tmp);
      } else {
        range = FUNC6(range, FUNC8(range) + 1 + 1);
        range[FUNC8(range) + 1] = '\0';
        range[FUNC8(range) + 0] = s[i+1];      
      }
      i++;
    }
    
    /* Regex Range...Range */
    else if (s[i] == '-') {
      if (s[i+1] == '\0' || i == 0) {
          range = FUNC6(range, FUNC8(range) + FUNC8("-") + 1);
          FUNC7(range, "-");
      } else {
        start = s[i-1]+1;
        end = s[i+1]-1;
        for (j = start; j <= end; j++) {
          range = FUNC6(range, FUNC8(range) + 1 + 1 + 1);
          range[FUNC8(range) + 1] = '\0';
          range[FUNC8(range) + 0] = j;
        }        
      }
    }
    
    /* Regex Range Normal */
    else {
      range = FUNC6(range, FUNC8(range) + 1 + 1);
      range[FUNC8(range) + 1] = '\0';
      range[FUNC8(range) + 0] = s[i];
    }
  
  }
  
  out = comp == 1 ? FUNC3(range) : FUNC4(range);
  
  FUNC1(x);
  FUNC1(range);
  
  return out;
}