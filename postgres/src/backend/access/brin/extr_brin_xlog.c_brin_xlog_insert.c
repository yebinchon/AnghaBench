
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xl_brin_insert ;
typedef int XLogReaderState ;


 scalar_t__ XLogRecGetData (int *) ;
 int brin_xlog_insert_update (int *,int *) ;

__attribute__((used)) static void
brin_xlog_insert(XLogReaderState *record)
{
 xl_brin_insert *xlrec = (xl_brin_insert *) XLogRecGetData(record);

 brin_xlog_insert_update(record, xlrec);
}
