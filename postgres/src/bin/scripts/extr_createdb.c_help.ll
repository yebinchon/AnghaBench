; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/scripts/extr_createdb.c_help.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/scripts/extr_createdb.c_help.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [36 x i8] c"%s creates a PostgreSQL database.\0A\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"Usage:\0A\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"  %s [OPTION]... [DBNAME] [DESCRIPTION]\0A\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"\0AOptions:\0A\00", align 1
@.str.4 = private unnamed_addr constant [68 x i8] c"  -D, --tablespace=TABLESPACE  default tablespace for the database\0A\00", align 1
@.str.5 = private unnamed_addr constant [75 x i8] c"  -e, --echo                   show the commands being sent to the server\0A\00", align 1
@.str.6 = private unnamed_addr constant [58 x i8] c"  -E, --encoding=ENCODING      encoding for the database\0A\00", align 1
@.str.7 = private unnamed_addr constant [65 x i8] c"  -l, --locale=LOCALE          locale settings for the database\0A\00", align 1
@.str.8 = private unnamed_addr constant [68 x i8] c"      --lc-collate=LOCALE      LC_COLLATE setting for the database\0A\00", align 1
@.str.9 = private unnamed_addr constant [66 x i8] c"      --lc-ctype=LOCALE        LC_CTYPE setting for the database\0A\00", align 1
@.str.10 = private unnamed_addr constant [70 x i8] c"  -O, --owner=OWNER            database user to own the new database\0A\00", align 1
@.str.11 = private unnamed_addr constant [58 x i8] c"  -T, --template=TEMPLATE      template database to copy\0A\00", align 1
@.str.12 = private unnamed_addr constant [70 x i8] c"  -V, --version                output version information, then exit\0A\00", align 1
@.str.13 = private unnamed_addr constant [58 x i8] c"  -?, --help                   show this help, then exit\0A\00", align 1
@.str.14 = private unnamed_addr constant [22 x i8] c"\0AConnection options:\0A\00", align 1
@.str.15 = private unnamed_addr constant [73 x i8] c"  -h, --host=HOSTNAME          database server host or socket directory\0A\00", align 1
@.str.16 = private unnamed_addr constant [53 x i8] c"  -p, --port=PORT              database server port\0A\00", align 1
@.str.17 = private unnamed_addr constant [56 x i8] c"  -U, --username=USERNAME      user name to connect as\0A\00", align 1
@.str.18 = private unnamed_addr constant [58 x i8] c"  -w, --no-password            never prompt for password\0A\00", align 1
@.str.19 = private unnamed_addr constant [54 x i8] c"  -W, --password               force password prompt\0A\00", align 1
@.str.20 = private unnamed_addr constant [63 x i8] c"  --maintenance-db=DBNAME      alternate maintenance database\0A\00", align 1
@.str.21 = private unnamed_addr constant [76 x i8] c"\0ABy default, a database with the same name as the current user is created.\0A\00", align 1
@.str.22 = private unnamed_addr constant [52 x i8] c"\0AReport bugs to <pgsql-bugs@lists.postgresql.org>.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @help to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @help(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = call i8* @_(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %4 = load i8*, i8** %2, align 8
  %5 = call i32 (i8*, ...) @printf(i8* %3, i8* %4)
  %6 = call i8* @_(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %7 = call i32 (i8*, ...) @printf(i8* %6)
  %8 = call i8* @_(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  %9 = load i8*, i8** %2, align 8
  %10 = call i32 (i8*, ...) @printf(i8* %8, i8* %9)
  %11 = call i8* @_(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  %12 = call i32 (i8*, ...) @printf(i8* %11)
  %13 = call i8* @_(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.4, i64 0, i64 0))
  %14 = call i32 (i8*, ...) @printf(i8* %13)
  %15 = call i8* @_(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.5, i64 0, i64 0))
  %16 = call i32 (i8*, ...) @printf(i8* %15)
  %17 = call i8* @_(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.6, i64 0, i64 0))
  %18 = call i32 (i8*, ...) @printf(i8* %17)
  %19 = call i8* @_(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.7, i64 0, i64 0))
  %20 = call i32 (i8*, ...) @printf(i8* %19)
  %21 = call i8* @_(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.8, i64 0, i64 0))
  %22 = call i32 (i8*, ...) @printf(i8* %21)
  %23 = call i8* @_(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.9, i64 0, i64 0))
  %24 = call i32 (i8*, ...) @printf(i8* %23)
  %25 = call i8* @_(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.10, i64 0, i64 0))
  %26 = call i32 (i8*, ...) @printf(i8* %25)
  %27 = call i8* @_(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.11, i64 0, i64 0))
  %28 = call i32 (i8*, ...) @printf(i8* %27)
  %29 = call i8* @_(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.12, i64 0, i64 0))
  %30 = call i32 (i8*, ...) @printf(i8* %29)
  %31 = call i8* @_(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.13, i64 0, i64 0))
  %32 = call i32 (i8*, ...) @printf(i8* %31)
  %33 = call i8* @_(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.14, i64 0, i64 0))
  %34 = call i32 (i8*, ...) @printf(i8* %33)
  %35 = call i8* @_(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.15, i64 0, i64 0))
  %36 = call i32 (i8*, ...) @printf(i8* %35)
  %37 = call i8* @_(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.16, i64 0, i64 0))
  %38 = call i32 (i8*, ...) @printf(i8* %37)
  %39 = call i8* @_(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.17, i64 0, i64 0))
  %40 = call i32 (i8*, ...) @printf(i8* %39)
  %41 = call i8* @_(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.18, i64 0, i64 0))
  %42 = call i32 (i8*, ...) @printf(i8* %41)
  %43 = call i8* @_(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.19, i64 0, i64 0))
  %44 = call i32 (i8*, ...) @printf(i8* %43)
  %45 = call i8* @_(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.20, i64 0, i64 0))
  %46 = call i32 (i8*, ...) @printf(i8* %45)
  %47 = call i8* @_(i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.21, i64 0, i64 0))
  %48 = call i32 (i8*, ...) @printf(i8* %47)
  %49 = call i8* @_(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.22, i64 0, i64 0))
  %50 = call i32 (i8*, ...) @printf(i8* %49)
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
