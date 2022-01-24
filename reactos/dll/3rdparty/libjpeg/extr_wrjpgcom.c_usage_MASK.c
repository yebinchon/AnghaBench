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
 int /*<<< orphan*/  EXIT_FAILURE ; 
 scalar_t__ MAX_COM_LENGTH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 char* progname ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void
FUNC2 (void)
/* complain about bad command line */
{
  FUNC1(stderr, "wrjpgcom inserts a textual comment in a JPEG file.\n");
  FUNC1(stderr, "You can add to or replace any existing comment(s).\n");

  FUNC1(stderr, "Usage: %s [switches] ", progname);
#ifdef TWO_FILE_COMMANDLINE
  fprintf(stderr, "inputfile outputfile\n");
#else
  FUNC1(stderr, "[inputfile]\n");
#endif

  FUNC1(stderr, "Switches (names may be abbreviated):\n");
  FUNC1(stderr, "  -replace         Delete any existing comments\n");
  FUNC1(stderr, "  -comment \"text\"  Insert comment with given text\n");
  FUNC1(stderr, "  -cfile name      Read comment from named file\n");
  FUNC1(stderr, "Notice that you must put quotes around the comment text\n");
  FUNC1(stderr, "when you use -comment.\n");
  FUNC1(stderr, "If you do not give either -comment or -cfile on the command line,\n");
  FUNC1(stderr, "then the comment text is read from standard input.\n");
  FUNC1(stderr, "It can be multiple lines, up to %u characters total.\n",
	  (unsigned int) MAX_COM_LENGTH);
#ifndef TWO_FILE_COMMANDLINE
  FUNC1(stderr, "You must specify an input JPEG file name when supplying\n");
  FUNC1(stderr, "comment text from standard input.\n");
#endif

  FUNC0(EXIT_FAILURE);
}