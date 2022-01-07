
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_8__ ;
typedef struct TYPE_19__ TYPE_7__ ;
typedef struct TYPE_18__ TYPE_6__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_13__ {int xinfo; } ;
typedef TYPE_1__ xl_xact_xinfo ;
struct TYPE_14__ {int xid; } ;
typedef TYPE_2__ xl_xact_twophase ;
struct TYPE_15__ {int nsubxacts; int subxacts; } ;
typedef TYPE_3__ xl_xact_subxacts ;
struct TYPE_16__ {int nrels; int xnodes; } ;
typedef TYPE_4__ xl_xact_relfilenodes ;
struct TYPE_17__ {int xinfo; int nsubxacts; int nrels; int origin_timestamp; int origin_lsn; int twophase_gid; int twophase_xid; int xnodes; int subxacts; int tsId; int dbId; int xact_time; } ;
typedef TYPE_5__ xl_xact_parsed_abort ;
struct TYPE_18__ {int origin_timestamp; int origin_lsn; } ;
typedef TYPE_6__ xl_xact_origin ;
struct TYPE_19__ {int tsId; int dbId; } ;
typedef TYPE_7__ xl_xact_dbinfo ;
struct TYPE_20__ {int xact_time; } ;
typedef TYPE_8__ xl_xact_abort ;
typedef int xl_origin ;
typedef int uint8 ;
typedef int TransactionId ;
typedef int RelFileNode ;


 int MinSizeOfXactAbort ;
 int MinSizeOfXactRelfilenodes ;
 int MinSizeOfXactSubxacts ;
 int XACT_XINFO_HAS_DBINFO ;
 int XACT_XINFO_HAS_GID ;
 int XACT_XINFO_HAS_ORIGIN ;
 int XACT_XINFO_HAS_RELFILENODES ;
 int XACT_XINFO_HAS_SUBXACTS ;
 int XACT_XINFO_HAS_TWOPHASE ;
 int XLOG_XACT_HAS_INFO ;
 int memcpy (TYPE_6__*,char*,int) ;
 int memset (TYPE_5__*,int ,int) ;
 int strlcpy (int ,char*,int) ;
 scalar_t__ strlen (char*) ;

void
ParseAbortRecord(uint8 info, xl_xact_abort *xlrec, xl_xact_parsed_abort *parsed)
{
 char *data = ((char *) xlrec) + MinSizeOfXactAbort;

 memset(parsed, 0, sizeof(*parsed));

 parsed->xinfo = 0;


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

 if (parsed->xinfo & XACT_XINFO_HAS_TWOPHASE)
 {
  xl_xact_twophase *xl_twophase = (xl_xact_twophase *) data;

  parsed->twophase_xid = xl_twophase->xid;

  data += sizeof(xl_xact_twophase);

  if (parsed->xinfo & XACT_XINFO_HAS_GID)
  {
   strlcpy(parsed->twophase_gid, data, sizeof(parsed->twophase_gid));
   data += strlen(data) + 1;
  }
 }



 if (parsed->xinfo & XACT_XINFO_HAS_ORIGIN)
 {
  xl_xact_origin xl_origin;


  memcpy(&xl_origin, data, sizeof(xl_origin));

  parsed->origin_lsn = xl_origin.origin_lsn;
  parsed->origin_timestamp = xl_origin.origin_timestamp;

  data += sizeof(xl_xact_origin);
 }
}
