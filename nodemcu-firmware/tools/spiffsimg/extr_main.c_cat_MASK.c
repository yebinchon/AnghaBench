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
typedef  int /*<<< orphan*/  spiffs_file ;
typedef  int /*<<< orphan*/  s32_t ;
typedef  int /*<<< orphan*/  buff ;

/* Variables and functions */
 int /*<<< orphan*/  SPIFFS_RDONLY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  STDOUT_FILENO ; 
 int /*<<< orphan*/  fs ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4 (char *fname)
{
  spiffs_file fh = FUNC1 (&fs, fname, SPIFFS_RDONLY, 0);
  char buff[512];
  s32_t n;
  while ((n = FUNC2 (&fs, fh, buff, sizeof (buff))) > 0)
    FUNC3 (STDOUT_FILENO, buff, n);
  FUNC0 (&fs, fh);
}