#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_9__ ;
typedef  struct TYPE_21__   TYPE_8__ ;
typedef  struct TYPE_20__   TYPE_7__ ;
typedef  struct TYPE_19__   TYPE_6__ ;
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {int xinfo; } ;
typedef  TYPE_1__ xl_xact_xinfo ;
struct TYPE_15__ {int /*<<< orphan*/  xid; } ;
typedef  TYPE_2__ xl_xact_twophase ;
struct TYPE_16__ {int nsubxacts; int /*<<< orphan*/  subxacts; } ;
typedef  TYPE_3__ xl_xact_subxacts ;
struct TYPE_17__ {int nrels; int /*<<< orphan*/  xnodes; } ;
typedef  TYPE_4__ xl_xact_relfilenodes ;
struct TYPE_18__ {int xinfo; int nsubxacts; int nrels; int nmsgs; int /*<<< orphan*/  origin_timestamp; int /*<<< orphan*/  origin_lsn; int /*<<< orphan*/  twophase_gid; int /*<<< orphan*/  twophase_xid; int /*<<< orphan*/  msgs; int /*<<< orphan*/  xnodes; int /*<<< orphan*/  subxacts; int /*<<< orphan*/  tsId; int /*<<< orphan*/  dbId; int /*<<< orphan*/  xact_time; } ;
typedef  TYPE_5__ xl_xact_parsed_commit ;
struct TYPE_19__ {int /*<<< orphan*/  origin_timestamp; int /*<<< orphan*/  origin_lsn; } ;
typedef  TYPE_6__ xl_xact_origin ;
struct TYPE_20__ {int nmsgs; int /*<<< orphan*/  msgs; } ;
typedef  TYPE_7__ xl_xact_invals ;
struct TYPE_21__ {int /*<<< orphan*/  tsId; int /*<<< orphan*/  dbId; } ;
typedef  TYPE_8__ xl_xact_dbinfo ;
struct TYPE_22__ {int /*<<< orphan*/  xact_time; } ;
typedef  TYPE_9__ xl_xact_commit ;
typedef  int /*<<< orphan*/  xl_origin ;
typedef  int uint8 ;
typedef  int /*<<< orphan*/  TransactionId ;
typedef  int /*<<< orphan*/  SharedInvalidationMessage ;
typedef  int /*<<< orphan*/  RelFileNode ;

/* Variables and functions */
 int MinSizeOfXactCommit ; 
 int /*<<< orphan*/  MinSizeOfXactInvals ; 
 int /*<<< orphan*/  MinSizeOfXactRelfilenodes ; 
 int /*<<< orphan*/  MinSizeOfXactSubxacts ; 
 int XACT_XINFO_HAS_DBINFO ; 
 int XACT_XINFO_HAS_GID ; 
 int XACT_XINFO_HAS_INVALS ; 
 int XACT_XINFO_HAS_ORIGIN ; 
 int XACT_XINFO_HAS_RELFILENODES ; 
 int XACT_XINFO_HAS_SUBXACTS ; 
 int XACT_XINFO_HAS_TWOPHASE ; 
 int XLOG_XACT_HAS_INFO ; 
 int /*<<< orphan*/  FUNC0 (TYPE_6__*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ FUNC3 (char*) ; 

void
FUNC4(uint8 info, xl_xact_commit *xlrec, xl_xact_parsed_commit *parsed)
{
	char	   *data = ((char *) xlrec) + MinSizeOfXactCommit;

	FUNC1(parsed, 0, sizeof(*parsed));

	parsed->xinfo = 0;			/* default, if no XLOG_XACT_HAS_INFO is
								 * present */

	parsed->xact_time = xlrec->xact_time;

	if (info & XLOG_XACT_HAS_INFO)
	{
		xl_xact_xinfo *xl_xinfo = (xl_xact_xinfo *) data;

		parsed->xinfo = xl_xinfo->xinfo;

		data += sizeof(xl_xact_xinfo);
	}

	if (parsed->xinfo & XACT_XINFO_HAS_DBINFO)
	{
		xl_xact_dbinfo *xl_dbinfo = (xl_xact_dbinfo *) data;

		parsed->dbId = xl_dbinfo->dbId;
		parsed->tsId = xl_dbinfo->tsId;

		data += sizeof(xl_xact_dbinfo);
	}

	if (parsed->xinfo & XACT_XINFO_HAS_SUBXACTS)
	{
		xl_xact_subxacts *xl_subxacts = (xl_xact_subxacts *) data;

		parsed->nsubxacts = xl_subxacts->nsubxacts;
		parsed->subxacts = xl_subxacts->subxacts;

		data += MinSizeOfXactSubxacts;
		data += parsed->nsubxacts * sizeof(TransactionId);
	}

	if (parsed->xinfo & XACT_XINFO_HAS_RELFILENODES)
	{
		xl_xact_relfilenodes *xl_relfilenodes = (xl_xact_relfilenodes *) data;

		parsed->nrels = xl_relfilenodes->nrels;
		parsed->xnodes = xl_relfilenodes->xnodes;

		data += MinSizeOfXactRelfilenodes;
		data += xl_relfilenodes->nrels * sizeof(RelFileNode);
	}

	if (parsed->xinfo & XACT_XINFO_HAS_INVALS)
	{
		xl_xact_invals *xl_invals = (xl_xact_invals *) data;

		parsed->nmsgs = xl_invals->nmsgs;
		parsed->msgs = xl_invals->msgs;

		data += MinSizeOfXactInvals;
		data += xl_invals->nmsgs * sizeof(SharedInvalidationMessage);
	}

	if (parsed->xinfo & XACT_XINFO_HAS_TWOPHASE)
	{
		xl_xact_twophase *xl_twophase = (xl_xact_twophase *) data;

		parsed->twophase_xid = xl_twophase->xid;

		data += sizeof(xl_xact_twophase);

		if (parsed->xinfo & XACT_XINFO_HAS_GID)
		{
			FUNC2(parsed->twophase_gid, data, sizeof(parsed->twophase_gid));
			data += FUNC3(data) + 1;
		}
	}

	/* Note: no alignment is guaranteed after this point */

	if (parsed->xinfo & XACT_XINFO_HAS_ORIGIN)
	{
		xl_xact_origin xl_origin;

		/* no alignment is guaranteed, so copy onto stack */
		FUNC0(&xl_origin, data, sizeof(xl_origin));

		parsed->origin_lsn = xl_origin.origin_lsn;
		parsed->origin_timestamp = xl_origin.origin_timestamp;

		data += sizeof(xl_xact_origin);
	}
}