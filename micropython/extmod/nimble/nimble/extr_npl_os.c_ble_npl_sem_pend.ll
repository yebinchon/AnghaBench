; ModuleID = '/home/carl/AnghaBench/micropython/extmod/nimble/nimble/extr_npl_os.c_ble_npl_sem_pend.c'
source_filename = "/home/carl/AnghaBench/micropython/extmod/nimble/nimble/extr_npl_os.c_ble_npl_sem_pend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ble_npl_sem = type { i64 }

@.str = private unnamed_addr constant [35 x i8] c"ble_npl_sem_pend(%p, %u) count=%u\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"timeout\0A\00", align 1
@BLE_NPL_TIMEOUT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"got response in %u ms\0A\00", align 1
@BLE_NPL_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ble_npl_sem_pend(%struct.ble_npl_sem* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ble_npl_sem*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.ble_npl_sem* %0, %struct.ble_npl_sem** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load %struct.ble_npl_sem*, %struct.ble_npl_sem** %4, align 8
  %8 = load i64, i64* %5, align 8
  %9 = trunc i64 %8 to i32
  %10 = load %struct.ble_npl_sem*, %struct.ble_npl_sem** %4, align 8
  %11 = getelementptr inbounds %struct.ble_npl_sem, %struct.ble_npl_sem* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = trunc i64 %12 to i32
  %14 = call i32 (i8*, ...) @DEBUG_SEM_printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), %struct.ble_npl_sem* %7, i32 %9, i32 %13)
  %15 = load %struct.ble_npl_sem*, %struct.ble_npl_sem** %4, align 8
  %16 = getelementptr inbounds %struct.ble_npl_sem, %struct.ble_npl_sem* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %56

19:                                               ; preds = %2
  %20 = call i64 (...) @mp_hal_ticks_ms()
  store i64 %20, i64* %6, align 8
  br label %21

21:                                               ; preds = %40, %19
  %22 = load %struct.ble_npl_sem*, %struct.ble_npl_sem** %4, align 8
  %23 = getelementptr inbounds %struct.ble_npl_sem, %struct.ble_npl_sem* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %21
  %27 = call i64 (...) @mp_hal_ticks_ms()
  %28 = load i64, i64* %6, align 8
  %29 = sub nsw i64 %27, %28
  %30 = load i64, i64* %5, align 8
  %31 = icmp slt i64 %29, %30
  br label %32

32:                                               ; preds = %26, %21
  %33 = phi i1 [ false, %21 ], [ %31, %26 ]
  br i1 %33, label %34, label %42

34:                                               ; preds = %32
  call void @nimble_uart_process()
  %35 = load %struct.ble_npl_sem*, %struct.ble_npl_sem** %4, align 8
  %36 = getelementptr inbounds %struct.ble_npl_sem, %struct.ble_npl_sem* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  br label %42

40:                                               ; preds = %34
  %41 = call i32 (...) @__WFI()
  br label %21

42:                                               ; preds = %39, %32
  %43 = load %struct.ble_npl_sem*, %struct.ble_npl_sem** %4, align 8
  %44 = getelementptr inbounds %struct.ble_npl_sem, %struct.ble_npl_sem* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %42
  %48 = call i32 @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %49 = load i32, i32* @BLE_NPL_TIMEOUT, align 4
  store i32 %49, i32* %3, align 4
  br label %62

50:                                               ; preds = %42
  %51 = call i64 (...) @mp_hal_ticks_ms()
  %52 = load i64, i64* %6, align 8
  %53 = sub nsw i64 %51, %52
  %54 = trunc i64 %53 to i32
  %55 = call i32 (i8*, ...) @DEBUG_SEM_printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %54)
  br label %56

56:                                               ; preds = %50, %2
  %57 = load %struct.ble_npl_sem*, %struct.ble_npl_sem** %4, align 8
  %58 = getelementptr inbounds %struct.ble_npl_sem, %struct.ble_npl_sem* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = sub nsw i64 %59, 1
  store i64 %60, i64* %58, align 8
  %61 = load i32, i32* @BLE_NPL_OK, align 4
  store i32 %61, i32* %3, align 4
  br label %62

62:                                               ; preds = %56, %47
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local i32 @DEBUG_SEM_printf(i8*, ...) #1

declare dso_local i64 @mp_hal_ticks_ms(...) #1

declare dso_local void @nimble_uart_process() #1

declare dso_local i32 @__WFI(...) #1

declare dso_local i32 @printf(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
