#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int num_formats; TYPE_1__* formats; } ;
typedef  TYPE_2__ xtensa_isa_internal ;
typedef  scalar_t__ xtensa_isa ;
typedef  int xtensa_format ;
struct TYPE_3__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int XTENSA_UNDEFINED ; 
 scalar_t__ FUNC0 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  xtensa_isa_bad_format ; 
 int /*<<< orphan*/  xtisa_errno ; 
 int /*<<< orphan*/  xtisa_error_msg ; 

xtensa_format
FUNC3 (xtensa_isa isa, const char *fmtname)
{
  xtensa_isa_internal *intisa = (xtensa_isa_internal *) isa;
  int fmt;

  if (!fmtname || !*fmtname)
    {
      xtisa_errno = xtensa_isa_bad_format;
      FUNC2 (xtisa_error_msg, "invalid format name");
      return XTENSA_UNDEFINED;
    }

  for (fmt = 0; fmt < intisa->num_formats; fmt++)
    {
	  if (FUNC0 (fmtname, intisa->formats[fmt].name) == 0) {
		  return fmt;
	  }
    }

  xtisa_errno = xtensa_isa_bad_format;
  FUNC1 (xtisa_error_msg, "format \"%s\" not recognized", fmtname);
  return XTENSA_UNDEFINED;
}