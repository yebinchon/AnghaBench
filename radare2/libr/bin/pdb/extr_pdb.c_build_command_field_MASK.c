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
typedef  int ELeafType ;

/* Variables and functions */
#define  eLF_ENUM 130 
#define  eLF_STRUCTURE 129 
#define  eLF_UNION 128 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

void FUNC3(ELeafType lt, char **command_field) {
	switch (lt) {
	case eLF_STRUCTURE:
	case eLF_UNION:
		*command_field = (char *) FUNC0 (FUNC2 ("\"pf.") + 1);
		if (!(*command_field)) {
			break;
		}
		FUNC1 (*command_field, "\"pf.");
		break;
	case eLF_ENUM:
		*command_field = (char *) FUNC0 (FUNC2 ("\"td enum ") + 1);
		if (!(*command_field)) {
			break;
		}
		FUNC1 (*command_field, "\"td enum ");
		break;
	default:
		break;
	}
}