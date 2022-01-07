; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/timers/extr_skew_consistency.c_main.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/timers/extr_skew_consistency.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timex = type { i32, i64, i8* }

@.str = private unnamed_addr constant [50 x i8] c"Running Asynchronous Frequency Changing Tests...\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"./inconsistency-check -c 1 -t 600\00", align 1
@WNOHANG = common dso_local global i32 0, align 4
@ADJ_FREQUENCY = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [10 x i8] c"[FAILED]\0A\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"[OK]\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.timex, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %10 = call i32 @printf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  %11 = call i64 (...) @fork()
  store i64 %11, i64* %9, align 8
  %12 = load i64, i64* %9, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %2
  %15 = call i32 @system(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  store i32 %15, i32* %3, align 4
  br label %46

16:                                               ; preds = %2
  store i32 500, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %17

17:                                               ; preds = %23, %16
  %18 = load i64, i64* %9, align 8
  %19 = load i64, i64* %9, align 8
  %20 = load i32, i32* @WNOHANG, align 4
  %21 = call i64 @waitpid(i64 %19, i32* %7, i32 %20)
  %22 = icmp ne i64 %18, %21
  br i1 %22, label %23, label %33

23:                                               ; preds = %17
  %24 = load i32, i32* %8, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %8, align 4
  %26 = load i8*, i8** @ADJ_FREQUENCY, align 8
  %27 = getelementptr inbounds %struct.timex, %struct.timex* %6, i32 0, i32 2
  store i8* %26, i8** %27, align 8
  %28 = load i32, i32* %8, align 4
  %29 = shl i32 %28, 16
  %30 = getelementptr inbounds %struct.timex, %struct.timex* %6, i32 0, i32 0
  store i32 %29, i32* %30, align 8
  %31 = call i32 @adjtimex(%struct.timex* %6)
  %32 = call i32 @usleep(i32 500000)
  br label %17

33:                                               ; preds = %17
  %34 = load i8*, i8** @ADJ_FREQUENCY, align 8
  %35 = getelementptr inbounds %struct.timex, %struct.timex* %6, i32 0, i32 2
  store i8* %34, i8** %35, align 8
  %36 = getelementptr inbounds %struct.timex, %struct.timex* %6, i32 0, i32 1
  store i64 0, i64* %36, align 8
  %37 = call i32 @adjtimex(%struct.timex* %6)
  %38 = load i32, i32* %7, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %33
  %41 = call i32 @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %42 = call i32 (...) @ksft_exit_fail()
  store i32 %42, i32* %3, align 4
  br label %46

43:                                               ; preds = %33
  %44 = call i32 @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %45 = call i32 (...) @ksft_exit_pass()
  store i32 %45, i32* %3, align 4
  br label %46

46:                                               ; preds = %43, %40, %14
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local i32 @printf(i8*) #1

declare dso_local i64 @fork(...) #1

declare dso_local i32 @system(i8*) #1

declare dso_local i64 @waitpid(i64, i32*, i32) #1

declare dso_local i32 @adjtimex(%struct.timex*) #1

declare dso_local i32 @usleep(i32) #1

declare dso_local i32 @ksft_exit_fail(...) #1

declare dso_local i32 @ksft_exit_pass(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
