#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ut8 ;
struct TYPE_6__ {int /*<<< orphan*/  data; } ;
struct TYPE_8__ {TYPE_1__ recv; } ;
struct TYPE_7__ {int /*<<< orphan*/  reg; } ;
typedef  TYPE_2__ RDebug ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int FUNC1 (int,int) ; 
 int buf_size ; 
 int /*<<< orphan*/ * FUNC2 (int,int) ; 
 TYPE_4__* desc ; 
 int /*<<< orphan*/  FUNC3 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (void*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (void*,int /*<<< orphan*/ ,int) ; 
 int FUNC7 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int,int*) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * reg_buf ; 

__attribute__((used)) static int FUNC10 (RDebug *dbg, int type, ut8 *buf, int size) {
	int copy_size;
	int buflen = 0;
	if (!desc) {
		return -1;
	}
	int len = FUNC7 (desc);
	if (len <= 0) {
		return -1;
	}
	// read the len of the current area
	FUNC4 (FUNC8 (dbg->reg, type, &buflen));
	if (size < len) {
		FUNC3 ("r_debug_qnx_reg_read: small buffer %d vs %d\n",
			 (int)size, (int)len);
	}
	copy_size = FUNC1 (len, size);
	buflen = FUNC0 (len, buflen);
	if (reg_buf) {
		if (buf_size < copy_size) {
			ut8 *new_buf = FUNC9 (reg_buf, copy_size);
			if (!new_buf) {
				return -1;
			}
			reg_buf = new_buf;
			buflen = copy_size;
			buf_size = len;
		}
	} else {
		reg_buf = FUNC2 (buflen, 1);
		if (!reg_buf) {
			return -1;
		}
		buf_size = buflen;
	}
	FUNC6 ((void *)(volatile void *) buf, 0, size);
	FUNC5 ((void *)(volatile void *) buf, desc->recv.data, copy_size);
	FUNC6 ((void *)(volatile void *) reg_buf, 0, buflen);
	FUNC5 ((void *)(volatile void *) reg_buf, desc->recv.data, copy_size);

	return len;
}