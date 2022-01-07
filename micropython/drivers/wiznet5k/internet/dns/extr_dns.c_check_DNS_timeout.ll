; ModuleID = '/home/carl/AnghaBench/micropython/drivers/wiznet5k/internet/dns/extr_dns.c_check_DNS_timeout.c'
source_filename = "/home/carl/AnghaBench/micropython/drivers/wiznet5k/internet/dns/extr_dns.c_check_DNS_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@check_DNS_timeout.retry_count = internal global i64 0, align 8
@hal_sys_tick = common dso_local global i32 0, align 4
@DNS_WAIT_TIME = common dso_local global i32 0, align 4
@MAX_DNS_RETRY = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @check_DNS_timeout() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = call i32 (...) @HAL_GetTick()
  store i32 %3, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = load i32, i32* @hal_sys_tick, align 4
  %6 = sub nsw i32 %4, %5
  %7 = load i32, i32* @DNS_WAIT_TIME, align 4
  %8 = mul nsw i32 %7, 1000
  %9 = icmp sge i32 %6, %8
  br i1 %9, label %10, label %19

10:                                               ; preds = %0
  %11 = load i32, i32* %2, align 4
  store i32 %11, i32* @hal_sys_tick, align 4
  %12 = load i64, i64* @check_DNS_timeout.retry_count, align 8
  %13 = load i64, i64* @MAX_DNS_RETRY, align 8
  %14 = icmp sge i64 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %10
  store i64 0, i64* @check_DNS_timeout.retry_count, align 8
  store i32 -1, i32* %1, align 4
  br label %20

16:                                               ; preds = %10
  %17 = load i64, i64* @check_DNS_timeout.retry_count, align 8
  %18 = add nsw i64 %17, 1
  store i64 %18, i64* @check_DNS_timeout.retry_count, align 8
  store i32 0, i32* %1, align 4
  br label %20

19:                                               ; preds = %0
  store i32 1, i32* %1, align 4
  br label %20

20:                                               ; preds = %19, %16, %15
  %21 = load i32, i32* %1, align 4
  ret i32 %21
}

declare dso_local i32 @HAL_GetTick(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
