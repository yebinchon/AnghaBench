
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint32 ;
struct TYPE_6__ {int ReadRecPtr; } ;
typedef TYPE_1__ XLogReaderState ;
struct TYPE_7__ {int data; } ;
typedef TYPE_2__ StringInfoData ;


 int errcontext (char*,int ,int ,int ) ;
 int initStringInfo (TYPE_2__*) ;
 int pfree (int ) ;
 int xlog_outdesc (TYPE_2__*,TYPE_1__*) ;

__attribute__((used)) static void
rm_redo_error_callback(void *arg)
{
 XLogReaderState *record = (XLogReaderState *) arg;
 StringInfoData buf;

 initStringInfo(&buf);
 xlog_outdesc(&buf, record);


 errcontext("WAL redo at %X/%X for %s",
      (uint32) (record->ReadRecPtr >> 32),
      (uint32) record->ReadRecPtr,
      buf.data);

 pfree(buf.data);
}
