
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int xlog_seg_size; } ;
typedef TYPE_1__ ControlFileData ;


 int IsValidWalSegSize (int ) ;
 size_t PG_CONTROL_FILE_SIZE ;
 int WalSegSz ;
 int checkControlFile (TYPE_1__*) ;
 int memcpy (TYPE_1__*,char*,int) ;
 int ngettext (char*,char*,int ) ;
 int pg_fatal (char*,int,...) ;

__attribute__((used)) static void
digestControlFile(ControlFileData *ControlFile, char *src, size_t size)
{
 if (size != PG_CONTROL_FILE_SIZE)
  pg_fatal("unexpected control file size %d, expected %d",
     (int) size, PG_CONTROL_FILE_SIZE);

 memcpy(ControlFile, src, sizeof(ControlFileData));


 WalSegSz = ControlFile->xlog_seg_size;

 if (!IsValidWalSegSize(WalSegSz))
  pg_fatal(ngettext("WAL segment size must be a power of two between 1 MB and 1 GB, but the control file specifies %d byte",
        "WAL segment size must be a power of two between 1 MB and 1 GB, but the control file specifies %d bytes",
        WalSegSz),
     WalSegSz);


 checkControlFile(ControlFile);
}
