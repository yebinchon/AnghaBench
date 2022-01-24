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
typedef  int /*<<< orphan*/  ut8 ;
typedef  scalar_t__ ut64 ;
typedef  size_t ut32 ;
struct r_bin_mdmp_obj {scalar_t__ size; int /*<<< orphan*/  b; TYPE_1__* hdr; int /*<<< orphan*/  kv; } ;
struct minidump_directory {int dummy; } ;
struct TYPE_2__ {scalar_t__ stream_directory_rva; size_t number_of_streams; } ;

/* Variables and functions */
 size_t FUNC0 (size_t,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (char*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (struct r_bin_mdmp_obj*,struct minidump_directory*) ; 
 int FUNC3 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC6(struct r_bin_mdmp_obj *obj) {
	ut32 i;
	struct minidump_directory entry;

	FUNC4 (obj->kv, "mdmp_directory.offset",
			obj->hdr->stream_directory_rva, 0);
	FUNC5 (obj->kv, "mdmp_directory.format", "[4]E? "
			"(mdmp_stream_type)StreamType "
			"(mdmp_location_descriptor)Location", 0);

	ut64 rvadir = obj->hdr->stream_directory_rva;
	ut64 bytes_left = rvadir < obj->size ? obj->size - rvadir : 0;
	size_t max_entries = FUNC0 (obj->hdr->number_of_streams, bytes_left / sizeof (struct minidump_directory));
	if (max_entries < obj->hdr->number_of_streams) {
		FUNC1 ("[ERROR] Number of streams = %u is greater than is supportable by bin size\n",
		         obj->hdr->number_of_streams);
	}
	/* Parse each entry in the directory */
	for (i = 0; i < max_entries; i++) {
		ut32 delta = i * sizeof (struct minidump_directory);
		int r = FUNC3 (obj->b, rvadir + delta, (ut8*) &entry, sizeof (struct minidump_directory));
		if (r) {
			if (!FUNC2 (obj, &entry)) {
				return false;
			}
		}
	}

	return true;
}