#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ bufferedTuples; scalar_t__ bufferedBytes; } ;
typedef  TYPE_1__ CopyMultiInsertInfo ;

/* Variables and functions */
 scalar_t__ MAX_BUFFERED_BYTES ; 
 scalar_t__ MAX_BUFFERED_TUPLES ; 

__attribute__((used)) static inline bool
FUNC0(CopyMultiInsertInfo *miinfo)
{
	if (miinfo->bufferedTuples >= MAX_BUFFERED_TUPLES ||
		miinfo->bufferedBytes >= MAX_BUFFERED_BYTES)
		return true;
	return false;
}