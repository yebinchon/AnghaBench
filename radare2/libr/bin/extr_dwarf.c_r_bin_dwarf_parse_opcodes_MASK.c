#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ ut8 ;
struct TYPE_6__ {scalar_t__ opcode_base; } ;
typedef  int /*<<< orphan*/  RBinDwarfSMRegisters ;
typedef  TYPE_1__ RBinDwarfLNPHeader ;
typedef  int /*<<< orphan*/  RBin ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ DW_LNE_end_sequence ; 
 scalar_t__* FUNC0 (int /*<<< orphan*/  const*,scalar_t__ const*,size_t,TYPE_1__ const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 scalar_t__* FUNC1 (int /*<<< orphan*/  const*,scalar_t__ const*,size_t,TYPE_1__ const*,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ *,int) ; 
 scalar_t__* FUNC2 (int /*<<< orphan*/  const*,scalar_t__ const*,size_t,TYPE_1__ const*,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static const ut8* FUNC3(const RBin *a, const ut8 *obuf,
		size_t len, const RBinDwarfLNPHeader *hdr,
		RBinDwarfSMRegisters *regs, FILE *f, int mode) {
	const ut8 *buf, *buf_end;
	ut8 opcode, ext_opcode;

	if (!a || !obuf || len < 8) {
		return NULL;
	}
	buf = obuf;
	buf_end = obuf + len;

	while (buf && buf + 1 < buf_end) {
		opcode = *buf++;
		len--;
		if (!opcode) {
			ext_opcode = *buf;
			buf = FUNC0 (a, buf, len, hdr, regs, f, mode);
			if (ext_opcode == DW_LNE_end_sequence) {
				break;
			}
		} else if (opcode >= hdr->opcode_base) {
			buf = FUNC1 (a, buf, len, hdr, regs, opcode, f, mode);
		} else {
			buf = FUNC2 (a, buf, len, hdr, regs, opcode, f, mode);
		}
		len = (int)(buf_end - buf);
	}
	return buf;
}