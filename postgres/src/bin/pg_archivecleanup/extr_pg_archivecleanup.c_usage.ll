; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/pg_archivecleanup/extr_pg_archivecleanup.c_usage.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/pg_archivecleanup/extr_pg_archivecleanup.c_usage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [55 x i8] c"%s removes older WAL files from PostgreSQL archives.\0A\0A\00", align 1
@progname = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"Usage:\0A\00", align 1
@.str.2 = private unnamed_addr constant [52 x i8] c"  %s [OPTION]... ARCHIVELOCATION OLDESTKEPTWALFILE\0A\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"\0AOptions:\0A\00", align 1
@.str.4 = private unnamed_addr constant [55 x i8] c"  -d             generate debug output (verbose mode)\0A\00", align 1
@.str.5 = private unnamed_addr constant [77 x i8] c"  -n             dry run, show the names of the files that would be removed\0A\00", align 1
@.str.6 = private unnamed_addr constant [56 x i8] c"  -V, --version  output version information, then exit\0A\00", align 1
@.str.7 = private unnamed_addr constant [61 x i8] c"  -x EXT         clean up files if they have this extension\0A\00", align 1
@.str.8 = private unnamed_addr constant [44 x i8] c"  -?, --help     show this help, then exit\0A\00", align 1
@.str.9 = private unnamed_addr constant [218 x i8] c"\0AFor use as archive_cleanup_command in postgresql.conf:\0A  archive_cleanup_command = 'pg_archivecleanup [OPTION]... ARCHIVELOCATION %%r'\0Ae.g.\0A  archive_cleanup_command = 'pg_archivecleanup /mnt/server/archiverdir %%r'\0A\00", align 1
@.str.10 = private unnamed_addr constant [136 x i8] c"\0AOr for use as a standalone archive cleaner:\0Ae.g.\0A  pg_archivecleanup /mnt/server/archiverdir 000000010000000000000010.00000020.backup\0A\00", align 1
@.str.11 = private unnamed_addr constant [52 x i8] c"\0AReport bugs to <pgsql-bugs@lists.postgresql.org>.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @usage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usage() #0 {
  %1 = call i8* @_(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0))
  %2 = load i8*, i8** @progname, align 8
  %3 = call i32 (i8*, ...) @printf(i8* %1, i8* %2)
  %4 = call i8* @_(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %5 = call i32 (i8*, ...) @printf(i8* %4)
  %6 = call i8* @_(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0))
  %7 = load i8*, i8** @progname, align 8
  %8 = call i32 (i8*, ...) @printf(i8* %6, i8* %7)
  %9 = call i8* @_(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  %10 = call i32 (i8*, ...) @printf(i8* %9)
  %11 = call i8* @_(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.4, i64 0, i64 0))
  %12 = call i32 (i8*, ...) @printf(i8* %11)
  %13 = call i8* @_(i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.5, i64 0, i64 0))
  %14 = call i32 (i8*, ...) @printf(i8* %13)
  %15 = call i8* @_(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.6, i64 0, i64 0))
  %16 = call i32 (i8*, ...) @printf(i8* %15)
  %17 = call i8* @_(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.7, i64 0, i64 0))
  %18 = call i32 (i8*, ...) @printf(i8* %17)
  %19 = call i8* @_(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.8, i64 0, i64 0))
  %20 = call i32 (i8*, ...) @printf(i8* %19)
  %21 = call i8* @_(i8* getelementptr inbounds ([218 x i8], [218 x i8]* @.str.9, i64 0, i64 0))
  %22 = call i32 (i8*, ...) @printf(i8* %21)
  %23 = call i8* @_(i8* getelementptr inbounds ([136 x i8], [136 x i8]* @.str.10, i64 0, i64 0))
  %24 = call i32 (i8*, ...) @printf(i8* %23)
  %25 = call i8* @_(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.11, i64 0, i64 0))
  %26 = call i32 (i8*, ...) @printf(i8* %25)
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
