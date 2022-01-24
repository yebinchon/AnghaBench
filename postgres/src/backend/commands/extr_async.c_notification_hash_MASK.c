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
typedef  int /*<<< orphan*/  uint32 ;
struct TYPE_2__ {scalar_t__ payload_len; scalar_t__ channel_len; scalar_t__ data; } ;
typedef  int Size ;
typedef  TYPE_1__ Notification ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char const*,scalar_t__) ; 

__attribute__((used)) static uint32
FUNC3(const void *key, Size keysize)
{
	const Notification *k = *(const Notification *const *) key;

	FUNC0(keysize == sizeof(Notification *));
	/* We don't bother to include the payload's trailing null in the hash */
	return FUNC1(FUNC2((const unsigned char *) k->data,
								   k->channel_len + k->payload_len + 1));
}