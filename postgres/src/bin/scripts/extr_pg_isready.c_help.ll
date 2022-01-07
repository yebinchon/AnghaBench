; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/scripts/extr_pg_isready.c_help.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/scripts/extr_pg_isready.c_help.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [57 x i8] c"%s issues a connection check to a PostgreSQL database.\0A\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"Usage:\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"  %s [OPTION]...\0A\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"\0AOptions:\0A\00", align 1
@.str.4 = private unnamed_addr constant [42 x i8] c"  -d, --dbname=DBNAME      database name\0A\00", align 1
@.str.5 = private unnamed_addr constant [40 x i8] c"  -q, --quiet              run quietly\0A\00", align 1
@.str.6 = private unnamed_addr constant [66 x i8] c"  -V, --version            output version information, then exit\0A\00", align 1
@.str.7 = private unnamed_addr constant [54 x i8] c"  -?, --help               show this help, then exit\0A\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"\0AConnection options:\0A\00", align 1
@.str.9 = private unnamed_addr constant [69 x i8] c"  -h, --host=HOSTNAME      database server host or socket directory\0A\00", align 1
@.str.10 = private unnamed_addr constant [49 x i8] c"  -p, --port=PORT          database server port\0A\00", align 1
@.str.11 = private unnamed_addr constant [97 x i8] c"  -t, --timeout=SECS       seconds to wait when attempting connection, 0 disables (default: %s)\0A\00", align 1
@DEFAULT_CONNECT_TIMEOUT = common dso_local global i8* null, align 8
@.str.12 = private unnamed_addr constant [52 x i8] c"  -U, --username=USERNAME  user name to connect as\0A\00", align 1
@.str.13 = private unnamed_addr constant [52 x i8] c"\0AReport bugs to <pgsql-bugs@lists.postgresql.org>.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @help to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @help(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = call i8* @_(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0))
  %4 = load i8*, i8** %2, align 8
  %5 = call i32 (i8*, ...) @printf(i8* %3, i8* %4)
  %6 = call i8* @_(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %7 = call i32 (i8*, ...) @printf(i8* %6)
  %8 = call i8* @_(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %9 = load i8*, i8** %2, align 8
  %10 = call i32 (i8*, ...) @printf(i8* %8, i8* %9)
  %11 = call i8* @_(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  %12 = call i32 (i8*, ...) @printf(i8* %11)
  %13 = call i8* @_(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0))
  %14 = call i32 (i8*, ...) @printf(i8* %13)
  %15 = call i8* @_(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0))
  %16 = call i32 (i8*, ...) @printf(i8* %15)
  %17 = call i8* @_(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.6, i64 0, i64 0))
  %18 = call i32 (i8*, ...) @printf(i8* %17)
  %19 = call i8* @_(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.7, i64 0, i64 0))
  %20 = call i32 (i8*, ...) @printf(i8* %19)
  %21 = call i8* @_(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0))
  %22 = call i32 (i8*, ...) @printf(i8* %21)
  %23 = call i8* @_(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.9, i64 0, i64 0))
  %24 = call i32 (i8*, ...) @printf(i8* %23)
  %25 = call i8* @_(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.10, i64 0, i64 0))
  %26 = call i32 (i8*, ...) @printf(i8* %25)
  %27 = call i8* @_(i8* getelementptr inbounds ([97 x i8], [97 x i8]* @.str.11, i64 0, i64 0))
  %28 = load i8*, i8** @DEFAULT_CONNECT_TIMEOUT, align 8
  %29 = call i32 (i8*, ...) @printf(i8* %27, i8* %28)
  %30 = call i8* @_(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.12, i64 0, i64 0))
  %31 = call i32 (i8*, ...) @printf(i8* %30)
  %32 = call i8* @_(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.13, i64 0, i64 0))
  %33 = call i32 (i8*, ...) @printf(i8* %32)
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
