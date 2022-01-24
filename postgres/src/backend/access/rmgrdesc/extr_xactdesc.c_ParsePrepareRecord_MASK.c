#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int nsubxacts; int ncommitrels; int nabortrels; int ninvalmsgs; int gidlen; int /*<<< orphan*/  database; int /*<<< orphan*/  xid; int /*<<< orphan*/  origin_timestamp; int /*<<< orphan*/  origin_lsn; int /*<<< orphan*/  prepared_at; } ;
typedef  TYPE_1__ xl_xact_prepare ;
struct TYPE_7__ {int nsubxacts; int nrels; int nabortrels; int nmsgs; int /*<<< orphan*/ * msgs; int /*<<< orphan*/ * abortnodes; int /*<<< orphan*/ * xnodes; int /*<<< orphan*/ * subxacts; int /*<<< orphan*/  twophase_gid; int /*<<< orphan*/  dbId; int /*<<< orphan*/  twophase_xid; int /*<<< orphan*/  origin_timestamp; int /*<<< orphan*/  origin_lsn; int /*<<< orphan*/  xact_time; } ;
typedef  TYPE_2__ xl_xact_parsed_prepare ;
typedef  int /*<<< orphan*/  uint8 ;
typedef  int /*<<< orphan*/  TransactionId ;
typedef  int /*<<< orphan*/  SharedInvalidationMessage ;
typedef  int /*<<< orphan*/  RelFileNode ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 

void
FUNC3(uint8 info, xl_xact_prepare *xlrec, xl_xact_parsed_prepare *parsed)
{
	char	   *bufptr;

	bufptr = ((char *) xlrec) + FUNC0(sizeof(xl_xact_prepare));

	FUNC1(parsed, 0, sizeof(*parsed));

	parsed->xact_time = xlrec->prepared_at;
	parsed->origin_lsn = xlrec->origin_lsn;
	parsed->origin_timestamp = xlrec->origin_timestamp;
	parsed->twophase_xid = xlrec->xid;
	parsed->dbId = xlrec->database;
	parsed->nsubxacts = xlrec->nsubxacts;
	parsed->nrels = xlrec->ncommitrels;
	parsed->nabortrels = xlrec->nabortrels;
	parsed->nmsgs = xlrec->ninvalmsgs;

	FUNC2(parsed->twophase_gid, bufptr, xlrec->gidlen);
	bufptr += FUNC0(xlrec->gidlen);

	parsed->subxacts = (TransactionId *) bufptr;
	bufptr += FUNC0(xlrec->nsubxacts * sizeof(TransactionId));

	parsed->xnodes = (RelFileNode *) bufptr;
	bufptr += FUNC0(xlrec->ncommitrels * sizeof(RelFileNode));

	parsed->abortnodes = (RelFileNode *) bufptr;
	bufptr += FUNC0(xlrec->nabortrels * sizeof(RelFileNode));

	parsed->msgs = (SharedInvalidationMessage *) bufptr;
	bufptr += FUNC0(xlrec->ninvalmsgs * sizeof(SharedInvalidationMessage));
}