; ModuleID = '/home/carl/AnghaBench/micropython/ports/esp8266/extr_machine_rtc.c_mp_hal_rtc_init.c'
source_filename = "/home/carl/AnghaBench/micropython/ports/esp8266/extr_machine_rtc.c_mp_hal_rtc_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MEM_USER_MAGIC_ADDR = common dso_local global i32 0, align 4
@MEM_MAGIC = common dso_local global i64 0, align 8
@MEM_CAL_ADDR = common dso_local global i32 0, align 4
@MEM_DELTA_ADDR = common dso_local global i32 0, align 4
@MEM_USER_LEN_ADDR = common dso_local global i32 0, align 4
@rtc_last_ticks = common dso_local global i32 0, align 4
@pyb_rtc_alarm0_wake = common dso_local global i64 0, align 8
@pyb_rtc_alarm0_expiry = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mp_hal_rtc_init() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = load i32, i32* @MEM_USER_MAGIC_ADDR, align 4
  %6 = call i32 @system_rtc_mem_read(i32 %5, i64* %1, i32 8)
  %7 = load i64, i64* %1, align 8
  %8 = load i64, i64* @MEM_MAGIC, align 8
  %9 = icmp ne i64 %7, %8
  br i1 %9, label %10, label %21

10:                                               ; preds = %0
  %11 = load i64, i64* @MEM_MAGIC, align 8
  store i64 %11, i64* %1, align 8
  %12 = load i32, i32* @MEM_USER_MAGIC_ADDR, align 4
  %13 = call i32 @system_rtc_mem_write(i32 %12, i64* %1, i32 8)
  %14 = call i64 (...) @system_rtc_clock_cali_proc()
  store i64 %14, i64* %2, align 8
  store i64 0, i64* %3, align 8
  %15 = load i32, i32* @MEM_CAL_ADDR, align 4
  %16 = call i32 @system_rtc_mem_write(i32 %15, i64* %2, i32 8)
  %17 = load i32, i32* @MEM_DELTA_ADDR, align 4
  %18 = call i32 @system_rtc_mem_write(i32 %17, i64* %3, i32 8)
  store i64 0, i64* %4, align 8
  %19 = load i32, i32* @MEM_USER_LEN_ADDR, align 4
  %20 = call i32 @system_rtc_mem_write(i32 %19, i64* %4, i32 8)
  br label %21

21:                                               ; preds = %10, %0
  %22 = call i32 (...) @system_get_rtc_time()
  store i32 %22, i32* @rtc_last_ticks, align 4
  store i64 0, i64* @pyb_rtc_alarm0_wake, align 8
  store i64 0, i64* @pyb_rtc_alarm0_expiry, align 8
  ret void
}

declare dso_local i32 @system_rtc_mem_read(i32, i64*, i32) #1

declare dso_local i32 @system_rtc_mem_write(i32, i64*, i32) #1

declare dso_local i64 @system_rtc_clock_cali_proc(...) #1

declare dso_local i32 @system_get_rtc_time(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
