#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ut8 ;
typedef  scalar_t__ ut64 ;
typedef  int ut32 ;
typedef  int /*<<< orphan*/  ut16 ;
struct TYPE_19__ {int /*<<< orphan*/  tag; } ;
struct TYPE_18__ {int /*<<< orphan*/  loadaddr; } ;
struct TYPE_17__ {int /*<<< orphan*/  io; TYPE_1__* file; } ;
struct TYPE_16__ {int /*<<< orphan*/  fd; } ;
typedef  TYPE_2__ RCore ;
typedef  TYPE_3__ RBinJavaObj ;
typedef  TYPE_4__ RBinJavaCPTypeObj ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,int*,int /*<<< orphan*/  const*,scalar_t__ const) ; 
 int FUNC6 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC7 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int FUNC8 (TYPE_2__*,TYPE_3__*,int /*<<< orphan*/ *,scalar_t__) ; 
 int FUNC9 (TYPE_2__*,scalar_t__,int) ; 
 scalar_t__ FUNC10 (TYPE_2__*,scalar_t__,int) ; 
 scalar_t__ FUNC11 (TYPE_2__*,scalar_t__,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC12 (TYPE_2__*,scalar_t__,int /*<<< orphan*/  const*,int) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ) ; 
 int FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC17 (RCore *core, RBinJavaObj *obj, ut16 idx, ut64 addr, const ut8 * buf, const ut64 len) {
	int res = false;
	RBinJavaCPTypeObj *cp_obj = FUNC7 (obj, idx);
	ut64 c_file_sz = FUNC15 (core->io);
	ut32 n_sz = 0, c_sz = obj ? FUNC6 (obj, idx): -1;
	ut8 * bytes = NULL;

	if (c_sz == -1) {
		return res;
	}

	bytes = FUNC5 (cp_obj->tag, &n_sz, buf, len);

	if (n_sz < c_sz) {
		res = FUNC11 (core, addr+c_sz, 0, (int)n_sz - (int)c_sz) &&
		FUNC14(core->io, c_file_sz + (int) n_sz - (int) c_sz);
	} else if (n_sz > c_sz) {
		res = FUNC9(core, addr,  (int)n_sz - (int)c_sz);
	} else {
		FUNC1 ("[X] r_cmd_java_get_cp_bytes_and_write: Failed to resize the file correctly aborting.\n");
		return res;
	}

	if (n_sz > 0 && bytes) {
		res = FUNC12(core, addr, (const ut8 *)bytes, n_sz) && FUNC10 (core, addr, 1);
	}

	if (res == false) {
		FUNC1 ("[X] r_cmd_java_get_cp_bytes_and_write: Failed to write the bytes to the file correctly aborting.\n");
		return res;
	}

	FUNC0 (bytes);

	if (res == true) {
		ut64 n_file_sz = 0;
		ut8 * bin_buffer = NULL;
		res = FUNC16 (core->io, core->file->fd);
		n_file_sz = FUNC15 (core->io);
		bin_buffer = n_file_sz > 0 ? FUNC3 (n_file_sz) : NULL;
		if (bin_buffer) {
			FUNC4 (bin_buffer, 0, n_file_sz);
			res = n_file_sz == FUNC13 (core->io, obj->loadaddr,
				bin_buffer, n_file_sz) ? true : false;
			if (res == true) {
				res = FUNC8 (
					core, obj, bin_buffer, n_file_sz);
			} else {
				FUNC1 ("[X] r_cmd_java_get_cp_bytes_and_write: Failed to read the file in aborted, bin reload.\n");
			}
			FUNC2 (bin_buffer);
		}
	}
	return res;
}