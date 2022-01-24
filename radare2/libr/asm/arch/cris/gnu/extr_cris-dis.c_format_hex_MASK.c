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
struct cris_disasm_data {int dummy; } ;

/* Variables and functions */
 scalar_t__ TRACE_CASE ; 
 unsigned long last_immediate ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,unsigned long) ; 
 int FUNC1 (char*) ; 

__attribute__((used)) static char *
FUNC2 (unsigned long number,
	    char *outbuffer,
	    struct cris_disasm_data *disdata)
{
  /* Truncate negative numbers on >32-bit hosts.  */
  number &= 0xffffffff;

  FUNC0 (outbuffer, "0x%lx", number);

  /* Save this value for the "case" support.  */
  if (TRACE_CASE) {
	  last_immediate = number;
  }

  return outbuffer + FUNC1 (outbuffer);
}