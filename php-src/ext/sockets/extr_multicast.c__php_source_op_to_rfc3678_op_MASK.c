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
typedef  enum source_op { ____Placeholder_source_op } source_op ;

/* Variables and functions */
#define  BLOCK_SOURCE 131 
#define  JOIN_SOURCE 130 
#define  LEAVE_SOURCE 129 
 int MCAST_BLOCK_SOURCE ; 
 int MCAST_JOIN_SOURCE_GROUP ; 
 int MCAST_LEAVE_SOURCE_GROUP ; 
 int MCAST_UNBLOCK_SOURCE ; 
#define  UNBLOCK_SOURCE 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1(enum source_op sop)
{
	switch (sop) {
	case JOIN_SOURCE:
		return MCAST_JOIN_SOURCE_GROUP;
	case LEAVE_SOURCE:
		return MCAST_LEAVE_SOURCE_GROUP;
	case BLOCK_SOURCE:
		return MCAST_BLOCK_SOURCE;
	case UNBLOCK_SOURCE:
		return MCAST_UNBLOCK_SOURCE;
	}

	FUNC0(0);
	return 0;
}