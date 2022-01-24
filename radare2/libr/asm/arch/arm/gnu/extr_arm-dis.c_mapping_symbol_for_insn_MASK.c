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
struct disassemble_info {scalar_t__ symtab_size; int /*<<< orphan*/ * symtab; struct arm_private_data* private_data; } ;
struct arm_private_data {int last_mapping_sym; int has_mapping_symbols; } ;
typedef  enum map_type { ____Placeholder_map_type } map_type ;
typedef  scalar_t__ bfd_vma ;
typedef  scalar_t__ bfd_boolean ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 int MAP_ARM ; 
 int MAP_DATA ; 
 scalar_t__ TRUE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ bfd_target_elf_flavour ; 
 scalar_t__ FUNC2 (struct disassemble_info*,int,int*) ; 

__attribute__((used)) static bfd_boolean
FUNC3 (bfd_vma pc, struct disassemble_info *info,
			 enum map_type *map_symbol)
{
  bfd_vma addr;
  int n, start = 0;
  bfd_boolean found = FALSE;
  enum map_type type = MAP_ARM;
  struct arm_private_data *private_data;

  if (info->private_data == NULL || info->symtab_size == 0 || FUNC0 (*info->symtab) != bfd_target_elf_flavour) {
	  return FALSE;
  }

  private_data = info->private_data;
  if (pc == 0) {
	  start = 0;
  } else {
	  start = private_data->last_mapping_sym;
  }

  start = (start == -1)? 0 : start;
  addr = FUNC1 (info->symtab[start]);

  if (pc >= addr)
    {
	  if (FUNC2 (info, start, &type)) {
		  found = TRUE;
	  }
    }
  else
    {
      for (n = start - 1; n >= 0; n--)
	{
	  if (FUNC2 (info, n, &type))
	    {
	      found = TRUE;
	      break;
	    }
	}
    }

  /* No mapping symbols were found.  A leading $d may be
     omitted for sections which start with data; but for
     compatibility with legacy and stripped binaries, only
     assume the leading $d if there is at least one mapping
     symbol in the file.  */
  if (!found && private_data->has_mapping_symbols == 1)
    {
      type = MAP_DATA;
      found = TRUE;
    }

  *map_symbol = type;
  return found;
}