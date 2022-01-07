
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct tm {int tm_isdst; int tm_year; int tm_mon; int tm_mday; int tm_hour; int tm_min; int tm_sec; } ;
struct TYPE_13__ {int remoteVersionStr; } ;
struct TYPE_14__ {TYPE_1__ public; int connection; int createDate; int compression; int format; int (* WriteBytePtr ) (TYPE_2__*,int ) ;int offSize; int intSize; int version; int (* WriteBufPtr ) (TYPE_2__*,char*,int) ;} ;
typedef TYPE_2__ ArchiveHandle ;


 int ARCHIVE_MAJOR (int ) ;
 int ARCHIVE_MINOR (int ) ;
 int ARCHIVE_REV (int ) ;
 int PG_VERSION ;
 int PQdb (int ) ;
 int WriteInt (TYPE_2__*,int ) ;
 int WriteStr (TYPE_2__*,int ) ;
 struct tm* localtime (int *) ;
 int stub1 (TYPE_2__*,char*,int) ;
 int stub2 (TYPE_2__*,int ) ;
 int stub3 (TYPE_2__*,int ) ;
 int stub4 (TYPE_2__*,int ) ;
 int stub5 (TYPE_2__*,int ) ;
 int stub6 (TYPE_2__*,int ) ;
 int stub7 (TYPE_2__*,int ) ;

void
WriteHead(ArchiveHandle *AH)
{
 struct tm crtm;

 AH->WriteBufPtr(AH, "PGDMP", 5);
 AH->WriteBytePtr(AH, ARCHIVE_MAJOR(AH->version));
 AH->WriteBytePtr(AH, ARCHIVE_MINOR(AH->version));
 AH->WriteBytePtr(AH, ARCHIVE_REV(AH->version));
 AH->WriteBytePtr(AH, AH->intSize);
 AH->WriteBytePtr(AH, AH->offSize);
 AH->WriteBytePtr(AH, AH->format);
 WriteInt(AH, AH->compression);
 crtm = *localtime(&AH->createDate);
 WriteInt(AH, crtm.tm_sec);
 WriteInt(AH, crtm.tm_min);
 WriteInt(AH, crtm.tm_hour);
 WriteInt(AH, crtm.tm_mday);
 WriteInt(AH, crtm.tm_mon);
 WriteInt(AH, crtm.tm_year);
 WriteInt(AH, crtm.tm_isdst);
 WriteStr(AH, PQdb(AH->connection));
 WriteStr(AH, AH->public.remoteVersionStr);
 WriteStr(AH, PG_VERSION);
}
