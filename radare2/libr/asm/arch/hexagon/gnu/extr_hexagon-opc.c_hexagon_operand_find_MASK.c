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
struct TYPE_5__ {char const* fmt; } ;
typedef  TYPE_1__ hexagon_operand ;

/* Variables and functions */
 char* FUNC0 (scalar_t__) ; 
 size_t hexagon_operand_count ; 
 TYPE_1__ const* hexagon_operands ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*) ; 
 scalar_t__ FUNC4 (char const*) ; 

const hexagon_operand *
FUNC5
(const hexagon_operand *operand, const char *suffix)
{
  size_t i;
  char *buf;

  buf = FUNC0 (FUNC4 (operand->fmt) + FUNC4 (suffix) + 1);
  FUNC3 (buf, operand->fmt);
  FUNC1 (buf, suffix);

  for (i = 0; i < hexagon_operand_count; i++)
    if (!FUNC2 (hexagon_operands [i].fmt, buf))
      return (hexagon_operands + i);

  return NULL;
}