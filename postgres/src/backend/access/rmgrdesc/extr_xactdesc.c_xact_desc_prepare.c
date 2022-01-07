
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int initfileinval; } ;
typedef TYPE_1__ xl_xact_prepare ;
struct TYPE_7__ {int tsId; int dbId; int msgs; int nmsgs; int subxacts; int nsubxacts; int abortnodes; int nabortrels; int xnodes; int nrels; int xact_time; int twophase_gid; } ;
typedef TYPE_2__ xl_xact_parsed_prepare ;
typedef int uint8 ;
typedef int StringInfo ;


 int ParsePrepareRecord (int ,TYPE_1__*,TYPE_2__*) ;
 int appendStringInfo (int ,char*,int ) ;
 int appendStringInfoString (int ,int ) ;
 int standby_desc_invalidations (int ,int ,int ,int ,int ,int ) ;
 int timestamptz_to_str (int ) ;
 int xact_desc_relations (int ,char*,int ,int ) ;
 int xact_desc_subxacts (int ,int ,int ) ;

__attribute__((used)) static void
xact_desc_prepare(StringInfo buf, uint8 info, xl_xact_prepare *xlrec)
{
 xl_xact_parsed_prepare parsed;

 ParsePrepareRecord(info, xlrec, &parsed);

 appendStringInfo(buf, "gid %s: ", parsed.twophase_gid);
 appendStringInfoString(buf, timestamptz_to_str(parsed.xact_time));

 xact_desc_relations(buf, "rels(commit)", parsed.nrels, parsed.xnodes);
 xact_desc_relations(buf, "rels(abort)", parsed.nabortrels,
      parsed.abortnodes);
 xact_desc_subxacts(buf, parsed.nsubxacts, parsed.subxacts);

 standby_desc_invalidations(
      buf, parsed.nmsgs, parsed.msgs, parsed.dbId, parsed.tsId,
      xlrec->initfileinval);
}
