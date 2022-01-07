
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MAX_PATHNAME ;
 int OSTRACE (char*) ;
 int O_BINARY ;
 int O_RDONLY ;
 int SQLITE_CANTOPEN_BKPT ;
 int SQLITE_OK ;
 int robust_open (char*,int,int ) ;
 int sqlite3_snprintf (int ,char*,char*,char const*) ;
 scalar_t__ strlen (char*) ;
 int unixLogError (int ,char*,char*) ;

__attribute__((used)) static int openDirectory(const char *zFilename, int *pFd){
  int ii;
  int fd = -1;
  char zDirname[MAX_PATHNAME+1];

  sqlite3_snprintf(MAX_PATHNAME, zDirname, "%s", zFilename);
  for(ii=(int)strlen(zDirname); ii>0 && zDirname[ii]!='/'; ii--);
  if( ii>0 ){
    zDirname[ii] = '\0';
  }else{
    if( zDirname[0]!='/' ) zDirname[0] = '.';
    zDirname[1] = 0;
  }
  fd = robust_open(zDirname, O_RDONLY|O_BINARY, 0);
  if( fd>=0 ){
    OSTRACE(("OPENDIR %-3d %s\n", fd, zDirname));
  }
  *pFd = fd;
  if( fd>=0 ) return SQLITE_OK;
  return unixLogError(SQLITE_CANTOPEN_BKPT, "openDirectory", zDirname);
}
