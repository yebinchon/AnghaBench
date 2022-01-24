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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 

__attribute__((used)) static void FUNC1() {
	FUNC0("Usage:\n");
	FUNC0("\t-i file\t\t\t\tinput TRX file\n");
	FUNC0("\t-o file\t\t\t\toutput Asus TRX file\n");
	FUNC0("\t-p productid\t\t\tproduct (device) ID\n");
	FUNC0("\t-v version\t\t\tfirmware version formatted with 4 digits like: 1.2.3.4\n");
}