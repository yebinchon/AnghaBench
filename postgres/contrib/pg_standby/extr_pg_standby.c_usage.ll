; ModuleID = '/home/carl/AnghaBench/postgres/contrib/pg_standby/extr_pg_standby.c_usage.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/pg_standby/extr_pg_standby.c_usage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [62 x i8] c"%s allows PostgreSQL warm standby servers to be configured.\0A\0A\00", align 1
@progname = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"Usage:\0A\00", align 1
@.str.2 = private unnamed_addr constant [76 x i8] c"  %s [OPTION]... ARCHIVELOCATION NEXTWALFILE XLOGFILEPATH [RESTARTWALFILE]\0A\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"\0AOptions:\0A\00", align 1
@.str.4 = private unnamed_addr constant [55 x i8] c"  -c                 copy file from archive (default)\0A\00", align 1
@.str.5 = private unnamed_addr constant [71 x i8] c"  -d                 generate lots of debugging output (testing only)\0A\00", align 1
@.str.6 = private unnamed_addr constant [116 x i8] c"  -k NUMFILESTOKEEP  if RESTARTWALFILE is not used, remove files prior to limit\0A                     (0 keeps all)\0A\00", align 1
@.str.7 = private unnamed_addr constant [66 x i8] c"  -l                 does nothing; use of link is now deprecated\0A\00", align 1
@.str.8 = private unnamed_addr constant [107 x i8] c"  -r MAXRETRIES      max number of times to retry, with progressive wait\0A                     (default=3)\0A\00", align 1
@.str.9 = private unnamed_addr constant [106 x i8] c"  -s SLEEPTIME       seconds to wait between file checks (min=1, max=60,\0A                     default=5)\0A\00", align 1
@.str.10 = private unnamed_addr constant [69 x i8] c"  -t TRIGGERFILE     trigger file to initiate failover (no default)\0A\00", align 1
@.str.11 = private unnamed_addr constant [60 x i8] c"  -V, --version      output version information, then exit\0A\00", align 1
@.str.12 = private unnamed_addr constant [78 x i8] c"  -w MAXWAITTIME     max seconds to wait for a file (0=no limit) (default=0)\0A\00", align 1
@.str.13 = private unnamed_addr constant [48 x i8] c"  -?, --help         show this help, then exit\0A\00", align 1
@.str.14 = private unnamed_addr constant [206 x i8] c"\0AMain intended use as restore_command in postgresql.conf:\0A  restore_command = 'pg_standby [OPTION]... ARCHIVELOCATION %%f %%p %%r'\0Ae.g.\0A  restore_command = 'pg_standby /mnt/server/archiverdir %%f %%p %%r'\0A\00", align 1
@.str.15 = private unnamed_addr constant [52 x i8] c"\0AReport bugs to <pgsql-bugs@lists.postgresql.org>.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @usage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usage() #0 {
  %1 = load i8*, i8** @progname, align 8
  %2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0), i8* %1)
  %3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %4 = load i8*, i8** @progname, align 8
  %5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.2, i64 0, i64 0), i8* %4)
  %6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  %7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.4, i64 0, i64 0))
  %8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.5, i64 0, i64 0))
  %9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([116 x i8], [116 x i8]* @.str.6, i64 0, i64 0))
  %10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.7, i64 0, i64 0))
  %11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([107 x i8], [107 x i8]* @.str.8, i64 0, i64 0))
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([106 x i8], [106 x i8]* @.str.9, i64 0, i64 0))
  %13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.10, i64 0, i64 0))
  %14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.11, i64 0, i64 0))
  %15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.12, i64 0, i64 0))
  %16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.13, i64 0, i64 0))
  %17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([206 x i8], [206 x i8]* @.str.14, i64 0, i64 0))
  %18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.15, i64 0, i64 0))
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
