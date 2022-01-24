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
typedef  int AclMode ;

/* Variables and functions */
#define  ACL_CONNECT 139 
#define  ACL_CREATE 138 
#define  ACL_CREATE_TEMP 137 
#define  ACL_DELETE 136 
#define  ACL_EXECUTE 135 
#define  ACL_INSERT 134 
#define  ACL_REFERENCES 133 
#define  ACL_SELECT 132 
#define  ACL_TRIGGER 131 
#define  ACL_TRUNCATE 130 
#define  ACL_UPDATE 129 
#define  ACL_USAGE 128 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static const char *
FUNC1(AclMode privilege)
{
	switch (privilege)
	{
		case ACL_INSERT:
			return "INSERT";
		case ACL_SELECT:
			return "SELECT";
		case ACL_UPDATE:
			return "UPDATE";
		case ACL_DELETE:
			return "DELETE";
		case ACL_TRUNCATE:
			return "TRUNCATE";
		case ACL_REFERENCES:
			return "REFERENCES";
		case ACL_TRIGGER:
			return "TRIGGER";
		case ACL_EXECUTE:
			return "EXECUTE";
		case ACL_USAGE:
			return "USAGE";
		case ACL_CREATE:
			return "CREATE";
		case ACL_CREATE_TEMP:
			return "TEMP";
		case ACL_CONNECT:
			return "CONNECT";
		default:
			FUNC0(ERROR, "unrecognized privilege: %d", (int) privilege);
	}
	return NULL;				/* appease compiler */
}