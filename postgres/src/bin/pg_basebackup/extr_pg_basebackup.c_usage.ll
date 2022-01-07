; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/pg_basebackup/extr_pg_basebackup.c_usage.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/pg_basebackup/extr_pg_basebackup.c_usage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [57 x i8] c"%s takes a base backup of a running PostgreSQL server.\0A\0A\00", align 1
@progname = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"Usage:\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"  %s [OPTION]...\0A\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"\0AOptions controlling the output:\0A\00", align 1
@.str.4 = private unnamed_addr constant [61 x i8] c"  -D, --pgdata=DIRECTORY receive base backup into directory\0A\00", align 1
@.str.5 = private unnamed_addr constant [63 x i8] c"  -F, --format=p|t       output format (plain (default), tar)\0A\00", align 1
@.str.6 = private unnamed_addr constant [136 x i8] c"  -r, --max-rate=RATE    maximum transfer rate to transfer data directory\0A                         (in kB/s, or use suffix \22k\22 or \22M\22)\0A\00", align 1
@.str.7 = private unnamed_addr constant [90 x i8] c"  -R, --write-recovery-conf\0A                         write configuration for replication\0A\00", align 1
@.str.8 = private unnamed_addr constant [107 x i8] c"  -T, --tablespace-mapping=OLDDIR=NEWDIR\0A                         relocate tablespace in OLDDIR to NEWDIR\0A\00", align 1
@.str.9 = private unnamed_addr constant [69 x i8] c"      --waldir=WALDIR    location for the write-ahead log directory\0A\00", align 1
@.str.10 = private unnamed_addr constant [112 x i8] c"  -X, --wal-method=none|fetch|stream\0A                         include required WAL files with specified method\0A\00", align 1
@.str.11 = private unnamed_addr constant [46 x i8] c"  -z, --gzip             compress tar output\0A\00", align 1
@.str.12 = private unnamed_addr constant [75 x i8] c"  -Z, --compress=0-9     compress tar output with given compression level\0A\00", align 1
@.str.13 = private unnamed_addr constant [19 x i8] c"\0AGeneral options:\0A\00", align 1
@.str.14 = private unnamed_addr constant [90 x i8] c"  -c, --checkpoint=fast|spread\0A                         set fast or spread checkpointing\0A\00", align 1
@.str.15 = private unnamed_addr constant [50 x i8] c"  -C, --create-slot      create replication slot\0A\00", align 1
@.str.16 = private unnamed_addr constant [43 x i8] c"  -l, --label=LABEL      set backup label\0A\00", align 1
@.str.17 = private unnamed_addr constant [55 x i8] c"  -n, --no-clean         do not clean up after errors\0A\00", align 1
@.str.18 = private unnamed_addr constant [79 x i8] c"  -N, --no-sync          do not wait for changes to be written safely to disk\0A\00", align 1
@.str.19 = private unnamed_addr constant [52 x i8] c"  -P, --progress         show progress information\0A\00", align 1
@.str.20 = private unnamed_addr constant [50 x i8] c"  -S, --slot=SLOTNAME    replication slot to use\0A\00", align 1
@.str.21 = private unnamed_addr constant [50 x i8] c"  -v, --verbose          output verbose messages\0A\00", align 1
@.str.22 = private unnamed_addr constant [64 x i8] c"  -V, --version          output version information, then exit\0A\00", align 1
@.str.23 = private unnamed_addr constant [73 x i8] c"      --no-slot          prevent creation of temporary replication slot\0A\00", align 1
@.str.24 = private unnamed_addr constant [78 x i8] c"      --no-verify-checksums\0A                         do not verify checksums\0A\00", align 1
@.str.25 = private unnamed_addr constant [52 x i8] c"  -?, --help             show this help, then exit\0A\00", align 1
@.str.26 = private unnamed_addr constant [22 x i8] c"\0AConnection options:\0A\00", align 1
@.str.27 = private unnamed_addr constant [44 x i8] c"  -d, --dbname=CONNSTR   connection string\0A\00", align 1
@.str.28 = private unnamed_addr constant [67 x i8] c"  -h, --host=HOSTNAME    database server host or socket directory\0A\00", align 1
@.str.29 = private unnamed_addr constant [54 x i8] c"  -p, --port=PORT        database server port number\0A\00", align 1
@.str.30 = private unnamed_addr constant [115 x i8] c"  -s, --status-interval=INTERVAL\0A                         time between status packets sent to server (in seconds)\0A\00", align 1
@.str.31 = private unnamed_addr constant [61 x i8] c"  -U, --username=NAME    connect as specified database user\0A\00", align 1
@.str.32 = private unnamed_addr constant [52 x i8] c"  -w, --no-password      never prompt for password\0A\00", align 1
@.str.33 = private unnamed_addr constant [78 x i8] c"  -W, --password         force password prompt (should happen automatically)\0A\00", align 1
@.str.34 = private unnamed_addr constant [52 x i8] c"\0AReport bugs to <pgsql-bugs@lists.postgresql.org>.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @usage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usage() #0 {
  %1 = call i8* @_(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0))
  %2 = load i8*, i8** @progname, align 8
  %3 = call i32 (i8*, ...) @printf(i8* %1, i8* %2)
  %4 = call i8* @_(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %5 = call i32 (i8*, ...) @printf(i8* %4)
  %6 = call i8* @_(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %7 = load i8*, i8** @progname, align 8
  %8 = call i32 (i8*, ...) @printf(i8* %6, i8* %7)
  %9 = call i8* @_(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  %10 = call i32 (i8*, ...) @printf(i8* %9)
  %11 = call i8* @_(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.4, i64 0, i64 0))
  %12 = call i32 (i8*, ...) @printf(i8* %11)
  %13 = call i8* @_(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.5, i64 0, i64 0))
  %14 = call i32 (i8*, ...) @printf(i8* %13)
  %15 = call i8* @_(i8* getelementptr inbounds ([136 x i8], [136 x i8]* @.str.6, i64 0, i64 0))
  %16 = call i32 (i8*, ...) @printf(i8* %15)
  %17 = call i8* @_(i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str.7, i64 0, i64 0))
  %18 = call i32 (i8*, ...) @printf(i8* %17)
  %19 = call i8* @_(i8* getelementptr inbounds ([107 x i8], [107 x i8]* @.str.8, i64 0, i64 0))
  %20 = call i32 (i8*, ...) @printf(i8* %19)
  %21 = call i8* @_(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.9, i64 0, i64 0))
  %22 = call i32 (i8*, ...) @printf(i8* %21)
  %23 = call i8* @_(i8* getelementptr inbounds ([112 x i8], [112 x i8]* @.str.10, i64 0, i64 0))
  %24 = call i32 (i8*, ...) @printf(i8* %23)
  %25 = call i8* @_(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.11, i64 0, i64 0))
  %26 = call i32 (i8*, ...) @printf(i8* %25)
  %27 = call i8* @_(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.12, i64 0, i64 0))
  %28 = call i32 (i8*, ...) @printf(i8* %27)
  %29 = call i8* @_(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.13, i64 0, i64 0))
  %30 = call i32 (i8*, ...) @printf(i8* %29)
  %31 = call i8* @_(i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str.14, i64 0, i64 0))
  %32 = call i32 (i8*, ...) @printf(i8* %31)
  %33 = call i8* @_(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.15, i64 0, i64 0))
  %34 = call i32 (i8*, ...) @printf(i8* %33)
  %35 = call i8* @_(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.16, i64 0, i64 0))
  %36 = call i32 (i8*, ...) @printf(i8* %35)
  %37 = call i8* @_(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.17, i64 0, i64 0))
  %38 = call i32 (i8*, ...) @printf(i8* %37)
  %39 = call i8* @_(i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.18, i64 0, i64 0))
  %40 = call i32 (i8*, ...) @printf(i8* %39)
  %41 = call i8* @_(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.19, i64 0, i64 0))
  %42 = call i32 (i8*, ...) @printf(i8* %41)
  %43 = call i8* @_(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.20, i64 0, i64 0))
  %44 = call i32 (i8*, ...) @printf(i8* %43)
  %45 = call i8* @_(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.21, i64 0, i64 0))
  %46 = call i32 (i8*, ...) @printf(i8* %45)
  %47 = call i8* @_(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.22, i64 0, i64 0))
  %48 = call i32 (i8*, ...) @printf(i8* %47)
  %49 = call i8* @_(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.23, i64 0, i64 0))
  %50 = call i32 (i8*, ...) @printf(i8* %49)
  %51 = call i8* @_(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.24, i64 0, i64 0))
  %52 = call i32 (i8*, ...) @printf(i8* %51)
  %53 = call i8* @_(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.25, i64 0, i64 0))
  %54 = call i32 (i8*, ...) @printf(i8* %53)
  %55 = call i8* @_(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.26, i64 0, i64 0))
  %56 = call i32 (i8*, ...) @printf(i8* %55)
  %57 = call i8* @_(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.27, i64 0, i64 0))
  %58 = call i32 (i8*, ...) @printf(i8* %57)
  %59 = call i8* @_(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.28, i64 0, i64 0))
  %60 = call i32 (i8*, ...) @printf(i8* %59)
  %61 = call i8* @_(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.29, i64 0, i64 0))
  %62 = call i32 (i8*, ...) @printf(i8* %61)
  %63 = call i8* @_(i8* getelementptr inbounds ([115 x i8], [115 x i8]* @.str.30, i64 0, i64 0))
  %64 = call i32 (i8*, ...) @printf(i8* %63)
  %65 = call i8* @_(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.31, i64 0, i64 0))
  %66 = call i32 (i8*, ...) @printf(i8* %65)
  %67 = call i8* @_(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.32, i64 0, i64 0))
  %68 = call i32 (i8*, ...) @printf(i8* %67)
  %69 = call i8* @_(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.33, i64 0, i64 0))
  %70 = call i32 (i8*, ...) @printf(i8* %69)
  %71 = call i8* @_(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.34, i64 0, i64 0))
  %72 = call i32 (i8*, ...) @printf(i8* %71)
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i8* @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
