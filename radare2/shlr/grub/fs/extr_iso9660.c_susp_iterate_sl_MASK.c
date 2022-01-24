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
struct grub_iso9660_susp_entry {int /*<<< orphan*/  len; scalar_t__ sig; } ;
struct grub_iso9660_read_symlink_closure {int addslash; } ;
typedef  scalar_t__ grub_err_t ;

/* Variables and functions */
 unsigned char* FUNC0 (struct grub_iso9660_susp_entry*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,struct grub_iso9660_read_symlink_closure*) ; 
 scalar_t__ grub_errno ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (char*,char*,int) ; 

__attribute__((used)) static grub_err_t
FUNC4 (struct grub_iso9660_susp_entry *entry, void *closure)
{
  struct grub_iso9660_read_symlink_closure *c = closure;

  if (FUNC3 ("SL", (char *) entry->sig, 2) == 0)
    {
      unsigned int pos = 1;

      /* The symlink is not stored as a POSIX symlink, translate it.  */
      while (pos < FUNC2 (entry->len))
	{
	  if (c->addslash)
	    {
	      FUNC1 ("/", 1, c);
	      c->addslash = 0;
	    }

          unsigned char *data = FUNC0(entry);
	  /* The current position is the `Component Flag'.  */
	  switch (data[pos] & 30)
	    {
	    case 0:
	      {
		/* The data on pos + 2 is the actual data, pos + 1
		   is the length.  Both are part of the `Component
		   Record'.  */
		FUNC1 ((char *) &data[pos + 2],
			  data[pos + 1], c);
		if ((data[pos] & 1))
		  c->addslash = 1;

		break;
	      }

	    case 2:
	      FUNC1 ("./", 2, c);
	      break;

	    case 4:
	      FUNC1 ("../", 3, c);
	      break;

	    case 8:
	      FUNC1 ("/", 1, c);
	      break;
	    }
	  /* In pos + 1 the length of the `Component Record' is
	     stored.  */
	  pos += data[pos + 1] + 2;
	}

      /* Check if `grub_realloc' failed.  */
      if (grub_errno)
	return grub_errno;
    }

  return 0;
}