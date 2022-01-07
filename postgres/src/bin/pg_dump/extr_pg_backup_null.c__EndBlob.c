
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int TocEntry ;
struct TYPE_4__ {int WriteDataPtr; } ;
typedef int Oid ;
typedef TYPE_1__ ArchiveHandle ;


 int _WriteData ;
 int ahprintf (TYPE_1__*,char*) ;

__attribute__((used)) static void
_EndBlob(ArchiveHandle *AH, TocEntry *te, Oid oid)
{
 AH->WriteDataPtr = _WriteData;

 ahprintf(AH, "SELECT pg_catalog.lo_close(0);\n\n");
}
