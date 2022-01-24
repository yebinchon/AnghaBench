#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_6__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int /*<<< orphan*/  leaf_type; scalar_t__ type_info; } ;
struct TYPE_8__ {int ti_min; int ti_max; } ;
struct TYPE_10__ {int /*<<< orphan*/  types; TYPE_1__ header; } ;
struct TYPE_9__ {int tpi_idx; TYPE_6__ type_data; } ;
typedef  TYPE_2__ SType ;
typedef  TYPE_3__ STpiStream ;
typedef  int /*<<< orphan*/  STPIHeader ;
typedef  int /*<<< orphan*/  R_STREAM_FILE ;

/* Variables and functions */
 int base_idx ; 
 int /*<<< orphan*/  eLF_MAX ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_6__*) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  p_types_list ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int,char*) ; 

int FUNC7(void *parsed_pdb_stream, R_STREAM_FILE *stream) {
	int i;
	SType *type = 0;
	STpiStream *tpi_stream = (STpiStream *) parsed_pdb_stream;
	tpi_stream->types = FUNC5 ();
	p_types_list = tpi_stream->types;

	FUNC6(stream, sizeof(STPIHeader), (char *)&tpi_stream->header);

	base_idx = tpi_stream->header.ti_min;

	for (i = tpi_stream->header.ti_min; i < tpi_stream->header.ti_max; i++) {
		type = (SType *) FUNC2 (sizeof (SType));
		if (!type) {
			return 0;
		}
		type->tpi_idx = i;
		type->type_data.type_info = 0;
		type->type_data.leaf_type = eLF_MAX;
		FUNC1(&type->type_data);
		if (!FUNC3(stream, type)) {
			FUNC0 (type);
			return 0;
		}
		FUNC4(tpi_stream->types, type);
	}
	return 1;
}