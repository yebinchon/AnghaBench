
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint8 ;
struct TYPE_7__ {int newestRedirectXid; } ;
typedef TYPE_1__ spgxlogVacuumRedirect ;
struct TYPE_8__ {int newPage; int postfixBlkSame; int offnumPostfix; int offnumPrefix; } ;
typedef TYPE_2__ spgxlogSplitTuple ;
struct TYPE_9__ {int isRootSplit; int innerIsParent; int nInsert; int nDelete; } ;
typedef TYPE_3__ spgxlogPickSplit ;
struct TYPE_10__ {int nMoves; } ;
typedef TYPE_4__ spgxlogMoveLeafs ;
struct TYPE_11__ {int offnum; } ;
typedef TYPE_5__ spgxlogAddNode ;
struct TYPE_12__ {int storesNulls; int newPage; int offnumParent; int offnumHeadLeaf; int offnumLeaf; } ;
typedef TYPE_6__ spgxlogAddLeaf ;
typedef int XLogReaderState ;
typedef int StringInfo ;
 int XLR_INFO_MASK ;
 char* XLogRecGetData (int *) ;
 int XLogRecGetInfo (int *) ;
 int appendStringInfo (int ,char*,int ,...) ;
 int appendStringInfoString (int ,char*) ;

void
spg_desc(StringInfo buf, XLogReaderState *record)
{
 char *rec = XLogRecGetData(record);
 uint8 info = XLogRecGetInfo(record) & ~XLR_INFO_MASK;

 switch (info)
 {
  case 135:
   {
    spgxlogAddLeaf *xlrec = (spgxlogAddLeaf *) rec;

    appendStringInfoString(buf, "add leaf to page");
    appendStringInfo(buf, "; off %u; headoff %u; parentoff %u",
         xlrec->offnumLeaf, xlrec->offnumHeadLeaf,
         xlrec->offnumParent);
    if (xlrec->newPage)
     appendStringInfoString(buf, " (newpage)");
    if (xlrec->storesNulls)
     appendStringInfoString(buf, " (nulls)");
   }
   break;
  case 133:
   appendStringInfo(buf, "%u leafs",
        ((spgxlogMoveLeafs *) rec)->nMoves);
   break;
  case 134:
   appendStringInfo(buf, "off %u",
        ((spgxlogAddNode *) rec)->offnum);
   break;
  case 131:
   appendStringInfo(buf, "prefix off: %u, postfix off: %u (same %d, new %d)",
        ((spgxlogSplitTuple *) rec)->offnumPrefix,
        ((spgxlogSplitTuple *) rec)->offnumPostfix,
        ((spgxlogSplitTuple *) rec)->postfixBlkSame,
        ((spgxlogSplitTuple *) rec)->newPage
    );
   break;
  case 132:
   {
    spgxlogPickSplit *xlrec = (spgxlogPickSplit *) rec;

    appendStringInfo(buf, "ndel %u; nins %u",
         xlrec->nDelete, xlrec->nInsert);
    if (xlrec->innerIsParent)
     appendStringInfoString(buf, " (innerIsParent)");
    if (xlrec->isRootSplit)
     appendStringInfoString(buf, " (isRootSplit)");
   }
   break;
  case 130:

   break;
  case 128:

   break;
  case 129:
   appendStringInfo(buf, "newest XID %u",
        ((spgxlogVacuumRedirect *) rec)->newestRedirectXid);
   break;
 }
}
