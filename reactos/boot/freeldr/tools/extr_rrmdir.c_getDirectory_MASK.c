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
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,int) ; 
 char const* FUNC2 (char const*,char) ; 

void
FUNC3 (const char *filename, char * directorySpec)
{
  int  lengthOfDirectory;

  if (FUNC2 (filename, '/') != 0)
  {
    lengthOfDirectory = FUNC2 (filename, '/') - filename;
    FUNC1 (directorySpec, filename, lengthOfDirectory);
    directorySpec [lengthOfDirectory] = '\0';
  }
  else
  {
    FUNC0 (directorySpec, ".");
  }
}