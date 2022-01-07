; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/sync/extr_sync_test.c_run_test.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/sync/extr_sync_test.c_run_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stdout = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"[RUN]\09%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32 ()*, i8*)* @run_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @run_test(i32 ()* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32 ()*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i32 ()* %0, i32 ()** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load i32, i32* @stdout, align 4
  %10 = call i32 @fflush(i32 %9)
  %11 = call i64 (...) @fork()
  store i64 %11, i64* %7, align 8
  %12 = load i64, i64* %7, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %34

14:                                               ; preds = %2
  %15 = load i64, i64* %7, align 8
  %16 = call i32 @waitpid(i64 %15, i32* %6, i32 0)
  %17 = load i32, i32* %6, align 4
  %18 = call i64 @WIFEXITED(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %33

20:                                               ; preds = %14
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @WEXITSTATUS(i32 %21)
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %20
  %26 = load i8*, i8** %5, align 8
  %27 = call i32 @ksft_test_result_pass(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %26)
  br label %31

28:                                               ; preds = %20
  %29 = load i8*, i8** %5, align 8
  %30 = call i32 @ksft_test_result_fail(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %29)
  br label %31

31:                                               ; preds = %28, %25
  %32 = load i32, i32* %8, align 4
  store i32 %32, i32* %3, align 4
  br label %38

33:                                               ; preds = %14
  store i32 1, i32* %3, align 4
  br label %38

34:                                               ; preds = %2
  %35 = load i32 ()*, i32 ()** %4, align 8
  %36 = call i32 %35()
  %37 = call i32 @exit(i32 %36) #3
  unreachable

38:                                               ; preds = %33, %31
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local i32 @fflush(i32) #1

declare dso_local i64 @fork(...) #1

declare dso_local i32 @waitpid(i64, i32*, i32) #1

declare dso_local i64 @WIFEXITED(i32) #1

declare dso_local i32 @WEXITSTATUS(i32) #1

declare dso_local i32 @ksft_test_result_pass(i8*, i8*) #1

declare dso_local i32 @ksft_test_result_fail(i8*, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
