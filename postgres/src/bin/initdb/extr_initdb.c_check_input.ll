; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/initdb/extr_initdb.c_check_input.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/initdb/extr_initdb.c_check_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }

@errno = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"file \22%s\22 does not exist\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [116 x i8] c"This might mean you have a corrupted installation or identified\0Athe wrong directory with the invocation option -L.\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"could not access file \22%s\22: %m\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"file \22%s\22 is not a regular file\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @check_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_input(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.stat, align 4
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = call i64 @stat(i8* %4, %struct.stat* %3)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %25

7:                                                ; preds = %1
  %8 = load i64, i64* @errno, align 8
  %9 = load i64, i64* @ENOENT, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %17

11:                                               ; preds = %7
  %12 = load i8*, i8** %2, align 8
  %13 = call i32 @pg_log_error(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8* %12)
  %14 = load i32, i32* @stderr, align 4
  %15 = call i8* @_(i8* getelementptr inbounds ([116 x i8], [116 x i8]* @.str.1, i64 0, i64 0))
  %16 = call i32 @fprintf(i32 %14, i8* %15)
  br label %23

17:                                               ; preds = %7
  %18 = load i8*, i8** %2, align 8
  %19 = call i32 @pg_log_error(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i8* %18)
  %20 = load i32, i32* @stderr, align 4
  %21 = call i8* @_(i8* getelementptr inbounds ([116 x i8], [116 x i8]* @.str.1, i64 0, i64 0))
  %22 = call i32 @fprintf(i32 %20, i8* %21)
  br label %23

23:                                               ; preds = %17, %11
  %24 = call i32 @exit(i32 1) #3
  unreachable

25:                                               ; preds = %1
  %26 = getelementptr inbounds %struct.stat, %struct.stat* %3, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @S_ISREG(i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %37, label %30

30:                                               ; preds = %25
  %31 = load i8*, i8** %2, align 8
  %32 = call i32 @pg_log_error(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i8* %31)
  %33 = load i32, i32* @stderr, align 4
  %34 = call i8* @_(i8* getelementptr inbounds ([116 x i8], [116 x i8]* @.str.1, i64 0, i64 0))
  %35 = call i32 @fprintf(i32 %33, i8* %34)
  %36 = call i32 @exit(i32 1) #3
  unreachable

37:                                               ; preds = %25
  ret void
}

declare dso_local i64 @stat(i8*, %struct.stat*) #1

declare dso_local i32 @pg_log_error(i8*, i8*) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i8* @_(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @S_ISREG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
