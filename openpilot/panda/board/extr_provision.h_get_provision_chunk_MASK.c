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
typedef  char uint8_t ;

/* Variables and functions */
 int PROVISION_CHUNK_LEN ; 
 scalar_t__ FUNC0 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int) ; 

void FUNC2(uint8_t *resp) {
  (void)FUNC1(resp, (uint8_t *)0x1fff79e0, PROVISION_CHUNK_LEN);
  if (FUNC0(resp, "\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff", 0x20) == 0) {
    (void)FUNC1(resp, "unprovisioned\x00\x00\x00testing123\x00\x00\xa3\xa6\x99\xec", 0x20);
  }
}