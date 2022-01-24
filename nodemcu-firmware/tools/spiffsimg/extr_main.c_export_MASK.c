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
typedef  scalar_t__ spiffs_file ;
typedef  int /*<<< orphan*/  s32_t ;
typedef  int /*<<< orphan*/  buff ;

/* Variables and functions */
 int O_CREAT ; 
 int O_TRUNC ; 
 int O_WRONLY ; 
 int /*<<< orphan*/  SPIFFS_RDONLY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  fs ; 
 int FUNC5 (char*,int,int) ; 
 scalar_t__ FUNC6 (int,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7 (char *src, char *dst)
{
  spiffs_file fh = FUNC1 (&fs, src, SPIFFS_RDONLY, 0);
  if (fh < 0)
    FUNC4 ("spiffs_open");

  int fd = FUNC5 (dst, O_CREAT | O_TRUNC | O_WRONLY, 0664);
  if (fd < 0)
    FUNC4 (dst);

  char buff[512];
  s32_t n;
  while ((n = FUNC2 (&fs, fh, buff, sizeof (buff))) > 0)
    if (FUNC6 (fd, buff, n) < 0)
      FUNC4 ("write");

  FUNC0 (&fs, fh);
  FUNC3 (fd);
}