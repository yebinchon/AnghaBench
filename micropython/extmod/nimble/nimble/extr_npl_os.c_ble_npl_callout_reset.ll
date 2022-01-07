; ModuleID = '/home/carl/AnghaBench/micropython/extmod/nimble/nimble/extr_npl_os.c_ble_npl_callout_reset.c'
source_filename = "/home/carl/AnghaBench/micropython/extmod/nimble/nimble/extr_npl_os.c_ble_npl_callout_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ble_npl_callout = type { i32, i64 }

@.str = private unnamed_addr constant [39 x i8] c"ble_npl_callout_reset(%p, %u) tnow=%u\0A\00", align 1
@BLE_NPL_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ble_npl_callout_reset(%struct.ble_npl_callout* %0, i64 %1) #0 {
  %3 = alloca %struct.ble_npl_callout*, align 8
  %4 = alloca i64, align 8
  store %struct.ble_npl_callout* %0, %struct.ble_npl_callout** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load %struct.ble_npl_callout*, %struct.ble_npl_callout** %3, align 8
  %6 = load i64, i64* %4, align 8
  %7 = trunc i64 %6 to i32
  %8 = call i64 (...) @mp_hal_ticks_ms()
  %9 = trunc i64 %8 to i32
  %10 = call i32 @DEBUG_CALLOUT_printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), %struct.ble_npl_callout* %5, i32 %7, i32 %9)
  %11 = load %struct.ble_npl_callout*, %struct.ble_npl_callout** %3, align 8
  %12 = getelementptr inbounds %struct.ble_npl_callout, %struct.ble_npl_callout* %11, i32 0, i32 0
  store i32 1, i32* %12, align 8
  %13 = call i64 (...) @ble_npl_time_get()
  %14 = load i64, i64* %4, align 8
  %15 = add nsw i64 %13, %14
  %16 = load %struct.ble_npl_callout*, %struct.ble_npl_callout** %3, align 8
  %17 = getelementptr inbounds %struct.ble_npl_callout, %struct.ble_npl_callout* %16, i32 0, i32 1
  store i64 %15, i64* %17, align 8
  %18 = load i32, i32* @BLE_NPL_OK, align 4
  ret i32 %18
}

declare dso_local i32 @DEBUG_CALLOUT_printf(i8*, %struct.ble_npl_callout*, i32, i32) #1

declare dso_local i64 @mp_hal_ticks_ms(...) #1

declare dso_local i64 @ble_npl_time_get(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
