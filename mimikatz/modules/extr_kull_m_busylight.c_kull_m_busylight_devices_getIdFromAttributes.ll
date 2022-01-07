; ModuleID = '/home/carl/AnghaBench/mimikatz/modules/extr_kull_m_busylight.c_kull_m_busylight_devices_getIdFromAttributes.c'
source_filename = "/home/carl/AnghaBench/mimikatz/modules/extr_kull_m_busylight.c_kull_m_busylight_devices_getIdFromAttributes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i64 }
%struct.TYPE_7__ = type { i64, i64 }

@KULL_M_BUSYLIGHT_CATALOG = common dso_local global %struct.TYPE_8__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_8__* @kull_m_busylight_devices_getIdFromAttributes(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i64, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  %5 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %6 = icmp ne %struct.TYPE_7__* %5, null
  br i1 %6, label %7, label %42

7:                                                ; preds = %1
  store i64 0, i64* %4, align 8
  br label %8

8:                                                ; preds = %38, %7
  %9 = load i64, i64* %4, align 8
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** @KULL_M_BUSYLIGHT_CATALOG, align 8
  %11 = call i64 @ARRAYSIZE(%struct.TYPE_8__* %10)
  %12 = icmp ult i64 %9, %11
  br i1 %12, label %13, label %41

13:                                               ; preds = %8
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** @KULL_M_BUSYLIGHT_CATALOG, align 8
  %15 = load i64, i64* %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i64 %15
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp eq i64 %18, %21
  br i1 %22, label %23, label %37

23:                                               ; preds = %13
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** @KULL_M_BUSYLIGHT_CATALOG, align 8
  %25 = load i64, i64* %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp eq i64 %28, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %23
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** @KULL_M_BUSYLIGHT_CATALOG, align 8
  %35 = load i64, i64* %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i64 %35
  store %struct.TYPE_8__* %36, %struct.TYPE_8__** %2, align 8
  br label %43

37:                                               ; preds = %23, %13
  br label %38

38:                                               ; preds = %37
  %39 = load i64, i64* %4, align 8
  %40 = add i64 %39, 1
  store i64 %40, i64* %4, align 8
  br label %8

41:                                               ; preds = %8
  br label %42

42:                                               ; preds = %41, %1
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %2, align 8
  br label %43

43:                                               ; preds = %42, %33
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  ret %struct.TYPE_8__* %44
}

declare dso_local i64 @ARRAYSIZE(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
