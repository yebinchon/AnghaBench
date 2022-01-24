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
struct mtd_partition {char* name; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 char* FUNC0 (int,int /*<<< orphan*/ ) ; 
 char** partnames ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,char*,...) ; 

void FUNC2(unsigned int type,
		  unsigned int *typenumeration,
		  struct mtd_partition *part)
{
	char *s  = FUNC0(sizeof(char) * 8, GFP_KERNEL);

	(typenumeration[type])++;
	if (typenumeration[type] == 1)
		FUNC1(s, "%s", partnames[type]);
	else
		FUNC1(s, "%s%d", partnames[type], typenumeration[type]);

	part->name = s;
}