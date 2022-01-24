#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_2__* grub_partition_t ;
typedef  int /*<<< orphan*/  buf ;
struct TYPE_5__ {scalar_t__ number; TYPE_1__* partmap; struct TYPE_5__* parent; } ;
struct TYPE_4__ {char* name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int) ; 
 char* FUNC3 (char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,char*,char*,scalar_t__) ; 
 char* FUNC5 (char*) ; 
 int FUNC6 (char*) ; 

char *
FUNC7 (const grub_partition_t partition)
{
  char *out = 0;
  int curlen = 0;
  grub_partition_t part;
  for (part = partition; part; part = part->parent)
    {
      /* Even on 64-bit machines this buffer is enough to hold
	 longest number.  */
#ifndef _MSC_VER
	  char buf[FUNC6 (part->partmap->name) + 25];
#else
	  char * buf = grub_malloc(grub_strlen (part->partmap->name) + 25);
#endif
	  int strl;
      FUNC4 (buf, sizeof (buf), "%s%d", part->partmap->name,
		     part->number + 1);
      strl = FUNC6 (buf);
      if (curlen)
	{
	  out = FUNC3 (out, curlen + strl + 2);
	  FUNC2 (out + strl + 1, out, curlen);
	  out[curlen + 1 + strl] = 0;
	  FUNC2 (out, buf, strl);
	  out[strl] = ',';
	  curlen = curlen + 1 + strl;
	}
      else
	{
		if (out){
		  FUNC0(out);
		  out = NULL;
		}
	  curlen = strl;
	  out = FUNC5 (buf);
	}
    }
  return out;
}