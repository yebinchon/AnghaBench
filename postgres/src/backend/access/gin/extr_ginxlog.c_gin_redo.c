
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
 int ginRedoCreatePTree (int *) ;
 int ginRedoDeleteListPages (int *) ;
 int ginRedoDeletePage (int *) ;
 int ginRedoInsert (int *) ;
 int ginRedoInsertListPage (int *) ;
 int ginRedoSplit (int *) ;
 int ginRedoUpdateMetapage (int *) ;
 int ginRedoVacuumDataLeafPage (int *) ;
 int ginRedoVacuumPage (int *) ;
 int opCtx ;

void
gin_redo(XLogReaderState *record)
{
 uint8 info = XLogRecGetInfo(record) & ~XLR_INFO_MASK;
 MemoryContext oldCtx;







 oldCtx = MemoryContextSwitchTo(opCtx);
 switch (info)
 {
  case 136:
   ginRedoCreatePTree(record);
   break;
  case 133:
   ginRedoInsert(record);
   break;
  case 131:
   ginRedoSplit(record);
   break;
  case 128:
   ginRedoVacuumPage(record);
   break;
  case 129:
   ginRedoVacuumDataLeafPage(record);
   break;
  case 134:
   ginRedoDeletePage(record);
   break;
  case 130:
   ginRedoUpdateMetapage(record);
   break;
  case 132:
   ginRedoInsertListPage(record);
   break;
  case 135:
   ginRedoDeleteListPages(record);
   break;
  default:
   elog(PANIC, "gin_redo: unknown op code %u", info);
 }
 MemoryContextSwitchTo(oldCtx);
 MemoryContextReset(opCtx);
}
