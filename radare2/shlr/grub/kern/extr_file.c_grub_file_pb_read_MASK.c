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
typedef  scalar_t__ grub_ssize_t ;
typedef  int grub_size_t ;
typedef  int /*<<< orphan*/  grub_file_t ;

/* Variables and functions */
 int GRUB_FILE_PB_MIN_SIZE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,char*,int) ; 

grub_ssize_t
FUNC4 (grub_file_t file, void *b, grub_size_t len, int total)
{
  grub_ssize_t ret;
  grub_size_t bsize;
  int num;
  char *buf = b;

  if ((len < GRUB_FILE_PB_MIN_SIZE) || (total == 0))
    return FUNC3 (file, buf, len);

  ret = 0;
  if (&grub_file_pb_init)
    FUNC1 ();

  bsize = ((len / total) + 511) & (~511);
  num = 0;
  while (len > 0)
    {
      grub_size_t n;
      grub_ssize_t r;

      FUNC2 (num, total);

      n = (len > bsize) ? bsize : len;
      r = FUNC3 (file, buf, n);
      if (r <= 0)
	{
	  if (ret == 0)
	    ret = -1;
	  break;
	}

      buf += r;
      len -= r;
      ret += r;
      num++;
    }

  if (&grub_file_pb_fini)
    FUNC0 ();
  return ret;
}