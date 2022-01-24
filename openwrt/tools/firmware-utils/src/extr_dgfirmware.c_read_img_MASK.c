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
 int IMG_SIZE ; 
 int /*<<< orphan*/  SEEK_END ; 
 char* app_name ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char*) ; 
 int FUNC4 (unsigned char*,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 unsigned char* FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stderr ; 

unsigned char* FUNC10(const char *fname)
{
  FILE *fp;
  int size;
  unsigned char *img;

  fp = FUNC2(fname, "rb");
  if (fp == NULL) {
    FUNC8(app_name);
    FUNC0(-1);
  }

  FUNC5(fp, 0, SEEK_END);
  size = FUNC6(fp);
  
  if (size != IMG_SIZE) {
    FUNC3(stderr, "%s: image file has wrong size\n", app_name);
    FUNC1(fp);
    FUNC0(-1);
  }

  FUNC9(fp);

  img = FUNC7(IMG_SIZE);
  if (img == NULL) {
    FUNC8(app_name);
    FUNC1(fp);
    FUNC0(-1);
  }

  if (FUNC4(img, 1, IMG_SIZE, fp) != IMG_SIZE) {
    FUNC3(stderr, "%s: can't read image file\n", app_name);
    FUNC1(fp);
    FUNC0(-1);
  }

  FUNC1(fp);
  return img;
}