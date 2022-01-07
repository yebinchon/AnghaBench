
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TimestampTz ;


 int exit (int) ;
 scalar_t__ fsync (int ) ;
 scalar_t__ fsync_interval ;
 int outfd ;
 int outfile ;
 int output_fsync_lsn ;
 int output_isfile ;
 int output_last_fsync ;
 int output_needs_fsync ;
 int output_written_lsn ;
 int pg_log_fatal (char*,int ) ;

__attribute__((used)) static bool
OutputFsync(TimestampTz now)
{
 output_last_fsync = now;

 output_fsync_lsn = output_written_lsn;

 if (fsync_interval <= 0)
  return 1;

 if (!output_needs_fsync)
  return 1;

 output_needs_fsync = 0;


 if (!output_isfile)
  return 1;

 if (fsync(outfd) != 0)
 {
  pg_log_fatal("could not fsync file \"%s\": %m", outfile);
  exit(1);
 }

 return 1;
}
