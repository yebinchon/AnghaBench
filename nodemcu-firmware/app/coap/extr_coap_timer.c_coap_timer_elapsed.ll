; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/coap/extr_coap_timer.c_coap_timer_elapsed.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/coap/extr_coap_timer.c_coap_timer_elapsed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@basetime = common dso_local global i64 0, align 8
@SYS_TIME_MAX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @coap_timer_elapsed(i64* %0) #0 {
  %2 = alloca i64*, align 8
  %3 = alloca i64, align 8
  store i64* %0, i64** %2, align 8
  %4 = call i32 (...) @system_get_time()
  %5 = sdiv i32 %4, 1000
  %6 = sext i32 %5 to i64
  store i64 %6, i64* %3, align 8
  %7 = load i64, i64* %3, align 8
  %8 = load i64, i64* @basetime, align 8
  %9 = icmp sge i64 %7, %8
  br i1 %9, label %10, label %15

10:                                               ; preds = %1
  %11 = load i64, i64* %3, align 8
  %12 = load i64, i64* @basetime, align 8
  %13 = sub nsw i64 %11, %12
  %14 = load i64*, i64** %2, align 8
  store i64 %13, i64* %14, align 8
  br label %22

15:                                               ; preds = %1
  %16 = load i64, i64* %3, align 8
  %17 = load i64, i64* @SYS_TIME_MAX, align 8
  %18 = add nsw i64 %16, %17
  %19 = load i64, i64* @basetime, align 8
  %20 = sub nsw i64 %18, %19
  %21 = load i64*, i64** %2, align 8
  store i64 %20, i64* %21, align 8
  br label %22

22:                                               ; preds = %15, %10
  %23 = load i64, i64* %3, align 8
  store i64 %23, i64* @basetime, align 8
  ret void
}

declare dso_local i32 @system_get_time(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
