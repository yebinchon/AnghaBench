
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_mtime; int st_gid; int st_uid; int st_mode; int st_size; } ;
typedef int int64 ;
typedef int h ;
typedef enum tarError { ____Placeholder_tarError } tarError ;


 int ERROR ;



 int elog (int ,char*,int) ;
 int ereport (int ,int ) ;
 int errmsg (char*,char const*,...) ;
 int pq_putmessage (char,char*,int) ;
 int tarCreateHeader (char*,char const*,char const*,int ,int ,int ,int ,int ) ;

__attribute__((used)) static int64
_tarWriteHeader(const char *filename, const char *linktarget,
    struct stat *statbuf, bool sizeonly)
{
 char h[512];
 enum tarError rc;

 if (!sizeonly)
 {
  rc = tarCreateHeader(h, filename, linktarget, statbuf->st_size,
        statbuf->st_mode, statbuf->st_uid, statbuf->st_gid,
        statbuf->st_mtime);

  switch (rc)
  {
   case 129:
    break;
   case 130:
    ereport(ERROR,
      (errmsg("file name too long for tar format: \"%s\"",
        filename)));
    break;
   case 128:
    ereport(ERROR,
      (errmsg("symbolic link target too long for tar format: "
        "file name \"%s\", target \"%s\"",
        filename, linktarget)));
    break;
   default:
    elog(ERROR, "unrecognized tar error: %d", rc);
  }

  pq_putmessage('d', h, sizeof(h));
 }

 return sizeof(h);
}
