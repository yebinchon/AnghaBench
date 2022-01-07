
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int rp_name; int rp_time; } ;
typedef TYPE_1__ xl_restore_point ;
typedef int uint32 ;
typedef int XLogRecPtr ;


 int GetCurrentTimestamp () ;
 int LOG ;
 int MAXFNAMELEN ;
 int RM_XLOG_ID ;
 int XLOG_RESTORE_POINT ;
 int XLogBeginInsert () ;
 int XLogInsert (int ,int ) ;
 int XLogRegisterData (char*,int) ;
 int ereport (int ,int ) ;
 int errmsg (char*,char const*,int ,int ) ;
 int strlcpy (int ,char const*,int ) ;

XLogRecPtr
XLogRestorePoint(const char *rpName)
{
 XLogRecPtr RecPtr;
 xl_restore_point xlrec;

 xlrec.rp_time = GetCurrentTimestamp();
 strlcpy(xlrec.rp_name, rpName, MAXFNAMELEN);

 XLogBeginInsert();
 XLogRegisterData((char *) &xlrec, sizeof(xl_restore_point));

 RecPtr = XLogInsert(RM_XLOG_ID, XLOG_RESTORE_POINT);

 ereport(LOG,
   (errmsg("restore point \"%s\" created at %X/%X",
     rpName, (uint32) (RecPtr >> 32), (uint32) RecPtr)));

 return RecPtr;
}
