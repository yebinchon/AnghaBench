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
typedef  int ut32 ;
struct disassemble_info {int dummy; } ;
typedef  int bfd_vma ;
typedef  int /*<<< orphan*/  bfd_byte ;

/* Variables and functions */
 int Offset ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ bytes ; 
 int /*<<< orphan*/  bytes_size ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2 (bfd_vma memaddr, bfd_byte *myaddr, ut32 length, struct disassemble_info *info) {
	int delta = (memaddr - Offset);
	if (delta < 0) {
		return -1; // disable backward reads
	}
	if (delta > length) {
		return -1;
	}
	FUNC1 (myaddr, bytes + delta, FUNC0 (length, bytes_size));
	return 0;
}