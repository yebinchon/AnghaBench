
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8 ;
typedef int XLogReaderState ;
typedef int MemoryContext ;


 int MemoryContextReset (int ) ;
 int MemoryContextSwitchTo (int ) ;
 int PANIC ;
 int XLR_INFO_MASK ;
 int XLogRecGetInfo (int *) ;
 int elog (int ,char*,int) ;
 int opCtx ;
 int spgRedoAddLeaf (int *) ;
 int spgRedoAddNode (int *) ;
 int spgRedoMoveLeafs (int *) ;
 int spgRedoPickSplit (int *) ;
 int spgRedoSplitTuple (int *) ;
 int spgRedoVacuumLeaf (int *) ;
 int spgRedoVacuumRedirect (int *) ;
 int spgRedoVacuumRoot (int *) ;

void
spg_redo(XLogReaderState *record)
{
 uint8 info = XLogRecGetInfo(record) & ~XLR_INFO_MASK;
 MemoryContext oldCxt;

 oldCxt = MemoryContextSwitchTo(opCtx);
 switch (info)
 {
  case 135:
   spgRedoAddLeaf(record);
   break;
  case 133:
   spgRedoMoveLeafs(record);
   break;
  case 134:
   spgRedoAddNode(record);
   break;
  case 131:
   spgRedoSplitTuple(record);
   break;
  case 132:
   spgRedoPickSplit(record);
   break;
  case 130:
   spgRedoVacuumLeaf(record);
   break;
  case 128:
   spgRedoVacuumRoot(record);
   break;
  case 129:
   spgRedoVacuumRedirect(record);
   break;
  default:
   elog(PANIC, "spg_redo: unknown op code %u", info);
 }

 MemoryContextSwitchTo(oldCxt);
 MemoryContextReset(opCtx);
}
