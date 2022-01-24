#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_8__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {int /*<<< orphan*/  buf; TYPE_1__* stream_map; scalar_t__ pdb_streams2; scalar_t__ pdb_streams; TYPE_1__* root_stream; } ;
struct TYPE_14__ {struct TYPE_14__* stream; int /*<<< orphan*/  (* free ) (TYPE_1__*) ;scalar_t__ streams_list; struct TYPE_14__* stream_pages; } ;
typedef  TYPE_1__ STpiStream ;
typedef  TYPE_1__ SStreamParseFunc ;
typedef  TYPE_1__ SPage ;
typedef  TYPE_1__ SPDBInfoStream ;
typedef  TYPE_1__ SDbiStream ;
typedef  TYPE_1__ R_PDB_STREAM ;
typedef  TYPE_1__ R_PDB7_ROOT_STREAM ;
typedef  TYPE_8__ R_PDB ;
typedef  int /*<<< orphan*/  RListIter ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,int,TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC9(R_PDB *pdb) {
	R_PDB7_ROOT_STREAM *p = pdb->root_stream;
	RListIter *it;
	SPage *page = 0;

	if (!p) {
		return;
	}
	it = FUNC7 (p->streams_list);
	while (FUNC6 (it)) {
		page = (SPage *) FUNC5 (it);
		FUNC1 (page->stream_pages);
		page->stream_pages = 0;
		FUNC1 (page);
		page = 0;
	}
	FUNC4 (p->streams_list);
	p->streams_list = 0;
	FUNC1 (p);
	p = 0;
	// end of free of R_PDB7_ROOT_STREAM

	// TODO: maybe create some kind of destructor?
	// free of pdb->pdb_streams
// SParsedPDBStream *parsed_pdb_stream = 0;
	SPDBInfoStream *pdb_info_stream = 0;
	STpiStream *tpi_stream = 0;
	SDbiStream *dbi_stream = 0;
	SStreamParseFunc *stream_parse_func;
	R_PDB_STREAM *pdb_stream = 0;
	int i = 0;
#if 1
/* r_list_free should be enough, all the items in a list should be freeable using a generic destructor
   hacking up things like that may only produce problems. so it is better to not assume that a specific
   element in a list is of a specific type and just store this info in the type struct or so.
*/
// XXX: this loop is fucked up. i prefer to leak than crash
	it = FUNC7 (pdb->pdb_streams);
	while (FUNC6 (it)) {
		switch (i) {
		case 1:
			pdb_info_stream = (SPDBInfoStream *) FUNC5 (it);
			FUNC2 (pdb_info_stream);
			FUNC1 (pdb_info_stream);
			break;
		case 2:
			tpi_stream = (STpiStream *) FUNC5 (it);
			FUNC2 (tpi_stream);
			FUNC1 (tpi_stream);
			break;
		case 3:
			dbi_stream = (SDbiStream *) FUNC5 (it);
			FUNC2 (dbi_stream);
			FUNC1 (dbi_stream);
			break;
		default:
			FUNC0 (pdb->pdb_streams2, i, &stream_parse_func);
			if (stream_parse_func) {
				break;
			}
			pdb_stream = (R_PDB_STREAM *) FUNC5 (it);
			FUNC2 (pdb_stream);
			FUNC1 (pdb_stream);
			break;
		}
		i++;
	}
#endif
	FUNC4 (pdb->pdb_streams);
	// enf of free of pdb->pdb_streams

#if 1
	// start of free pdb->pdb_streams2
	it = FUNC7 (pdb->pdb_streams2);
	while (FUNC6 (it)) {
		stream_parse_func = (SStreamParseFunc *) FUNC5 (it);
		if (stream_parse_func->free) {
			stream_parse_func->free (stream_parse_func->stream);
			FUNC1 (stream_parse_func->stream);
		}
		FUNC1 (stream_parse_func);
	}
#endif
	FUNC4 (pdb->pdb_streams2);
	// end of free pdb->streams2

	FUNC1 (pdb->stream_map);
	FUNC3 (pdb->buf);

// fclose(pdb->fp);
// printf("finish_pdb_parse()\n");
}