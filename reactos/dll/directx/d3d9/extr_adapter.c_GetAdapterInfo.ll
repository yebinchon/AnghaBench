; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/d3d9/extr_adapter.c_GetAdapterInfo.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/d3d9/extr_adapter.c_GetAdapterInfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_12__ = type { i32, i32, i32, i32 }

@FALSE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@MAX_DEVICE_IDENTIFIER_STRING = common dso_local global i32 0, align 4
@CCHDEVICENAME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @GetAdapterInfo(i32 %0, %struct.TYPE_13__* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca %struct.TYPE_12__, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %5, align 8
  %9 = call i32 @memset(%struct.TYPE_12__* %6, i32 0, i32 16)
  %10 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %6, i32 0, i32 0
  store i32 16, i32* %10, align 4
  store i64 0, i64* %7, align 8
  %11 = load i64, i64* @FALSE, align 8
  store i64 %11, i64* %8, align 8
  br label %12

12:                                               ; preds = %25, %2
  %13 = load i64, i64* %7, align 8
  %14 = call i64 @EnumDisplayDevicesA(i32* null, i64 %13, %struct.TYPE_12__* %6, i32 0)
  %15 = load i64, i64* @FALSE, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %28

17:                                               ; preds = %12
  %18 = load i32, i32* %4, align 4
  %19 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %6, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @_stricmp(i32 %18, i32 %20)
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %17
  %24 = load i64, i64* @TRUE, align 8
  store i64 %24, i64* %8, align 8
  br label %28

25:                                               ; preds = %17
  %26 = load i64, i64* %7, align 8
  %27 = add nsw i64 %26, 1
  store i64 %27, i64* %7, align 8
  br label %12

28:                                               ; preds = %23, %12
  %29 = load i64, i64* @FALSE, align 8
  %30 = load i64, i64* %8, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %28
  %33 = load i64, i64* @FALSE, align 8
  store i64 %33, i64* %3, align 8
  br label %64

34:                                               ; preds = %28
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %6, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @MAX_DEVICE_IDENTIFIER_STRING, align 4
  %41 = call i32 @lstrcpynA(i32 %37, i32 %39, i32 %40)
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %6, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @CCHDEVICENAME, align 4
  %48 = call i32 @lstrcpynA(i32 %44, i32 %46, i32 %47)
  %49 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %50 = call i64 @GetDriverName(%struct.TYPE_12__* %6, %struct.TYPE_13__* %49)
  %51 = load i64, i64* @FALSE, align 8
  %52 = icmp ne i64 %50, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %34
  %54 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %55 = call i32 @GetDriverVersion(%struct.TYPE_12__* %6, %struct.TYPE_13__* %54)
  br label %56

56:                                               ; preds = %53, %34
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %6, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %60 = call i32 @GetDeviceId(i32 %58, %struct.TYPE_13__* %59)
  %61 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %62 = call i32 @GenerateDeviceIdentifier(%struct.TYPE_13__* %61)
  %63 = load i64, i64* @TRUE, align 8
  store i64 %63, i64* %3, align 8
  br label %64

64:                                               ; preds = %56, %32
  %65 = load i64, i64* %3, align 8
  ret i64 %65
}

declare dso_local i32 @memset(%struct.TYPE_12__*, i32, i32) #1

declare dso_local i64 @EnumDisplayDevicesA(i32*, i64, %struct.TYPE_12__*, i32) #1

declare dso_local i64 @_stricmp(i32, i32) #1

declare dso_local i32 @lstrcpynA(i32, i32, i32) #1

declare dso_local i64 @GetDriverName(%struct.TYPE_12__*, %struct.TYPE_13__*) #1

declare dso_local i32 @GetDriverVersion(%struct.TYPE_12__*, %struct.TYPE_13__*) #1

declare dso_local i32 @GetDeviceId(i32, %struct.TYPE_13__*) #1

declare dso_local i32 @GenerateDeviceIdentifier(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
