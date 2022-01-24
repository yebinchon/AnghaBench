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
struct grub_hfsplus_catkey_internal {int parent; int /*<<< orphan*/  name; } ;
struct grub_hfsplus_key_internal {struct grub_hfsplus_catkey_internal catkey; } ;
struct grub_hfsplus_catkey {int namelen; int* name; int /*<<< orphan*/  parent; } ;
struct grub_hfsplus_key {struct grub_hfsplus_catkey catkey; } ;
typedef  int /*<<< orphan*/  grub_uint8_t ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 char* FUNC4 (int) ; 
 int FUNC5 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int*,int) ; 

__attribute__((used)) static int
FUNC7 (struct grub_hfsplus_key *keya,
			 struct grub_hfsplus_key_internal *keyb)
{
  struct grub_hfsplus_catkey *catkey_a = &keya->catkey;
  struct grub_hfsplus_catkey_internal *catkey_b = &keyb->catkey;
  char *filename;
  int i;
  int diff;

  diff = FUNC1 (catkey_a->parent) - catkey_b->parent;
  if (diff)
    return diff;

  /* Change the filename in keya so the endianness is correct.  */
  for (i = 0; i < FUNC0 (catkey_a->namelen); i++)
    catkey_a->name[i] = FUNC0 (catkey_a->name[i]);

  filename = FUNC4 (FUNC0 (catkey_a->namelen) + 1);

  if (! FUNC6 ((grub_uint8_t *) filename, catkey_a->name,
			    FUNC0 (catkey_a->namelen)))
    return -1; /* XXX: This error never occurs, but in case it happens
		  just skip this entry.  */

  diff = FUNC5 (filename, catkey_b->name,
		       FUNC0 (catkey_a->namelen));

  FUNC3 (filename);

  /* The endianness was changed to host format, change it back to
     whatever it was.  */
  for (i = 0; i < FUNC0 (catkey_a->namelen); i++)
    catkey_a->name[i] = FUNC2 (catkey_a->name[i]);
  return diff;
}