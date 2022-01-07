
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ time_t ;
struct timeval {int tv_usec; scalar_t__ tv_sec; } ;
struct timespec {int tv_nsec; scalar_t__ tv_sec; } ;
typedef int sqlite3_vfs ;
typedef int sqlite3_int64 ;


 int CLOCK_REALTIME ;
 int SQLITE_OK ;
 int UNUSED_PARAMETER (int *) ;
 int clock_gettime (int ,struct timespec*) ;
 int gettimeofday (struct timeval*,int ) ;
 scalar_t__ sqlite3_current_time ;
 int time (scalar_t__*) ;

__attribute__((used)) static int unixCurrentTimeInt64(sqlite3_vfs *NotUsed, sqlite3_int64 *piNow){
  static const sqlite3_int64 unixEpoch = 24405875*(sqlite3_int64)8640000;
  int rc = SQLITE_OK;
  struct timeval sNow;
  (void)gettimeofday(&sNow, 0);
  *piNow = unixEpoch + 1000*(sqlite3_int64)sNow.tv_sec + sNow.tv_usec/1000;







  UNUSED_PARAMETER(NotUsed);
  return rc;
}
