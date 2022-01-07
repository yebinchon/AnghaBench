; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/pg_ctl/extr_pg_ctl.c_do_help.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/pg_ctl/extr_pg_ctl.c_do_help.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [78 x i8] c"%s is a utility to initialize, start, stop, or control a PostgreSQL server.\0A\0A\00", align 1
@progname = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"Usage:\0A\00", align 1
@.str.2 = private unnamed_addr constant [48 x i8] c"  %s init[db]   [-D DATADIR] [-s] [-o OPTIONS]\0A\00", align 1
@.str.3 = private unnamed_addr constant [112 x i8] c"  %s start      [-D DATADIR] [-l FILENAME] [-W] [-t SECS] [-s]\0A                    [-o OPTIONS] [-p PATH] [-c]\0A\00", align 1
@.str.4 = private unnamed_addr constant [69 x i8] c"  %s stop       [-D DATADIR] [-m SHUTDOWN-MODE] [-W] [-t SECS] [-s]\0A\00", align 1
@.str.5 = private unnamed_addr constant [107 x i8] c"  %s restart    [-D DATADIR] [-m SHUTDOWN-MODE] [-W] [-t SECS] [-s]\0A                    [-o OPTIONS] [-c]\0A\00", align 1
@.str.6 = private unnamed_addr constant [35 x i8] c"  %s reload     [-D DATADIR] [-s]\0A\00", align 1
@.str.7 = private unnamed_addr constant [30 x i8] c"  %s status     [-D DATADIR]\0A\00", align 1
@.str.8 = private unnamed_addr constant [50 x i8] c"  %s promote    [-D DATADIR] [-W] [-t SECS] [-s]\0A\00", align 1
@.str.9 = private unnamed_addr constant [35 x i8] c"  %s logrotate  [-D DATADIR] [-s]\0A\00", align 1
@.str.10 = private unnamed_addr constant [32 x i8] c"  %s kill       SIGNALNAME PID\0A\00", align 1
@.str.11 = private unnamed_addr constant [18 x i8] c"\0ACommon options:\0A\00", align 1
@.str.12 = private unnamed_addr constant [64 x i8] c"  -D, --pgdata=DATADIR   location of the database storage area\0A\00", align 1
@.str.13 = private unnamed_addr constant [71 x i8] c"  -s, --silent           only print errors, no informational messages\0A\00", align 1
@.str.14 = private unnamed_addr constant [63 x i8] c"  -t, --timeout=SECS     seconds to wait when using -w option\0A\00", align 1
@.str.15 = private unnamed_addr constant [64 x i8] c"  -V, --version          output version information, then exit\0A\00", align 1
@.str.16 = private unnamed_addr constant [67 x i8] c"  -w, --wait             wait until operation completes (default)\0A\00", align 1
@.str.17 = private unnamed_addr constant [64 x i8] c"  -W, --no-wait          do not wait until operation completes\0A\00", align 1
@.str.18 = private unnamed_addr constant [52 x i8] c"  -?, --help             show this help, then exit\0A\00", align 1
@.str.19 = private unnamed_addr constant [71 x i8] c"If the -D option is omitted, the environment variable PGDATA is used.\0A\00", align 1
@.str.20 = private unnamed_addr constant [32 x i8] c"\0AOptions for start or restart:\0A\00", align 1
@.str.21 = private unnamed_addr constant [58 x i8] c"  -c, --core-files       not applicable on this platform\0A\00", align 1
@.str.22 = private unnamed_addr constant [67 x i8] c"  -l, --log=FILENAME     write (or append) server log to FILENAME\0A\00", align 1
@.str.23 = private unnamed_addr constant [133 x i8] c"  -o, --options=OPTIONS  command line options to pass to postgres\0A                         (PostgreSQL server executable) or initdb\0A\00", align 1
@.str.24 = private unnamed_addr constant [49 x i8] c"  -p PATH-TO-POSTGRES    normally not necessary\0A\00", align 1
@.str.25 = private unnamed_addr constant [31 x i8] c"\0AOptions for stop or restart:\0A\00", align 1
@.str.26 = private unnamed_addr constant [70 x i8] c"  -m, --mode=MODE        MODE can be \22smart\22, \22fast\22, or \22immediate\22\0A\00", align 1
@.str.27 = private unnamed_addr constant [22 x i8] c"\0AShutdown modes are:\0A\00", align 1
@.str.28 = private unnamed_addr constant [56 x i8] c"  smart       quit after all clients have disconnected\0A\00", align 1
@.str.29 = private unnamed_addr constant [61 x i8] c"  fast        quit directly, with proper shutdown (default)\0A\00", align 1
@.str.30 = private unnamed_addr constant [80 x i8] c"  immediate   quit without complete shutdown; will lead to recovery on restart\0A\00", align 1
@.str.31 = private unnamed_addr constant [33 x i8] c"\0AAllowed signal names for kill:\0A\00", align 1
@.str.32 = private unnamed_addr constant [41 x i8] c"  ABRT HUP INT KILL QUIT TERM USR1 USR2\0A\00", align 1
@.str.33 = private unnamed_addr constant [52 x i8] c"\0AReport bugs to <pgsql-bugs@lists.postgresql.org>.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @do_help to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_help() #0 {
  %1 = call i8* @_(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str, i64 0, i64 0))
  %2 = load i8*, i8** @progname, align 8
  %3 = call i32 (i8*, ...) @printf(i8* %1, i8* %2)
  %4 = call i8* @_(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %5 = call i32 (i8*, ...) @printf(i8* %4)
  %6 = call i8* @_(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0))
  %7 = load i8*, i8** @progname, align 8
  %8 = call i32 (i8*, ...) @printf(i8* %6, i8* %7)
  %9 = call i8* @_(i8* getelementptr inbounds ([112 x i8], [112 x i8]* @.str.3, i64 0, i64 0))
  %10 = load i8*, i8** @progname, align 8
  %11 = call i32 (i8*, ...) @printf(i8* %9, i8* %10)
  %12 = call i8* @_(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.4, i64 0, i64 0))
  %13 = load i8*, i8** @progname, align 8
  %14 = call i32 (i8*, ...) @printf(i8* %12, i8* %13)
  %15 = call i8* @_(i8* getelementptr inbounds ([107 x i8], [107 x i8]* @.str.5, i64 0, i64 0))
  %16 = load i8*, i8** @progname, align 8
  %17 = call i32 (i8*, ...) @printf(i8* %15, i8* %16)
  %18 = call i8* @_(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i64 0, i64 0))
  %19 = load i8*, i8** @progname, align 8
  %20 = call i32 (i8*, ...) @printf(i8* %18, i8* %19)
  %21 = call i8* @_(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0))
  %22 = load i8*, i8** @progname, align 8
  %23 = call i32 (i8*, ...) @printf(i8* %21, i8* %22)
  %24 = call i8* @_(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.8, i64 0, i64 0))
  %25 = load i8*, i8** @progname, align 8
  %26 = call i32 (i8*, ...) @printf(i8* %24, i8* %25)
  %27 = call i8* @_(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.9, i64 0, i64 0))
  %28 = load i8*, i8** @progname, align 8
  %29 = call i32 (i8*, ...) @printf(i8* %27, i8* %28)
  %30 = call i8* @_(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10, i64 0, i64 0))
  %31 = load i8*, i8** @progname, align 8
  %32 = call i32 (i8*, ...) @printf(i8* %30, i8* %31)
  %33 = call i8* @_(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i64 0, i64 0))
  %34 = call i32 (i8*, ...) @printf(i8* %33)
  %35 = call i8* @_(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.12, i64 0, i64 0))
  %36 = call i32 (i8*, ...) @printf(i8* %35)
  %37 = call i8* @_(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.13, i64 0, i64 0))
  %38 = call i32 (i8*, ...) @printf(i8* %37)
  %39 = call i8* @_(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.14, i64 0, i64 0))
  %40 = call i32 (i8*, ...) @printf(i8* %39)
  %41 = call i8* @_(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.15, i64 0, i64 0))
  %42 = call i32 (i8*, ...) @printf(i8* %41)
  %43 = call i8* @_(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.16, i64 0, i64 0))
  %44 = call i32 (i8*, ...) @printf(i8* %43)
  %45 = call i8* @_(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.17, i64 0, i64 0))
  %46 = call i32 (i8*, ...) @printf(i8* %45)
  %47 = call i8* @_(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.18, i64 0, i64 0))
  %48 = call i32 (i8*, ...) @printf(i8* %47)
  %49 = call i8* @_(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.19, i64 0, i64 0))
  %50 = call i32 (i8*, ...) @printf(i8* %49)
  %51 = call i8* @_(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.20, i64 0, i64 0))
  %52 = call i32 (i8*, ...) @printf(i8* %51)
  %53 = call i8* @_(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.21, i64 0, i64 0))
  %54 = call i32 (i8*, ...) @printf(i8* %53)
  %55 = call i8* @_(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.22, i64 0, i64 0))
  %56 = call i32 (i8*, ...) @printf(i8* %55)
  %57 = call i8* @_(i8* getelementptr inbounds ([133 x i8], [133 x i8]* @.str.23, i64 0, i64 0))
  %58 = call i32 (i8*, ...) @printf(i8* %57)
  %59 = call i8* @_(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.24, i64 0, i64 0))
  %60 = call i32 (i8*, ...) @printf(i8* %59)
  %61 = call i8* @_(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.25, i64 0, i64 0))
  %62 = call i32 (i8*, ...) @printf(i8* %61)
  %63 = call i8* @_(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.26, i64 0, i64 0))
  %64 = call i32 (i8*, ...) @printf(i8* %63)
  %65 = call i8* @_(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.27, i64 0, i64 0))
  %66 = call i32 (i8*, ...) @printf(i8* %65)
  %67 = call i8* @_(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.28, i64 0, i64 0))
  %68 = call i32 (i8*, ...) @printf(i8* %67)
  %69 = call i8* @_(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.29, i64 0, i64 0))
  %70 = call i32 (i8*, ...) @printf(i8* %69)
  %71 = call i8* @_(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.30, i64 0, i64 0))
  %72 = call i32 (i8*, ...) @printf(i8* %71)
  %73 = call i8* @_(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.31, i64 0, i64 0))
  %74 = call i32 (i8*, ...) @printf(i8* %73)
  %75 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.32, i64 0, i64 0))
  %76 = call i8* @_(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.33, i64 0, i64 0))
  %77 = call i32 (i8*, ...) @printf(i8* %76)
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
