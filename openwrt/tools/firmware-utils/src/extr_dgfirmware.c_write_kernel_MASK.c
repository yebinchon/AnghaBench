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
 scalar_t__ KERNEL_SIZE ; 
 int KERNEL_START ; 
 char* app_name ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char*) ; 
 scalar_t__ FUNC4 (unsigned char*,int,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  stderr ; 

void FUNC6(unsigned char* img, const char *fname)
{
  FILE *fp;

  fp = FUNC2(fname, "wb");
  if (fp == NULL) {
    FUNC5(app_name);
    FUNC0(-1);
  }
  
  if (FUNC4(img+KERNEL_START, 1, KERNEL_SIZE, fp) != KERNEL_SIZE) {
    FUNC3(stderr, "%s: can't write kernel file\n", app_name);
    FUNC1(fp);
    FUNC0(-1);
  }
}