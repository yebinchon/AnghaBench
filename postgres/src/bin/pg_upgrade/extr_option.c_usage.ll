; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/pg_upgrade/extr_option.c_usage.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/pg_upgrade/extr_option.c_usage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_4__ = type { i8* }

@.str = private unnamed_addr constant [73 x i8] c"pg_upgrade upgrades a PostgreSQL cluster to a different major version.\0A\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"Usage:\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"  pg_upgrade [OPTION]...\0A\0A\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"Options:\0A\00", align 1
@.str.4 = private unnamed_addr constant [66 x i8] c"  -b, --old-bindir=BINDIR       old cluster executable directory\0A\00", align 1
@.str.5 = private unnamed_addr constant [137 x i8] c"  -B, --new-bindir=BINDIR       new cluster executable directory (default\0A                                same directory as pg_upgrade)\0A\00", align 1
@.str.6 = private unnamed_addr constant [76 x i8] c"  -c, --check                   check clusters only, don't change any data\0A\00", align 1
@.str.7 = private unnamed_addr constant [60 x i8] c"  -d, --old-datadir=DATADIR     old cluster data directory\0A\00", align 1
@.str.8 = private unnamed_addr constant [60 x i8] c"  -D, --new-datadir=DATADIR     new cluster data directory\0A\00", align 1
@.str.9 = private unnamed_addr constant [84 x i8] c"  -j, --jobs                    number of simultaneous processes or threads to use\0A\00", align 1
@.str.10 = private unnamed_addr constant [78 x i8] c"  -k, --link                    link instead of copying files to new cluster\0A\00", align 1
@.str.11 = private unnamed_addr constant [75 x i8] c"  -o, --old-options=OPTIONS     old cluster options to pass to the server\0A\00", align 1
@.str.12 = private unnamed_addr constant [75 x i8] c"  -O, --new-options=OPTIONS     new cluster options to pass to the server\0A\00", align 1
@.str.13 = private unnamed_addr constant [70 x i8] c"  -p, --old-port=PORT           old cluster port number (default %d)\0A\00", align 1
@old_cluster = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@.str.14 = private unnamed_addr constant [70 x i8] c"  -P, --new-port=PORT           new cluster port number (default %d)\0A\00", align 1
@new_cluster = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@.str.15 = private unnamed_addr constant [72 x i8] c"  -r, --retain                  retain SQL and log files after success\0A\00", align 1
@.str.16 = private unnamed_addr constant [80 x i8] c"  -s, --socketdir=DIR           socket directory to use (default current dir.)\0A\00", align 1
@.str.17 = private unnamed_addr constant [66 x i8] c"  -U, --username=NAME           cluster superuser (default \22%s\22)\0A\00", align 1
@os_info = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@.str.18 = private unnamed_addr constant [65 x i8] c"  -v, --verbose                 enable verbose internal logging\0A\00", align 1
@.str.19 = private unnamed_addr constant [72 x i8] c"  -V, --version                 display version information, then exit\0A\00", align 1
@.str.20 = private unnamed_addr constant [79 x i8] c"  --clone                       clone instead of copying files to new cluster\0A\00", align 1
@.str.21 = private unnamed_addr constant [59 x i8] c"  -?, --help                    show this help, then exit\0A\00", align 1
@.str.22 = private unnamed_addr constant [208 x i8] c"\0ABefore running pg_upgrade you must:\0A  create a new database cluster (using the new version of initdb)\0A  shutdown the postmaster servicing the old cluster\0A  shutdown the postmaster servicing the new cluster\0A\00", align 1
@.str.23 = private unnamed_addr constant [289 x i8] c"\0AWhen you run pg_upgrade, you must provide the following information:\0A  the data directory for the old cluster  (-d DATADIR)\0A  the data directory for the new cluster  (-D DATADIR)\0A  the \22bin\22 directory for the old version (-b BINDIR)\0A  the \22bin\22 directory for the new version (-B BINDIR)\0A\00", align 1
@.str.24 = private unnamed_addr constant [105 x i8] c"\0AFor example:\0A  pg_upgrade -d oldCluster/data -D newCluster/data -b oldCluster/bin -B newCluster/bin\0Aor\0A\00", align 1
@.str.25 = private unnamed_addr constant [160 x i8] c"  $ export PGDATAOLD=oldCluster/data\0A  $ export PGDATANEW=newCluster/data\0A  $ export PGBINOLD=oldCluster/bin\0A  $ export PGBINNEW=newCluster/bin\0A  $ pg_upgrade\0A\00", align 1
@.str.26 = private unnamed_addr constant [52 x i8] c"\0AReport bugs to <pgsql-bugs@lists.postgresql.org>.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @usage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usage() #0 {
  %1 = call i8* @_(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str, i64 0, i64 0))
  %2 = call i32 (i8*, ...) @printf(i8* %1)
  %3 = call i8* @_(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %4 = call i32 (i8*, ...) @printf(i8* %3)
  %5 = call i8* @_(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %6 = call i32 (i8*, ...) @printf(i8* %5)
  %7 = call i8* @_(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %8 = call i32 (i8*, ...) @printf(i8* %7)
  %9 = call i8* @_(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.4, i64 0, i64 0))
  %10 = call i32 (i8*, ...) @printf(i8* %9)
  %11 = call i8* @_(i8* getelementptr inbounds ([137 x i8], [137 x i8]* @.str.5, i64 0, i64 0))
  %12 = call i32 (i8*, ...) @printf(i8* %11)
  %13 = call i8* @_(i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.6, i64 0, i64 0))
  %14 = call i32 (i8*, ...) @printf(i8* %13)
  %15 = call i8* @_(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.7, i64 0, i64 0))
  %16 = call i32 (i8*, ...) @printf(i8* %15)
  %17 = call i8* @_(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.8, i64 0, i64 0))
  %18 = call i32 (i8*, ...) @printf(i8* %17)
  %19 = call i8* @_(i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.9, i64 0, i64 0))
  %20 = call i32 (i8*, ...) @printf(i8* %19)
  %21 = call i8* @_(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.10, i64 0, i64 0))
  %22 = call i32 (i8*, ...) @printf(i8* %21)
  %23 = call i8* @_(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.11, i64 0, i64 0))
  %24 = call i32 (i8*, ...) @printf(i8* %23)
  %25 = call i8* @_(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.12, i64 0, i64 0))
  %26 = call i32 (i8*, ...) @printf(i8* %25)
  %27 = call i8* @_(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.13, i64 0, i64 0))
  %28 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @old_cluster, i32 0, i32 0), align 4
  %29 = call i32 (i8*, ...) @printf(i8* %27, i32 %28)
  %30 = call i8* @_(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.14, i64 0, i64 0))
  %31 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @new_cluster, i32 0, i32 0), align 4
  %32 = call i32 (i8*, ...) @printf(i8* %30, i32 %31)
  %33 = call i8* @_(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.15, i64 0, i64 0))
  %34 = call i32 (i8*, ...) @printf(i8* %33)
  %35 = call i8* @_(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.16, i64 0, i64 0))
  %36 = call i32 (i8*, ...) @printf(i8* %35)
  %37 = call i8* @_(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.17, i64 0, i64 0))
  %38 = load i8*, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @os_info, i32 0, i32 0), align 8
  %39 = call i32 (i8*, ...) @printf(i8* %37, i8* %38)
  %40 = call i8* @_(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.18, i64 0, i64 0))
  %41 = call i32 (i8*, ...) @printf(i8* %40)
  %42 = call i8* @_(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.19, i64 0, i64 0))
  %43 = call i32 (i8*, ...) @printf(i8* %42)
  %44 = call i8* @_(i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.20, i64 0, i64 0))
  %45 = call i32 (i8*, ...) @printf(i8* %44)
  %46 = call i8* @_(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.21, i64 0, i64 0))
  %47 = call i32 (i8*, ...) @printf(i8* %46)
  %48 = call i8* @_(i8* getelementptr inbounds ([208 x i8], [208 x i8]* @.str.22, i64 0, i64 0))
  %49 = call i32 (i8*, ...) @printf(i8* %48)
  %50 = call i8* @_(i8* getelementptr inbounds ([289 x i8], [289 x i8]* @.str.23, i64 0, i64 0))
  %51 = call i32 (i8*, ...) @printf(i8* %50)
  %52 = call i8* @_(i8* getelementptr inbounds ([105 x i8], [105 x i8]* @.str.24, i64 0, i64 0))
  %53 = call i32 (i8*, ...) @printf(i8* %52)
  %54 = call i8* @_(i8* getelementptr inbounds ([160 x i8], [160 x i8]* @.str.25, i64 0, i64 0))
  %55 = call i32 (i8*, ...) @printf(i8* %54)
  %56 = call i8* @_(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.26, i64 0, i64 0))
  %57 = call i32 (i8*, ...) @printf(i8* %56)
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
