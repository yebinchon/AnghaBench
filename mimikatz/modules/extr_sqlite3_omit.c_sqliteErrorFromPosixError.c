
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SQLITE_BUSY ;
 int SQLITE_IOERR_CHECKRESERVEDLOCK ;
 int SQLITE_IOERR_LOCK ;
 int SQLITE_IOERR_RDLOCK ;
 int SQLITE_IOERR_UNLOCK ;
 int SQLITE_PERM ;
 int assert (int) ;

__attribute__((used)) static int sqliteErrorFromPosixError(int posixError, int sqliteIOErr) {
  assert( (sqliteIOErr == SQLITE_IOERR_LOCK) ||
          (sqliteIOErr == SQLITE_IOERR_UNLOCK) ||
          (sqliteIOErr == SQLITE_IOERR_RDLOCK) ||
          (sqliteIOErr == SQLITE_IOERR_CHECKRESERVEDLOCK) );
  switch (posixError) {
  case 134:
  case 133:
  case 128:
  case 132:
  case 131:
  case 130:


    return SQLITE_BUSY;

  case 129:
    return SQLITE_PERM;

  default:
    return sqliteIOErr;
  }
}
