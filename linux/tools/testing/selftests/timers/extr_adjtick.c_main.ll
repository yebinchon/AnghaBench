; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/timers/extr_adjtick.c_main.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/timers/extr_adjtick.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timespec = type { i32 }
%struct.timex = type { i32, i64, i64, i32 }

@stdout = common dso_local global i32 0, align 4
@CLOCK_MONOTONIC_RAW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"ERR: NO CLOCK_MONOTONIC_RAW\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"Each iteration takes about 15 seconds\0A\00", align 1
@_SC_CLK_TCK = common dso_local global i32 0, align 4
@systick = common dso_local global i32 0, align 4
@USEC_PER_SEC = common dso_local global i32 0, align 4
@ADJ_TICK = common dso_local global i32 0, align 4
@ADJ_OFFSET = common dso_local global i32 0, align 4
@ADJ_FREQUENCY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.timespec, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.timex, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i64 0, i64* %10, align 8
  %12 = load i32, i32* @stdout, align 4
  %13 = call i32 @setbuf(i32 %12, i32* null)
  %14 = load i32, i32* @CLOCK_MONOTONIC_RAW, align 4
  %15 = call i64 @clock_gettime(i32 %14, %struct.timespec* %6)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = call i32 @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %75

19:                                               ; preds = %2
  %20 = call i32 @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %21 = load i32, i32* @_SC_CLK_TCK, align 4
  %22 = call i32 @sysconf(i32 %21)
  store i32 %22, i32* @systick, align 4
  %23 = load i32, i32* @USEC_PER_SEC, align 4
  %24 = load i32, i32* @_SC_CLK_TCK, align 4
  %25 = call i32 @sysconf(i32 %24)
  %26 = sdiv i32 %23, %25
  store i32 %26, i32* @systick, align 4
  %27 = load i32, i32* @systick, align 4
  %28 = sdiv i32 %27, 10
  %29 = sext i32 %28 to i64
  store i64 %29, i64* %8, align 8
  %30 = load i64, i64* %8, align 8
  %31 = sdiv i64 %30, 4
  store i64 %31, i64* %9, align 8
  %32 = load i32, i32* @systick, align 4
  %33 = sext i32 %32 to i64
  %34 = load i64, i64* %8, align 8
  %35 = sub nsw i64 %33, %34
  store i64 %35, i64* %7, align 8
  br label %36

36:                                               ; preds = %49, %19
  %37 = load i64, i64* %7, align 8
  %38 = load i32, i32* @systick, align 4
  %39 = sext i32 %38 to i64
  %40 = load i64, i64* %8, align 8
  %41 = add nsw i64 %39, %40
  %42 = icmp slt i64 %37, %41
  br i1 %42, label %43, label %53

43:                                               ; preds = %36
  %44 = load i64, i64* %7, align 8
  %45 = call i64 @check_tick_adj(i64 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %43
  store i64 1, i64* %10, align 8
  br label %53

48:                                               ; preds = %43
  br label %49

49:                                               ; preds = %48
  %50 = load i64, i64* %9, align 8
  %51 = load i64, i64* %7, align 8
  %52 = add nsw i64 %51, %50
  store i64 %52, i64* %7, align 8
  br label %36

53:                                               ; preds = %47, %36
  %54 = load i32, i32* @ADJ_TICK, align 4
  %55 = getelementptr inbounds %struct.timex, %struct.timex* %11, i32 0, i32 3
  store i32 %54, i32* %55, align 8
  %56 = load i32, i32* @ADJ_OFFSET, align 4
  %57 = getelementptr inbounds %struct.timex, %struct.timex* %11, i32 0, i32 3
  %58 = load i32, i32* %57, align 8
  %59 = or i32 %58, %56
  store i32 %59, i32* %57, align 8
  %60 = load i32, i32* @ADJ_FREQUENCY, align 4
  %61 = getelementptr inbounds %struct.timex, %struct.timex* %11, i32 0, i32 3
  %62 = load i32, i32* %61, align 8
  %63 = or i32 %62, %60
  store i32 %63, i32* %61, align 8
  %64 = getelementptr inbounds %struct.timex, %struct.timex* %11, i32 0, i32 2
  store i64 0, i64* %64, align 8
  %65 = getelementptr inbounds %struct.timex, %struct.timex* %11, i32 0, i32 1
  store i64 0, i64* %65, align 8
  %66 = load i32, i32* @systick, align 4
  %67 = getelementptr inbounds %struct.timex, %struct.timex* %11, i32 0, i32 0
  store i32 %66, i32* %67, align 8
  %68 = call i32 @adjtimex(%struct.timex* %11)
  %69 = load i64, i64* %10, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %53
  %72 = call i32 (...) @ksft_exit_fail()
  store i32 %72, i32* %3, align 4
  br label %75

73:                                               ; preds = %53
  %74 = call i32 (...) @ksft_exit_pass()
  store i32 %74, i32* %3, align 4
  br label %75

75:                                               ; preds = %73, %71, %17
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

declare dso_local i32 @setbuf(i32, i32*) #1

declare dso_local i64 @clock_gettime(i32, %struct.timespec*) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @sysconf(i32) #1

declare dso_local i64 @check_tick_adj(i64) #1

declare dso_local i32 @adjtimex(%struct.timex*) #1

declare dso_local i32 @ksft_exit_fail(...) #1

declare dso_local i32 @ksft_exit_pass(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
