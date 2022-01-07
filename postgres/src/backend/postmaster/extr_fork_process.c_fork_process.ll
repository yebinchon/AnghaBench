; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/postmaster/extr_fork_process.c_fork_process.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/postmaster/extr_fork_process.c_fork_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stdout = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"PG_OOM_ADJUST_FILE\00", align 1
@O_WRONLY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"PG_OOM_ADJUST_VALUE\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@ITIMER_PROF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @fork_process() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = load i32, i32* @stdout, align 4
  %7 = call i32 @fflush(i32 %6)
  %8 = load i32, i32* @stderr, align 4
  %9 = call i32 @fflush(i32 %8)
  %10 = call i64 (...) @fork()
  store i64 %10, i64* %1, align 8
  %11 = load i64, i64* %1, align 8
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %39

13:                                               ; preds = %0
  %14 = call i8* @getenv(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  store i8* %14, i8** %2, align 8
  %15 = load i8*, i8** %2, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %38

17:                                               ; preds = %13
  %18 = load i8*, i8** %2, align 8
  %19 = load i32, i32* @O_WRONLY, align 4
  %20 = call i32 @open(i8* %18, i32 %19, i32 0)
  store i32 %20, i32* %3, align 4
  %21 = load i32, i32* %3, align 4
  %22 = icmp sge i32 %21, 0
  br i1 %22, label %23, label %37

23:                                               ; preds = %17
  %24 = call i8* @getenv(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  store i8* %24, i8** %4, align 8
  %25 = load i8*, i8** %4, align 8
  %26 = icmp eq i8* %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8** %4, align 8
  br label %28

28:                                               ; preds = %27, %23
  %29 = load i32, i32* %3, align 4
  %30 = load i8*, i8** %4, align 8
  %31 = load i8*, i8** %4, align 8
  %32 = call i32 @strlen(i8* %31)
  %33 = call i32 @write(i32 %29, i8* %30, i32 %32)
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* %3, align 4
  %36 = call i32 @close(i32 %35)
  br label %37

37:                                               ; preds = %28, %17
  br label %38

38:                                               ; preds = %37, %13
  br label %39

39:                                               ; preds = %38, %0
  %40 = load i64, i64* %1, align 8
  ret i64 %40
}

declare dso_local i32 @fflush(i32) #1

declare dso_local i64 @fork(...) #1

declare dso_local i8* @getenv(i8*) #1

declare dso_local i32 @open(i8*, i32, i32) #1

declare dso_local i32 @write(i32, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
