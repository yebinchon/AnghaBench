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
typedef  int /*<<< orphan*/  ut32 ;
typedef  int /*<<< orphan*/  ut16 ;
typedef  int /*<<< orphan*/  st16 ;
struct TYPE_3__ {int /*<<< orphan*/  resvd; int /*<<< orphan*/  machine; int /*<<< orphan*/  flags; int /*<<< orphan*/  ecinfo_size; int /*<<< orphan*/  dbghdr_size; int /*<<< orphan*/  mfc_index; int /*<<< orphan*/  tsmap_size; int /*<<< orphan*/  filinf_size; int /*<<< orphan*/  secmap_size; int /*<<< orphan*/  seccon_size; int /*<<< orphan*/  module_size; int /*<<< orphan*/  pdbver2; int /*<<< orphan*/  symrecStream; int /*<<< orphan*/  pdbver; int /*<<< orphan*/  pssymStream; int /*<<< orphan*/  vers; int /*<<< orphan*/  gssymStream; int /*<<< orphan*/  age; int /*<<< orphan*/  version; int /*<<< orphan*/  magic; } ;
typedef  TYPE_1__ SDBIHeader ;
typedef  int /*<<< orphan*/  R_STREAM_FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,char*) ; 

__attribute__((used)) static void FUNC1(SDBIHeader *dbi_header, R_STREAM_FILE *stream_file) {
	FUNC0 (stream_file, sizeof (ut32), (char *)&dbi_header->magic);
	FUNC0 (stream_file, sizeof (ut32), (char *)&dbi_header->version);
	FUNC0 (stream_file, sizeof (ut32), (char *)&dbi_header->age);
	FUNC0 (stream_file, sizeof (ut16), (char *)&dbi_header->gssymStream);
	FUNC0 (stream_file, sizeof (ut16), (char *)&dbi_header->vers);
	FUNC0 (stream_file, sizeof (st16), (char *)&dbi_header->pssymStream);
	FUNC0 (stream_file, sizeof (ut16), (char *)&dbi_header->pdbver);
	FUNC0 (stream_file, sizeof (st16), (char *)&dbi_header->symrecStream);
	FUNC0 (stream_file, sizeof (ut16), (char *)&dbi_header->pdbver2);
	FUNC0 (stream_file, sizeof (ut32), (char *)&dbi_header->module_size);
	FUNC0 (stream_file, sizeof (ut32), (char *)&dbi_header->seccon_size);
	FUNC0 (stream_file, sizeof (ut32), (char *)&dbi_header->secmap_size);
	FUNC0 (stream_file, sizeof (ut32), (char *)&dbi_header->filinf_size);
	FUNC0 (stream_file, sizeof (ut32), (char *)&dbi_header->tsmap_size);
	FUNC0 (stream_file, sizeof (ut32), (char *)&dbi_header->mfc_index);
	FUNC0 (stream_file, sizeof (ut32), (char *)&dbi_header->dbghdr_size);
	FUNC0 (stream_file, sizeof (ut32), (char *)&dbi_header->ecinfo_size);
	FUNC0 (stream_file, sizeof (ut16), (char *)&dbi_header->flags);
	FUNC0 (stream_file, 2, (char *)&dbi_header->machine);
	FUNC0 (stream_file, sizeof (ut32), (char *)&dbi_header->resvd);
}