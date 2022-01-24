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
struct cronent_desc {void* dow; void* mon; void* dom; void* hour; void* min; } ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ *,char*,char**,int,int) ; 
 int FUNC1 (int /*<<< orphan*/ *,char*,int) ; 

__attribute__((used)) static int FUNC2(lua_State *L, char *str, struct cronent_desc *desc) {
  char *s = str;
  desc->min = FUNC0(L, s, &s, 0, 59);
  if (*s != ' ' && *s != '\t') return FUNC1(L, "invalid spec (separator @%d)", s - str);
  desc->hour = FUNC0(L, s + 1, &s, 0, 23);
  if (*s != ' ' && *s != '\t') return FUNC1(L, "invalid spec (separator @%d)", s - str);
  desc->dom = FUNC0(L, s + 1, &s, 1, 31);
  if (*s != ' ' && *s != '\t') return FUNC1(L, "invalid spec (separator @%d)", s - str);
  desc->mon = FUNC0(L, s + 1, &s, 1, 12);
  if (*s != ' ' && *s != '\t') return FUNC1(L, "invalid spec (separator @%d)", s - str);
  desc->dow = FUNC0(L, s + 1, &s, 0, 6);
  while (*s != '\0' && (*s == ' ' || *s == '\t')) {
    s++;
  }
  if (*s != 0) return FUNC1(L, "invalid spec (trailing @%d)", s - str);
  return 0;
}