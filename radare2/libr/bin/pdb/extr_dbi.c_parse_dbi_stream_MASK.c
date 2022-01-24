#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int module_size; int seccon_size; int secmap_size; int filinf_size; int tsmap_size; int ecinfo_size; } ;
struct TYPE_3__ {int /*<<< orphan*/  dbg_header; TYPE_2__ dbi_header; int /*<<< orphan*/  dbiexhdrs; } ;
typedef  TYPE_1__ SDbiStream ;
typedef  int /*<<< orphan*/  SDBIHeader ;
typedef  int /*<<< orphan*/  SDBIExHeader ;
typedef  int /*<<< orphan*/  R_STREAM_FILE ;

/* Variables and functions */
 int PDB_ALIGN ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC3 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int,int) ; 

void FUNC9(void *parsed_pdb_stream, R_STREAM_FILE *stream_file) {
	SDbiStream *dbi_stream = (SDbiStream *) parsed_pdb_stream;
	SDBIExHeader *dbi_ex_header = 0;
	int pos = 0;
	char *dbiexhdr_data = 0, *p_tmp = 0;
	int size = 0, sz = 0;
	int i = 0;

	FUNC4 (&dbi_stream->dbi_header, stream_file);
	pos += sizeof (SDBIHeader) - 2;	// 2 because enum in C equal to 4, but
									// to read just 2;
	FUNC8 (stream_file, pos, 0);

	size = dbi_stream->dbi_header.module_size;
	dbiexhdr_data = (char *) FUNC1(size);
	if (!dbiexhdr_data) {
		return;
	}
	FUNC7 (stream_file, size, dbiexhdr_data);

	dbi_stream->dbiexhdrs = FUNC6 ();
	p_tmp = dbiexhdr_data;
	while (i < size) {
		dbi_ex_header = (SDBIExHeader *) FUNC1 (sizeof(SDBIExHeader));
		if (!dbi_ex_header) {
			break;
		}
		// TODO: rewrite for signature where can to do chech CAN_READ true?
		sz = FUNC3 (p_tmp, size, dbi_ex_header);
		if ((sz % PDB_ALIGN)) {
			sz = sz + (PDB_ALIGN - (sz % PDB_ALIGN));
		}
		i += sz;
		p_tmp += sz;
		FUNC5 (dbi_stream->dbiexhdrs, dbi_ex_header);
	}

	FUNC0 (dbiexhdr_data);

	// "Section Contribution"
	FUNC8(stream_file, dbi_stream->dbi_header.seccon_size, 1);
	// "Section Map"
	FUNC8(stream_file, dbi_stream->dbi_header.secmap_size, 1);
	// "File Info"
	FUNC8(stream_file, dbi_stream->dbi_header.filinf_size, 1);
	// "TSM"
	FUNC8(stream_file, dbi_stream->dbi_header.tsmap_size, 1);
	// "EC"
	FUNC8(stream_file, dbi_stream->dbi_header.ecinfo_size, 1);

	FUNC2(&dbi_stream->dbg_header, stream_file);
}