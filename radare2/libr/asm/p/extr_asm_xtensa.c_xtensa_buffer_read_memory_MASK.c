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
typedef  scalar_t__ ut32 ;
struct disassemble_info {int dummy; } ;
typedef  int /*<<< orphan*/  bfd_vma ;
typedef  int /*<<< orphan*/  bfd_byte ;

/* Variables and functions */
 scalar_t__ INSN_BUFFER_SIZE ; 
 int /*<<< orphan*/  bytes ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC1 (bfd_vma memaddr, bfd_byte *myaddr, ut32 length, struct disassemble_info *info) {
	if (length > INSN_BUFFER_SIZE) {
		length = INSN_BUFFER_SIZE;
	}
	FUNC0 (myaddr, bytes, length);
	return 0;
}