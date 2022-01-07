; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/pg_resetwal/extr_pg_resetwal.c_usage.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/pg_resetwal/extr_pg_resetwal.c_usage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [44 x i8] c"%s resets the PostgreSQL write-ahead log.\0A\0A\00", align 1
@progname = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [34 x i8] c"Usage:\0A  %s [OPTION]... DATADIR\0A\0A\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"Options:\0A\00", align 1
@.str.3 = private unnamed_addr constant [187 x i8] c"  -c, --commit-timestamp-ids=XID,XID\0A                                 set oldest and newest transactions bearing\0A                                 commit timestamp (zero means no change)\0A\00", align 1
@.str.4 = private unnamed_addr constant [49 x i8] c" [-D, --pgdata=]DATADIR          data directory\0A\00", align 1
@.str.5 = private unnamed_addr constant [64 x i8] c"  -e, --epoch=XIDEPOCH           set next transaction ID epoch\0A\00", align 1
@.str.6 = private unnamed_addr constant [58 x i8] c"  -f, --force                    force update to be done\0A\00", align 1
@.str.7 = private unnamed_addr constant [76 x i8] c"  -l, --next-wal-file=WALFILE    set minimum starting location for new WAL\0A\00", align 1
@.str.8 = private unnamed_addr constant [74 x i8] c"  -m, --multixact-ids=MXID,MXID  set next and oldest multitransaction ID\0A\00", align 1
@.str.9 = private unnamed_addr constant [74 x i8] c"  -n, --dry-run                  no update, just show what would be done\0A\00", align 1
@.str.10 = private unnamed_addr constant [47 x i8] c"  -o, --next-oid=OID             set next OID\0A\00", align 1
@.str.11 = private unnamed_addr constant [67 x i8] c"  -O, --multixact-offset=OFFSET  set next multitransaction offset\0A\00", align 1
@.str.12 = private unnamed_addr constant [72 x i8] c"  -V, --version                  output version information, then exit\0A\00", align 1
@.str.13 = private unnamed_addr constant [58 x i8] c"  -x, --next-transaction-id=XID  set next transaction ID\0A\00", align 1
@.str.14 = private unnamed_addr constant [69 x i8] c"      --wal-segsize=SIZE         size of WAL segments, in megabytes\0A\00", align 1
@.str.15 = private unnamed_addr constant [60 x i8] c"  -?, --help                     show this help, then exit\0A\00", align 1
@.str.16 = private unnamed_addr constant [52 x i8] c"\0AReport bugs to <pgsql-bugs@lists.postgresql.org>.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @usage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usage() #0 {
  %1 = call i8* @_(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %2 = load i8*, i8** @progname, align 8
  %3 = call i32 (i8*, ...) @printf(i8* %1, i8* %2)
  %4 = call i8* @_(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %5 = load i8*, i8** @progname, align 8
  %6 = call i32 (i8*, ...) @printf(i8* %4, i8* %5)
  %7 = call i8* @_(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %8 = call i32 (i8*, ...) @printf(i8* %7)
  %9 = call i8* @_(i8* getelementptr inbounds ([187 x i8], [187 x i8]* @.str.3, i64 0, i64 0))
  %10 = call i32 (i8*, ...) @printf(i8* %9)
  %11 = call i8* @_(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.4, i64 0, i64 0))
  %12 = call i32 (i8*, ...) @printf(i8* %11)
  %13 = call i8* @_(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.5, i64 0, i64 0))
  %14 = call i32 (i8*, ...) @printf(i8* %13)
  %15 = call i8* @_(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.6, i64 0, i64 0))
  %16 = call i32 (i8*, ...) @printf(i8* %15)
  %17 = call i8* @_(i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.7, i64 0, i64 0))
  %18 = call i32 (i8*, ...) @printf(i8* %17)
  %19 = call i8* @_(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.8, i64 0, i64 0))
  %20 = call i32 (i8*, ...) @printf(i8* %19)
  %21 = call i8* @_(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.9, i64 0, i64 0))
  %22 = call i32 (i8*, ...) @printf(i8* %21)
  %23 = call i8* @_(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.10, i64 0, i64 0))
  %24 = call i32 (i8*, ...) @printf(i8* %23)
  %25 = call i8* @_(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.11, i64 0, i64 0))
  %26 = call i32 (i8*, ...) @printf(i8* %25)
  %27 = call i8* @_(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.12, i64 0, i64 0))
  %28 = call i32 (i8*, ...) @printf(i8* %27)
  %29 = call i8* @_(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.13, i64 0, i64 0))
  %30 = call i32 (i8*, ...) @printf(i8* %29)
  %31 = call i8* @_(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.14, i64 0, i64 0))
  %32 = call i32 (i8*, ...) @printf(i8* %31)
  %33 = call i8* @_(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.15, i64 0, i64 0))
  %34 = call i32 (i8*, ...) @printf(i8* %33)
  %35 = call i8* @_(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.16, i64 0, i64 0))
  %36 = call i32 (i8*, ...) @printf(i8* %35)
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
