#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {char* fmt; } ;
typedef  TYPE_1__ hexagon_operand ;

/* Variables and functions */
 size_t hexagon_operand_count ; 
 TYPE_1__* hexagon_operands ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 

__attribute__((used)) static const hexagon_operand *
FUNC2
(const hexagon_operand *operand, char *suffix)
{
  char buf[100];
  size_t i;

  FUNC0(buf, "%s%s", operand->fmt, suffix);
  for (i = 0; i < hexagon_operand_count; i++) {
    const hexagon_operand *oper = &hexagon_operands[i];
    if (!FUNC1(oper->fmt, buf)) {
      return oper;
    }
  }
  return NULL;
}