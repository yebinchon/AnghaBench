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
struct TYPE_3__ {int /*<<< orphan*/  pad; int /*<<< orphan*/  arg_list; int /*<<< orphan*/  parm_count; int /*<<< orphan*/  reserved; int /*<<< orphan*/  call_conv; int /*<<< orphan*/  return_type; } ;
typedef  TYPE_1__ SLF_PROCEDURE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,unsigned int,unsigned char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,unsigned int,int /*<<< orphan*/ ,unsigned char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,unsigned int,int /*<<< orphan*/ ,unsigned char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int,unsigned int,int /*<<< orphan*/ ,unsigned char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (unsigned int,unsigned int,int /*<<< orphan*/ ,unsigned char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ut16 ; 
 int /*<<< orphan*/  ut32 ; 
 int /*<<< orphan*/  ut8 ; 

__attribute__((used)) static int FUNC5(SLF_PROCEDURE *lf_procedure, unsigned char *leaf_data, unsigned int *read_bytes, unsigned int len) {
	unsigned int tmp_before_read_bytes = *read_bytes;

	FUNC4(*read_bytes, len, lf_procedure->return_type, leaf_data, ut32);
	FUNC2(*read_bytes, len, lf_procedure->call_conv, leaf_data, ut8);
	FUNC2(*read_bytes, len, lf_procedure->reserved, leaf_data, ut8);
	FUNC3(*read_bytes, len, lf_procedure->parm_count, leaf_data, ut16);
	FUNC4(*read_bytes, len, lf_procedure->arg_list, leaf_data, ut32);

	FUNC1(*read_bytes, len, lf_procedure->pad, leaf_data, ut8);
	FUNC0(lf_procedure->pad, *read_bytes, leaf_data, len);

	return *read_bytes - tmp_before_read_bytes;
}