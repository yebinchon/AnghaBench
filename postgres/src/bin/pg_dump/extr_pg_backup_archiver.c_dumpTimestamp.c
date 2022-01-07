
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
typedef int buf ;
typedef int ArchiveHandle ;


 int PGDUMP_STRFTIME_FMT ;
 int ahprintf (int *,char*,char const*,char*) ;
 int localtime (int *) ;
 scalar_t__ strftime (char*,int,int ,int ) ;

__attribute__((used)) static void
dumpTimestamp(ArchiveHandle *AH, const char *msg, time_t tim)
{
 char buf[64];

 if (strftime(buf, sizeof(buf), PGDUMP_STRFTIME_FMT, localtime(&tim)) != 0)
  ahprintf(AH, "-- %s %s\n\n", msg, buf);
}
