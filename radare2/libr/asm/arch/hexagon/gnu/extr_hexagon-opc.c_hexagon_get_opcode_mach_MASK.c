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

/* Variables and functions */
 int HEXAGON_CPU_TYPE_UNINIT ; 
 int HEXAGON_MACH_BIG ; 
#define  HEXAGON_MACH_V2 131 
#define  HEXAGON_MACH_V3 130 
#define  HEXAGON_MACH_V4 129 
#define  HEXAGON_MACH_V5 128 
 int bfd_mach_hexagon_v2 ; 
 int bfd_mach_hexagon_v5 ; 

int
FUNC0
(int bfd_mach, int big_p)
{
#if 0
  static int mach_type_map [] =
  {
    HEXAGON_MACH_V2,
    HEXAGON_MACH_V3,
    HEXAGON_MACH_V4,
    HEXAGON_MACH_V5,
    /* Leaving space for future cores */
  };
#endif
// v6 not supported :(
// XXX hardcoded to v5
return HEXAGON_MACH_V5;

#if 0
  // RK: Handle cases when bfd_mach is not correctly set
  if (bfd_mach < bfd_mach_hexagon_v2 || bfd_mach > bfd_mach_hexagon_v5)
    return HEXAGON_CPU_TYPE_UNINIT;

  return (mach_type_map [bfd_mach - bfd_mach_hexagon_v2]
          | (big_p? HEXAGON_MACH_BIG: 0));
#endif
}