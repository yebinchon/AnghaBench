
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TransactionId ;


 scalar_t__ ENOENT ;
 int MAXPGPATH ;
 int TwoPhaseFilePath (char*,int ) ;
 int WARNING ;
 int ereport (int ,int ) ;
 int errcode_for_file_access () ;
 int errmsg (char*,char*) ;
 scalar_t__ errno ;
 scalar_t__ unlink (char*) ;

__attribute__((used)) static void
RemoveTwoPhaseFile(TransactionId xid, bool giveWarning)
{
 char path[MAXPGPATH];

 TwoPhaseFilePath(path, xid);
 if (unlink(path))
  if (errno != ENOENT || giveWarning)
   ereport(WARNING,
     (errcode_for_file_access(),
      errmsg("could not remove file \"%s\": %m", path)));
}
