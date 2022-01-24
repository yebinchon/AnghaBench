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
 int KERNEL_SIZE ; 
 int KERNEL_START ; 
 int /*<<< orphan*/  SEEK_END ; 
 char* app_name ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char*) ; 
 int FUNC4 (unsigned char*,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stderr ; 

unsigned char* FUNC9(unsigned char* img, const char *fname)
{
  FILE *fp;
  int size;
  int i;

  for (i=KERNEL_START; i<KERNEL_START+KERNEL_SIZE; i++)
    img[i] = 0xff;

  fp = FUNC2(fname, "rb");
  if (fp == NULL) {
    FUNC7(app_name);
    FUNC0(-1);
  }

  FUNC5(fp, 0, SEEK_END);
  size = FUNC6(fp);
  
  if (size > KERNEL_SIZE) {
    FUNC3(stderr, "%s: kernel binary file is too big\n", app_name);
    FUNC1(fp);
    FUNC0(-1);
  }

  FUNC8(fp);

  if (FUNC4(img+KERNEL_START, 1, size, fp) != size) {
    FUNC3(stderr, "%s: can't read kernel file\n", app_name);
    FUNC1(fp);
    FUNC0(-1);
  }

  FUNC1(fp);
  return img;
}