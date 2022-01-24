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
struct TYPE_2__ {size_t line_position; char* line; int done; } ;

/* Variables and functions */
 size_t LUA_MAXINPUT ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 TYPE_1__ gLoad ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,size_t) ; 

int FUNC2(const char *s, size_t l) {
  if (s == NULL || ++l > LUA_MAXINPUT || gLoad.line_position > 0)
    return 0;
  FUNC1(gLoad.line, s, l);
  gLoad.line[l] = '\0';
  gLoad.line_position = l;
  gLoad.done = 1;
  FUNC0("Get command: %s\n", gLoad.line);
  return 1;
}