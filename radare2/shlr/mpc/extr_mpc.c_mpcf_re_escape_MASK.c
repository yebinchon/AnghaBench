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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/  (*) (char*)) ; 
 char* FUNC2 () ; 
 char* FUNC3 (char) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 char* FUNC6 (char) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  mpcf_ctor_str ; 
 int /*<<< orphan*/  mpcf_snd ; 

__attribute__((used)) static mpc_val_t *FUNC8(mpc_val_t *x) {
  
  char *s = x;
  mpc_parser_t *p;
  
  /* Regex Special Characters */
  if (s[0] == '.') { FUNC0(s); return FUNC2(); }
  if (s[0] == '^') { FUNC0(s); return FUNC1(2, mpcf_snd, FUNC7(), FUNC5(mpcf_ctor_str), free); }
  if (s[0] == '$') { FUNC0(s); return FUNC1(2, mpcf_snd, FUNC4(), FUNC5(mpcf_ctor_str), free); }
  
  /* Regex Escape */
  if (s[0] == '\\') {
    p = FUNC6(s[1]);
    p = (!p) ? FUNC3(s[1]) : p;
    FUNC0(s);
    return p;
  }
  
  /* Regex Standard */
  p = FUNC3(s[0]);
  FUNC0(s);
  return p;
}