; ModuleID = '/home/carl/AnghaBench/micropython/ports/cc3200/hal/extr_prcm.c_PRCMRTCSet.c'
source_filename = "/home/carl/AnghaBench/micropython/ports/cc3200/hal/extr_prcm.c_PRCMRTCSet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @PRCMRTCSet(i64 %0, i16 zeroext %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i16, align 2
  %5 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i16 %1, i16* %4, align 2
  store i64 0, i64* %5, align 8
  %6 = call i64 (...) @IS_RTC_USED()
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %20

8:                                                ; preds = %2
  %9 = load i64, i64* %3, align 8
  %10 = load i16, i16* %4, align 2
  %11 = call i64 @RTC_U64MSEC_MK(i64 %9, i16 zeroext %10)
  %12 = call i64 (...) @SCC_U64MSEC_GET()
  %13 = sub i64 %11, %12
  store i64 %13, i64* %5, align 8
  %14 = load i64, i64* %5, align 8
  %15 = call i32 @RTC_SECS_IN_U64MSEC(i64 %14)
  %16 = call i32 @RTC_U32SECS_REG_WR(i32 %15)
  %17 = load i64, i64* %5, align 8
  %18 = call i32 @RTC_MSEC_IN_U64MSEC(i64 %17)
  %19 = call i32 @RTC_U32MSEC_REG_WR(i32 %18)
  br label %20

20:                                               ; preds = %8, %2
  ret void
}

declare dso_local i64 @IS_RTC_USED(...) #1

declare dso_local i64 @RTC_U64MSEC_MK(i64, i16 zeroext) #1

declare dso_local i64 @SCC_U64MSEC_GET(...) #1

declare dso_local i32 @RTC_U32SECS_REG_WR(i32) #1

declare dso_local i32 @RTC_SECS_IN_U64MSEC(i64) #1

declare dso_local i32 @RTC_U32MSEC_REG_WR(i32) #1

declare dso_local i32 @RTC_MSEC_IN_U64MSEC(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
