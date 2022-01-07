; ModuleID = '/home/carl/AnghaBench/mimikatz/mimikatz/modules/extr_kuhl_m_busylight.c_kuhl_m_busylight_init.c'
source_filename = "/home/carl/AnghaBench/mimikatz/mimikatz/modules/extr_kuhl_m_busylight.c_kuhl_m_busylight_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.TYPE_5__* }

@FALSE = common dso_local global i32 0, align 4
@kuhl_m_busylight_devices = common dso_local global %struct.TYPE_5__* null, align 8
@BUSYLIGHT_CAP_LIGHT = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@isBusyLight = common dso_local global i32 0, align 4
@kuhl_m_busylight_steps_KiwiHack = common dso_local global i32 0, align 4
@kuhl_m_busylight_steps_ReneCotyHack = common dso_local global i32 0, align 4
@STATUS_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kuhl_m_busylight_init() #0 {
  %1 = alloca %struct.TYPE_5__*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = call i32 @GetKeyboardLayout(i32 0)
  %5 = call i32 @PtrToUlong(i32 %4)
  %6 = ashr i32 %5, 16
  %7 = icmp eq i32 %6, 1036
  %8 = zext i1 %7 to i32
  store i32 %8, i32* %2, align 4
  %9 = load i32, i32* @FALSE, align 4
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* @BUSYLIGHT_CAP_LIGHT, align 4
  %11 = load i32, i32* @TRUE, align 4
  %12 = call i32 @kull_m_busylight_devices_get(%struct.TYPE_5__** @kuhl_m_busylight_devices, i32* null, i32 %10, i32 %11)
  store i32 %12, i32* @isBusyLight, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %69

14:                                               ; preds = %0
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** @kuhl_m_busylight_devices, align 8
  store %struct.TYPE_5__* %15, %struct.TYPE_5__** %1, align 8
  br label %16

16:                                               ; preds = %64, %14
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %18 = icmp ne %struct.TYPE_5__* %17, null
  br i1 %18, label %19, label %68

19:                                               ; preds = %16
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = srem i32 %22, 2
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %19
  %26 = load i32, i32* %2, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %40, label %28

28:                                               ; preds = %25, %19
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = srem i32 %31, 2
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %28
  %35 = load i32, i32* %2, align 4
  %36 = icmp ne i32 %35, 0
  %37 = xor i1 %36, true
  br label %38

38:                                               ; preds = %34, %28
  %39 = phi i1 [ false, %28 ], [ %37, %34 ]
  br label %40

40:                                               ; preds = %38, %25
  %41 = phi i1 [ true, %25 ], [ %39, %38 ]
  %42 = zext i1 %41 to i32
  store i32 %42, i32* %3, align 4
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %44 = load i32, i32* %3, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %40
  %47 = load i32, i32* @kuhl_m_busylight_steps_KiwiHack, align 4
  br label %50

48:                                               ; preds = %40
  %49 = load i32, i32* @kuhl_m_busylight_steps_ReneCotyHack, align 4
  br label %50

50:                                               ; preds = %48, %46
  %51 = phi i32 [ %47, %46 ], [ %49, %48 ]
  %52 = load i32, i32* %3, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %50
  %55 = load i32, i32* @kuhl_m_busylight_steps_KiwiHack, align 4
  %56 = call i32 @ARRAYSIZE(i32 %55)
  br label %60

57:                                               ; preds = %50
  %58 = load i32, i32* @kuhl_m_busylight_steps_ReneCotyHack, align 4
  %59 = call i32 @ARRAYSIZE(i32 %58)
  br label %60

60:                                               ; preds = %57, %54
  %61 = phi i32 [ %56, %54 ], [ %59, %57 ]
  %62 = load i32, i32* @FALSE, align 4
  %63 = call i32 @kull_m_busylight_request_send(%struct.TYPE_5__* %43, i32 %51, i32 %61, i32 %62)
  br label %64

64:                                               ; preds = %60
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 1
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %66, align 8
  store %struct.TYPE_5__* %67, %struct.TYPE_5__** %1, align 8
  br label %16

68:                                               ; preds = %16
  br label %69

69:                                               ; preds = %68, %0
  %70 = load i32, i32* @STATUS_SUCCESS, align 4
  ret i32 %70
}

declare dso_local i32 @PtrToUlong(i32) #1

declare dso_local i32 @GetKeyboardLayout(i32) #1

declare dso_local i32 @kull_m_busylight_devices_get(%struct.TYPE_5__**, i32*, i32, i32) #1

declare dso_local i32 @kull_m_busylight_request_send(%struct.TYPE_5__*, i32, i32, i32) #1

declare dso_local i32 @ARRAYSIZE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
