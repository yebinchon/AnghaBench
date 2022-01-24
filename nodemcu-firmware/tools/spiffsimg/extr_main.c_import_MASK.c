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
 int /*<<< orphan*/  O_RDONLY ; 
 int SPIFFS_CREAT ; 
 int SPIFFS_TRUNC ; 
 int SPIFFS_WRONLY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,scalar_t__,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  fs ; 
 int FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int,char*,int) ; 

__attribute__((used)) static void FUNC7 (char *src, char *dst)
{
  int fd = FUNC5 (src, O_RDONLY);
  if (fd < 0)
    FUNC4 (src);

  spiffs_file fh = FUNC1 (&fs, dst, SPIFFS_CREAT | SPIFFS_TRUNC | SPIFFS_WRONLY, 0);
  if (fh < 0)
    FUNC4 ("spiffs_open");

  char buff[16384];
  s32_t n;
  while ((n = FUNC6 (fd, buff, sizeof (buff))) > 0)
    if (FUNC2 (&fs, fh, buff, n) < 0)
      FUNC4 ("spiffs_write");

  if (FUNC0 (&fs, fh) < 0)
    FUNC4("spiffs_close");
  FUNC3 (fd);
}