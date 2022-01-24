#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  members; } ;
struct ECPGtype {char* struct_sizeof; TYPE_1__ u; int /*<<< orphan*/  type_name; } ;
struct ECPGstruct_member {int dummy; } ;
typedef  enum ECPGttype { ____Placeholder_ECPGttype } ECPGttype ;

/* Variables and functions */
 struct ECPGtype* FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ECPGstruct_member*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

struct ECPGtype *
FUNC3(struct ECPGstruct_member *rm, enum ECPGttype type, char *type_name, char *struct_sizeof)
{
	struct ECPGtype *ne = FUNC0(type, FUNC2("1"), 0);

	ne->type_name = FUNC2(type_name);
	ne->u.members = FUNC1(rm);
	ne->struct_sizeof = struct_sizeof;

	return ne;
}