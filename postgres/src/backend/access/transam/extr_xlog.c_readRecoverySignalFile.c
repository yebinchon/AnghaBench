
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int dummy; } ;


 int ArchiveRecoveryRequested ;
 int BasicOpenFilePerm (int ,int,int) ;
 int ERRCODE_FEATURE_NOT_SUPPORTED ;
 int FATAL ;
 scalar_t__ IsBootstrapProcessingMode () ;
 int IsUnderPostmaster ;
 int O_RDWR ;
 int PG_BINARY ;
 int RECOVERY_COMMAND_DONE ;
 int RECOVERY_COMMAND_FILE ;
 int RECOVERY_SIGNAL_FILE ;
 int STANDBY_SIGNAL_FILE ;
 int S_IRUSR ;
 int S_IWUSR ;
 int StandbyModeRequested ;
 int close (int) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errcode_for_file_access () ;
 int errmsg (char*,...) ;
 int get_sync_bit (int ) ;
 int pg_fsync (int) ;
 int recovery_signal_file_found ;
 int standby_signal_file_found ;
 scalar_t__ stat (int ,struct stat*) ;
 int sync_method ;
 int unlink (int ) ;

__attribute__((used)) static void
readRecoverySignalFile(void)
{
 struct stat stat_buf;

 if (IsBootstrapProcessingMode())
  return;




 if (stat(RECOVERY_COMMAND_FILE, &stat_buf) == 0)
  ereport(FATAL,
    (errcode_for_file_access(),
     errmsg("using recovery command file \"%s\" is not supported",
      RECOVERY_COMMAND_FILE)));




 unlink(RECOVERY_COMMAND_DONE);
 if (stat(STANDBY_SIGNAL_FILE, &stat_buf) == 0)
 {
  int fd;

  fd = BasicOpenFilePerm(STANDBY_SIGNAL_FILE, O_RDWR | PG_BINARY | get_sync_bit(sync_method),
          S_IRUSR | S_IWUSR);
  if (fd >= 0)
  {
   (void) pg_fsync(fd);
   close(fd);
  }
  standby_signal_file_found = 1;
 }
 else if (stat(RECOVERY_SIGNAL_FILE, &stat_buf) == 0)
 {
  int fd;

  fd = BasicOpenFilePerm(RECOVERY_SIGNAL_FILE, O_RDWR | PG_BINARY | get_sync_bit(sync_method),
          S_IRUSR | S_IWUSR);
  if (fd >= 0)
  {
   (void) pg_fsync(fd);
   close(fd);
  }
  recovery_signal_file_found = 1;
 }

 StandbyModeRequested = 0;
 ArchiveRecoveryRequested = 0;
 if (standby_signal_file_found)
 {
  StandbyModeRequested = 1;
  ArchiveRecoveryRequested = 1;
 }
 else if (recovery_signal_file_found)
 {
  StandbyModeRequested = 0;
  ArchiveRecoveryRequested = 1;
 }
 else
  return;





 if (StandbyModeRequested && !IsUnderPostmaster)
  ereport(FATAL,
    (errcode(ERRCODE_FEATURE_NOT_SUPPORTED),
     errmsg("standby mode is not supported by single-user servers")));
}
