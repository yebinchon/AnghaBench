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
typedef  int /*<<< orphan*/  hexagon_opcode ;

/* Variables and functions */
 size_t FUNC0 (char const*) ; 
 int /*<<< orphan*/  const** opcode_map ; 

const hexagon_opcode *
FUNC1
(const char *insn)
{
  return (opcode_map [FUNC0 (insn)]);
}