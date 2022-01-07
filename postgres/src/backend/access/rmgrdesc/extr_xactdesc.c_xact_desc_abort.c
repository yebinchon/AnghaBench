
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int subxacts; int nsubxacts; int xnodes; int nrels; int twophase_xid; } ;
typedef TYPE_1__ xl_xact_parsed_abort ;
struct TYPE_7__ {int xact_time; } ;
typedef TYPE_2__ xl_xact_abort ;
typedef int uint8 ;
typedef int StringInfo ;


 int ParseAbortRecord (int ,TYPE_2__*,TYPE_1__*) ;
 scalar_t__ TransactionIdIsValid (int ) ;
 int appendStringInfo (int ,char*,int ) ;
 int appendStringInfoString (int ,int ) ;
 int timestamptz_to_str (int ) ;
 int xact_desc_relations (int ,char*,int ,int ) ;
 int xact_desc_subxacts (int ,int ,int ) ;

__attribute__((used)) static void
xact_desc_abort(StringInfo buf, uint8 info, xl_xact_abort *xlrec)
{
 xl_xact_parsed_abort parsed;

 ParseAbortRecord(info, xlrec, &parsed);


 if (TransactionIdIsValid(parsed.twophase_xid))
  appendStringInfo(buf, "%u: ", parsed.twophase_xid);

 appendStringInfoString(buf, timestamptz_to_str(xlrec->xact_time));

 xact_desc_relations(buf, "rels", parsed.nrels, parsed.xnodes);
 xact_desc_subxacts(buf, parsed.nsubxacts, parsed.subxacts);
}
