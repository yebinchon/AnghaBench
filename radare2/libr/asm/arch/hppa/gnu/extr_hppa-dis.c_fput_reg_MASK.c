#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  stream; int /*<<< orphan*/  (* fprintf_func ) (int /*<<< orphan*/ ,char*,char*) ;} ;
typedef  TYPE_1__ disassemble_info ;

/* Variables and functions */
 char** reg_names ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char*) ; 

__attribute__((used)) static void
FUNC1 (unsigned reg, disassemble_info *info)
{
  (*info->fprintf_func) (info->stream, "%s", reg ? reg_names[reg] : "r0");
}