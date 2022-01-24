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
typedef  int mrb_bool ;

/* Variables and functions */
 int FALSE ; 
 int TRUE ; 
 char* FUNC0 (char const*,char) ; 
 int /*<<< orphan*/  FUNC1 (char const*,char const*) ; 
 scalar_t__ FUNC2 (char const*,char const*,int) ; 

__attribute__((used)) static mrb_bool
FUNC3(const char *pattern, const char *cmd)
{
  const char *lbracket, *rbracket, *p, *q;

  if (pattern == NULL && cmd == NULL) {
    return TRUE;
  }
  if (pattern == NULL || cmd == NULL) {
    return FALSE;
  }
  if ((lbracket = FUNC0(pattern, '[')) == NULL) {
    return !FUNC1(pattern, cmd);
  }
  if ((rbracket = FUNC0(pattern, ']')) == NULL) {
    return FALSE;
  }
  if (FUNC2(pattern, cmd, lbracket - pattern)) {
    return FALSE;
  }

  p = lbracket + 1;
  q = (char *)cmd + (lbracket - pattern);

  for ( ; p < rbracket && *q != '\0'; p++, q++) {
    if (*p != *q) {
      break;
    }
  }
  return *q == '\0';
}