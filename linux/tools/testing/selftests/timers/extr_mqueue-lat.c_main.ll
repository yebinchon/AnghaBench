; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/timers/extr_mqueue-lat.c_main.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/timers/extr_mqueue-lat.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [43 x i8] c"Mqueue latency :                          \00", align 1
@stdout = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"[FAILED]\0A\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"[OK]\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %7 = call i32 @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %8 = load i32, i32* @stdout, align 4
  %9 = call i32 @fflush(i32 %8)
  %10 = call i32 (...) @mqueue_lat_test()
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = call i32 @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %15 = call i32 (...) @ksft_exit_fail()
  store i32 %15, i32* %3, align 4
  br label %19

16:                                               ; preds = %2
  %17 = call i32 @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %18 = call i32 (...) @ksft_exit_pass()
  store i32 %18, i32* %3, align 4
  br label %19

19:                                               ; preds = %16, %13
  %20 = load i32, i32* %3, align 4
  ret i32 %20
}

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @fflush(i32) #1

declare dso_local i32 @mqueue_lat_test(...) #1

declare dso_local i32 @ksft_exit_fail(...) #1

declare dso_local i32 @ksft_exit_pass(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
