; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/initdb/extr_initdb.c_setup_pgdata.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/initdb/extr_initdb.c_setup_pgdata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@pg_data = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [7 x i8] c"PGDATA\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"no data directory specified\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [168 x i8] c"You must identify the directory where the data for this database system\0Awill reside.  Do this with either the invocation option -D or the\0Aenvironment variable PGDATA.\0A\00", align 1
@pgdata_native = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [10 x i8] c"PGDATA=%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @setup_pgdata() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = load i8*, i8** @pg_data, align 8
  %4 = icmp ne i8* %3, null
  br i1 %4, label %23, label %5

5:                                                ; preds = %0
  %6 = call i8* @getenv(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i8* %6, i8** %1, align 8
  %7 = load i8*, i8** %1, align 8
  %8 = icmp ne i8* %7, null
  br i1 %8, label %9, label %16

9:                                                ; preds = %5
  %10 = load i8*, i8** %1, align 8
  %11 = call i64 @strlen(i8* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %9
  %14 = load i8*, i8** %1, align 8
  %15 = call i8* @pg_strdup(i8* %14)
  store i8* %15, i8** @pg_data, align 8
  br label %22

16:                                               ; preds = %9, %5
  %17 = call i32 @pg_log_error(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %18 = load i32, i32* @stderr, align 4
  %19 = call i8* @_(i8* getelementptr inbounds ([168 x i8], [168 x i8]* @.str.2, i64 0, i64 0))
  %20 = call i32 @fprintf(i32 %18, i8* %19)
  %21 = call i32 @exit(i32 1) #3
  unreachable

22:                                               ; preds = %13
  br label %23

23:                                               ; preds = %22, %0
  %24 = load i8*, i8** @pg_data, align 8
  %25 = call i8* @pg_strdup(i8* %24)
  store i8* %25, i8** @pgdata_native, align 8
  %26 = load i8*, i8** @pg_data, align 8
  %27 = call i32 @canonicalize_path(i8* %26)
  %28 = load i8*, i8** @pg_data, align 8
  %29 = call i8* @psprintf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8* %28)
  store i8* %29, i8** %2, align 8
  %30 = load i8*, i8** %2, align 8
  %31 = call i32 @putenv(i8* %30)
  ret void
}

declare dso_local i8* @getenv(i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @pg_strdup(i8*) #1

declare dso_local i32 @pg_log_error(i8*) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i8* @_(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @canonicalize_path(i8*) #1

declare dso_local i8* @psprintf(i8*, i8*) #1

declare dso_local i32 @putenv(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
