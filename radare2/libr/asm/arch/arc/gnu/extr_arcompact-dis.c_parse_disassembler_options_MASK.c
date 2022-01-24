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
 scalar_t__ FUNC0 (char const*,char*) ; 
 int enable_insn_stream ; 
 int enable_simd ; 
 char* FUNC1 (char const*,char) ; 

__attribute__((used)) static void
FUNC2 (char *options)
{
  const char *p; 
  for (p = options; p != NULL; )
    {
	  if (FUNC0 (p, "simd"))
	    {
	      enable_simd = 1;
	    }
	  if (FUNC0 (p, "insn-stream"))
	    {
		  enable_insn_stream = 1;
	    }
	  
	  p = FUNC1 (p, ',');

	  if (p != NULL) {
		  p++;
	  }
    }
	
}