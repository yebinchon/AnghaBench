
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
 int gistRedoDeleteRecord (int *) ;
 int gistRedoPageDelete (int *) ;
 int gistRedoPageReuse (int *) ;
 int gistRedoPageSplitRecord (int *) ;
 int gistRedoPageUpdateRecord (int *) ;
 int opCtx ;

void
gist_redo(XLogReaderState *record)
{
 uint8 info = XLogRecGetInfo(record) & ~XLR_INFO_MASK;
 MemoryContext oldCxt;







 oldCxt = MemoryContextSwitchTo(opCtx);
 switch (info)
 {
  case 128:
   gistRedoPageUpdateRecord(record);
   break;
  case 132:
   gistRedoDeleteRecord(record);
   break;
  case 130:
   gistRedoPageReuse(record);
   break;
  case 129:
   gistRedoPageSplitRecord(record);
   break;
  case 131:
   gistRedoPageDelete(record);
   break;
  default:
   elog(PANIC, "gist_redo: unknown op code %u", info);
 }

 MemoryContextSwitchTo(oldCxt);
 MemoryContextReset(opCtx);
}
