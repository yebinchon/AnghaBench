
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int aErr ;


 int errno ;
 int memset (char*,int ,int) ;
 int sqlite3_log (int,char*,int,int,char const*,char const*,char*) ;
 char* strerror (int) ;
 char* strerror_r (int,char*,int) ;

__attribute__((used)) static int unixLogErrorAtLine(
  int errcode,
  const char *zFunc,
  const char *zPath,
  int iLine
){
  char *zErr;
  int iErrno = errno;
  zErr = strerror(iErrno);


  if( zPath==0 ) zPath = "";
  sqlite3_log(errcode,
      "os_unix.c:%d: (%d) %s(%s) - %s",
      iLine, iErrno, zFunc, zPath, zErr
  );

  return errcode;
}
