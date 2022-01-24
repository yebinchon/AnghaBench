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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 char* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 

void
FUNC2 (FILE *stream)
{
  FUNC1 (stream, FUNC0("\n\
The following AARCH64 specific disassembler options are supported for use\n\
with the -M switch (multiple options should be separated by commas):\n"));

  FUNC1 (stream, FUNC0("\n\
  no-aliases         Don't print instruction aliases.\n"));

  FUNC1 (stream, FUNC0("\n\
  aliases            Do print instruction aliases.\n"));

  FUNC1 (stream, FUNC0("\n\
  no-notes         Don't print instruction notes.\n"));

  FUNC1 (stream, FUNC0("\n\
  notes            Do print instruction notes.\n"));

#ifdef DEBUG_AARCH64
  fprintf (stream, _("\n\
  debug_dump         Temp switch for debug trace.\n"));
#endif /* DEBUG_AARCH64 */

  FUNC1 (stream, FUNC0("\n"));
}