; ModuleID = '/home/carl/AnghaBench/micropython/extmod/nimble/nimble/extr_npl_os.c_os_callout_process.c'
source_filename = "/home/carl/AnghaBench/micropython/extmod/nimble/nimble/extr_npl_os.c_os_callout_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ble_npl_callout = type { i32, %struct.TYPE_3__, i64, i64, %struct.ble_npl_callout* }
%struct.TYPE_3__ = type { i32 (%struct.TYPE_3__*)* }

@global_callout = common dso_local global %struct.ble_npl_callout* null, align 8
@.str = private unnamed_addr constant [41 x i8] c"callout_run(%p) tnow=%u ticks=%u evq=%p\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"callout_run(%p) done\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @os_callout_process() #0 {
  %1 = alloca i64, align 8
  %2 = alloca %struct.ble_npl_callout*, align 8
  %3 = call i64 (...) @mp_hal_ticks_ms()
  store i64 %3, i64* %1, align 8
  %4 = load %struct.ble_npl_callout*, %struct.ble_npl_callout** @global_callout, align 8
  store %struct.ble_npl_callout* %4, %struct.ble_npl_callout** %2, align 8
  br label %5

5:                                                ; preds = %58, %0
  %6 = load %struct.ble_npl_callout*, %struct.ble_npl_callout** %2, align 8
  %7 = icmp ne %struct.ble_npl_callout* %6, null
  br i1 %7, label %8, label %62

8:                                                ; preds = %5
  %9 = load %struct.ble_npl_callout*, %struct.ble_npl_callout** %2, align 8
  %10 = getelementptr inbounds %struct.ble_npl_callout, %struct.ble_npl_callout* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %8
  br label %58

14:                                               ; preds = %8
  %15 = load i64, i64* %1, align 8
  %16 = load %struct.ble_npl_callout*, %struct.ble_npl_callout** %2, align 8
  %17 = getelementptr inbounds %struct.ble_npl_callout, %struct.ble_npl_callout* %16, i32 0, i32 3
  %18 = load i64, i64* %17, align 8
  %19 = sub nsw i64 %15, %18
  %20 = icmp sge i64 %19, 0
  br i1 %20, label %21, label %57

21:                                               ; preds = %14
  %22 = load %struct.ble_npl_callout*, %struct.ble_npl_callout** %2, align 8
  %23 = load i64, i64* %1, align 8
  %24 = trunc i64 %23 to i32
  %25 = load %struct.ble_npl_callout*, %struct.ble_npl_callout** %2, align 8
  %26 = getelementptr inbounds %struct.ble_npl_callout, %struct.ble_npl_callout* %25, i32 0, i32 3
  %27 = load i64, i64* %26, align 8
  %28 = trunc i64 %27 to i32
  %29 = load %struct.ble_npl_callout*, %struct.ble_npl_callout** %2, align 8
  %30 = getelementptr inbounds %struct.ble_npl_callout, %struct.ble_npl_callout* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = call i32 (i8*, %struct.ble_npl_callout*, ...) @DEBUG_CALLOUT_printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), %struct.ble_npl_callout* %22, i32 %24, i32 %28, i64 %31)
  %33 = load %struct.ble_npl_callout*, %struct.ble_npl_callout** %2, align 8
  %34 = getelementptr inbounds %struct.ble_npl_callout, %struct.ble_npl_callout* %33, i32 0, i32 0
  store i32 0, i32* %34, align 8
  %35 = load %struct.ble_npl_callout*, %struct.ble_npl_callout** %2, align 8
  %36 = getelementptr inbounds %struct.ble_npl_callout, %struct.ble_npl_callout* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %21
  %40 = load %struct.ble_npl_callout*, %struct.ble_npl_callout** %2, align 8
  %41 = getelementptr inbounds %struct.ble_npl_callout, %struct.ble_npl_callout* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.ble_npl_callout*, %struct.ble_npl_callout** %2, align 8
  %44 = getelementptr inbounds %struct.ble_npl_callout, %struct.ble_npl_callout* %43, i32 0, i32 1
  %45 = call i32 @ble_npl_eventq_put(i64 %42, %struct.TYPE_3__* %44)
  br label %54

46:                                               ; preds = %21
  %47 = load %struct.ble_npl_callout*, %struct.ble_npl_callout** %2, align 8
  %48 = getelementptr inbounds %struct.ble_npl_callout, %struct.ble_npl_callout* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i32 (%struct.TYPE_3__*)*, i32 (%struct.TYPE_3__*)** %49, align 8
  %51 = load %struct.ble_npl_callout*, %struct.ble_npl_callout** %2, align 8
  %52 = getelementptr inbounds %struct.ble_npl_callout, %struct.ble_npl_callout* %51, i32 0, i32 1
  %53 = call i32 %50(%struct.TYPE_3__* %52)
  br label %54

54:                                               ; preds = %46, %39
  %55 = load %struct.ble_npl_callout*, %struct.ble_npl_callout** %2, align 8
  %56 = call i32 (i8*, %struct.ble_npl_callout*, ...) @DEBUG_CALLOUT_printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), %struct.ble_npl_callout* %55)
  br label %57

57:                                               ; preds = %54, %14
  br label %58

58:                                               ; preds = %57, %13
  %59 = load %struct.ble_npl_callout*, %struct.ble_npl_callout** %2, align 8
  %60 = getelementptr inbounds %struct.ble_npl_callout, %struct.ble_npl_callout* %59, i32 0, i32 4
  %61 = load %struct.ble_npl_callout*, %struct.ble_npl_callout** %60, align 8
  store %struct.ble_npl_callout* %61, %struct.ble_npl_callout** %2, align 8
  br label %5

62:                                               ; preds = %5
  ret void
}

declare dso_local i64 @mp_hal_ticks_ms(...) #1

declare dso_local i32 @DEBUG_CALLOUT_printf(i8*, %struct.ble_npl_callout*, ...) #1

declare dso_local i32 @ble_npl_eventq_put(i64, %struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
