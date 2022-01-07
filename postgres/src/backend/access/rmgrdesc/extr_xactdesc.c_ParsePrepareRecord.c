
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int nsubxacts; int ncommitrels; int nabortrels; int ninvalmsgs; int gidlen; int database; int xid; int origin_timestamp; int origin_lsn; int prepared_at; } ;
typedef TYPE_1__ xl_xact_prepare ;
struct TYPE_7__ {int nsubxacts; int nrels; int nabortrels; int nmsgs; int * msgs; int * abortnodes; int * xnodes; int * subxacts; int twophase_gid; int dbId; int twophase_xid; int origin_timestamp; int origin_lsn; int xact_time; } ;
typedef TYPE_2__ xl_xact_parsed_prepare ;
typedef int uint8 ;
typedef int TransactionId ;
typedef int SharedInvalidationMessage ;
typedef int RelFileNode ;


 int MAXALIGN (int) ;
 int memset (TYPE_2__*,int ,int) ;
 int strncpy (int ,char*,int) ;

void
ParsePrepareRecord(uint8 info, xl_xact_prepare *xlrec, xl_xact_parsed_prepare *parsed)
{
 char *bufptr;

 bufptr = ((char *) xlrec) + MAXALIGN(sizeof(xl_xact_prepare));

 memset(parsed, 0, sizeof(*parsed));

 parsed->xact_time = xlrec->prepared_at;
 parsed->origin_lsn = xlrec->origin_lsn;
 parsed->origin_timestamp = xlrec->origin_timestamp;
 parsed->twophase_xid = xlrec->xid;
 parsed->dbId = xlrec->database;
 parsed->nsubxacts = xlrec->nsubxacts;
 parsed->nrels = xlrec->ncommitrels;
 parsed->nabortrels = xlrec->nabortrels;
 parsed->nmsgs = xlrec->ninvalmsgs;

 strncpy(parsed->twophase_gid, bufptr, xlrec->gidlen);
 bufptr += MAXALIGN(xlrec->gidlen);

 parsed->subxacts = (TransactionId *) bufptr;
 bufptr += MAXALIGN(xlrec->nsubxacts * sizeof(TransactionId));

 parsed->xnodes = (RelFileNode *) bufptr;
 bufptr += MAXALIGN(xlrec->ncommitrels * sizeof(RelFileNode));

 parsed->abortnodes = (RelFileNode *) bufptr;
 bufptr += MAXALIGN(xlrec->nabortrels * sizeof(RelFileNode));

 parsed->msgs = (SharedInvalidationMessage *) bufptr;
 bufptr += MAXALIGN(xlrec->ninvalmsgs * sizeof(SharedInvalidationMessage));
}
