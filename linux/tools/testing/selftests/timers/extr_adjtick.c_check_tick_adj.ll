; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/timers/extr_adjtick.c_check_tick_adj.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/timers/extr_adjtick.c_check_tick_adj.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timex = type { i64, i64, i64, i32, i32 }

@ADJ_TICK = common dso_local global i32 0, align 4
@ADJ_OFFSET = common dso_local global i32 0, align 4
@ADJ_FREQUENCY = common dso_local global i32 0, align 4
@ADJ_STATUS = common dso_local global i32 0, align 4
@STA_PLL = common dso_local global i32 0, align 4
@MILLION = common dso_local global i64 0, align 8
@systick = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [44 x i8] c"Estimating tick (act: %ld usec, %lld ppm): \00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"%lld usec, %lld ppm\00", align 1
@stdout = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"\09[ERROR]\0A\00", align 1
@.str.3 = private unnamed_addr constant [68 x i8] c"\09Unexpected adjtimex return values, make sure ntpd is not running.\0A\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"\09[FAILED]\0A\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"\09[OK]\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @check_tick_adj(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.timex, align 8
  store i64 %0, i64* %3, align 8
  %7 = load i32, i32* @ADJ_TICK, align 4
  %8 = getelementptr inbounds %struct.timex, %struct.timex* %6, i32 0, i32 3
  store i32 %7, i32* %8, align 8
  %9 = load i32, i32* @ADJ_OFFSET, align 4
  %10 = getelementptr inbounds %struct.timex, %struct.timex* %6, i32 0, i32 3
  %11 = load i32, i32* %10, align 8
  %12 = or i32 %11, %9
  store i32 %12, i32* %10, align 8
  %13 = load i32, i32* @ADJ_FREQUENCY, align 4
  %14 = getelementptr inbounds %struct.timex, %struct.timex* %6, i32 0, i32 3
  %15 = load i32, i32* %14, align 8
  %16 = or i32 %15, %13
  store i32 %16, i32* %14, align 8
  %17 = load i32, i32* @ADJ_STATUS, align 4
  %18 = getelementptr inbounds %struct.timex, %struct.timex* %6, i32 0, i32 3
  %19 = load i32, i32* %18, align 8
  %20 = or i32 %19, %17
  store i32 %20, i32* %18, align 8
  %21 = load i32, i32* @STA_PLL, align 4
  %22 = getelementptr inbounds %struct.timex, %struct.timex* %6, i32 0, i32 4
  store i32 %21, i32* %22, align 4
  %23 = getelementptr inbounds %struct.timex, %struct.timex* %6, i32 0, i32 2
  store i64 0, i64* %23, align 8
  %24 = getelementptr inbounds %struct.timex, %struct.timex* %6, i32 0, i32 1
  store i64 0, i64* %24, align 8
  %25 = load i64, i64* %3, align 8
  %26 = getelementptr inbounds %struct.timex, %struct.timex* %6, i32 0, i32 0
  store i64 %25, i64* %26, align 8
  %27 = call i32 @adjtimex(%struct.timex* %6)
  %28 = call i32 @sleep(i32 1)
  %29 = load i64, i64* %3, align 8
  %30 = load i64, i64* @MILLION, align 8
  %31 = mul nsw i64 %29, %30
  %32 = load i64, i64* @systick, align 8
  %33 = sdiv i64 %31, %32
  %34 = load i64, i64* @MILLION, align 8
  %35 = sub nsw i64 %33, %34
  store i64 %35, i64* %5, align 8
  %36 = load i64, i64* %3, align 8
  %37 = load i64, i64* %5, align 8
  %38 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i64 %36, i64 %37)
  %39 = call i64 (...) @get_ppm_drift()
  store i64 %39, i64* %4, align 8
  %40 = load i64, i64* @systick, align 8
  %41 = load i64, i64* @systick, align 8
  %42 = load i64, i64* %4, align 8
  %43 = mul nsw i64 %41, %42
  %44 = load i64, i64* @MILLION, align 8
  %45 = sdiv i64 %43, %44
  %46 = add nsw i64 %40, %45
  %47 = load i64, i64* %4, align 8
  %48 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i64 %46, i64 %47)
  %49 = load i32, i32* @stdout, align 4
  %50 = call i32 @fflush(i32 %49)
  %51 = getelementptr inbounds %struct.timex, %struct.timex* %6, i32 0, i32 3
  store i32 0, i32* %51, align 8
  %52 = call i32 @adjtimex(%struct.timex* %6)
  %53 = getelementptr inbounds %struct.timex, %struct.timex* %6, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %65, label %56

56:                                               ; preds = %1
  %57 = getelementptr inbounds %struct.timex, %struct.timex* %6, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %65, label %60

60:                                               ; preds = %56
  %61 = getelementptr inbounds %struct.timex, %struct.timex* %6, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* %3, align 8
  %64 = icmp ne i64 %62, %63
  br i1 %64, label %65, label %68

65:                                               ; preds = %60, %56, %1
  %66 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %67 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.3, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %78

68:                                               ; preds = %60
  %69 = load i64, i64* %4, align 8
  %70 = load i64, i64* %5, align 8
  %71 = sub nsw i64 %69, %70
  %72 = call i32 @llabs(i64 %71)
  %73 = icmp sgt i32 %72, 100
  br i1 %73, label %74, label %76

74:                                               ; preds = %68
  %75 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %78

76:                                               ; preds = %68
  %77 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %78

78:                                               ; preds = %76, %74, %65
  %79 = load i32, i32* %2, align 4
  ret i32 %79
}

declare dso_local i32 @adjtimex(%struct.timex*) #1

declare dso_local i32 @sleep(i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i64 @get_ppm_drift(...) #1

declare dso_local i32 @fflush(i32) #1

declare dso_local i32 @llabs(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
