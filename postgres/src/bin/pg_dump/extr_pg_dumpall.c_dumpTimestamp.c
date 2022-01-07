
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
typedef int buf ;


 int OPF ;
 int PGDUMP_STRFTIME_FMT ;
 int fprintf (int ,char*,char const*,char*) ;
 int localtime (int *) ;
 scalar_t__ strftime (char*,int,int ,int ) ;
 int time (int *) ;

__attribute__((used)) static void
dumpTimestamp(const char *msg)
{
 char buf[64];
 time_t now = time(((void*)0));

 if (strftime(buf, sizeof(buf), PGDUMP_STRFTIME_FMT, localtime(&now)) != 0)
  fprintf(OPF, "-- %s %s\n\n", msg, buf);
}
