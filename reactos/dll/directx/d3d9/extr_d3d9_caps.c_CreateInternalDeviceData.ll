; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/d3d9/extr_d3d9_caps.c_CreateInternalDeviceData.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/d3d9/extr_d3d9_caps.c_CreateInternalDeviceData.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32, i32, i64, i32 }

@D3DDEVTYPE_HAL = common dso_local global i64 0, align 8
@UNIMPLEMENTED = common dso_local global i32 0, align 4
@HEAP_ZERO_MEMORY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"Out of memory\00", align 1
@CCHDEVICENAME = common dso_local global i32 0, align 4
@REG_DWORD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"ForceDriverFlagsOn\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"ForceDriverFlagsOff\00", align 1
@g_NumDevices = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, %struct.TYPE_5__**, i64, i32**)* @CreateInternalDeviceData to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CreateInternalDeviceData(i32 %0, i32 %1, %struct.TYPE_5__** %2, i64 %3, i32** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_5__**, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32**, align 8
  %11 = alloca %struct.TYPE_5__*, align 8
  %12 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store %struct.TYPE_5__** %2, %struct.TYPE_5__*** %8, align 8
  store i64 %3, i64* %9, align 8
  store i32** %4, i32*** %10, align 8
  %13 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %8, align 8
  %14 = icmp ne %struct.TYPE_5__** %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %5
  %16 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %8, align 8
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %16, align 8
  br label %17

17:                                               ; preds = %15, %5
  %18 = load i32**, i32*** %10, align 8
  %19 = icmp ne i32** %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %17
  %21 = load i32**, i32*** %10, align 8
  store i32* null, i32** %21, align 8
  br label %22

22:                                               ; preds = %20, %17
  %23 = load i64, i64* %9, align 8
  %24 = load i64, i64* @D3DDEVTYPE_HAL, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %22
  %27 = load i32, i32* @UNIMPLEMENTED, align 4
  br label %73

28:                                               ; preds = %22
  %29 = call i32 (...) @GetProcessHeap()
  %30 = load i32, i32* @HEAP_ZERO_MEMORY, align 4
  %31 = call %struct.TYPE_5__* @HeapAlloc(i32 %29, i32 %30, i32 32)
  store %struct.TYPE_5__* %31, %struct.TYPE_5__** %11, align 8
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %33 = icmp eq %struct.TYPE_5__* null, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %28
  %35 = call i32 @DPRINT1(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %73

36:                                               ; preds = %28
  %37 = load i32, i32* %6, align 4
  %38 = call i64 @OsThunkDdCreateDirectDrawObject(i32 %37)
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  store i64 %38, i64* %40, align 8
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp eq i64 0, %43
  br i1 %44, label %45, label %49

45:                                               ; preds = %36
  %46 = call i32 (...) @GetProcessHeap()
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %48 = call i32 @HeapFree(i32 %46, i32 0, %struct.TYPE_5__* %47)
  br label %73

49:                                               ; preds = %36
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 4
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @CCHDEVICENAME, align 4
  %54 = load i32, i32* %7, align 4
  %55 = call i32 @SafeCopyString(i32 %52, i32 %53, i32 %54)
  %56 = load i64, i64* %9, align 8
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 3
  store i64 %56, i64* %58, align 8
  store i32 4, i32* %12, align 4
  %59 = load i32, i32* @REG_DWORD, align 4
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 2
  %62 = ptrtoint i32* %61 to i32
  %63 = call i32 @ReadRegistryValue(i32 %59, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %62, i32* %12)
  store i32 4, i32* %12, align 4
  %64 = load i32, i32* @REG_DWORD, align 4
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 1
  %67 = ptrtoint i32* %66 to i32
  %68 = call i32 @ReadRegistryValue(i32 %64, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %67, i32* %12)
  %69 = load i32, i32* @g_NumDevices, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* @g_NumDevices, align 4
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %72 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %8, align 8
  store %struct.TYPE_5__* %71, %struct.TYPE_5__** %72, align 8
  br label %73

73:                                               ; preds = %49, %45, %34, %26
  ret void
}

declare dso_local %struct.TYPE_5__* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @DPRINT1(i8*) #1

declare dso_local i64 @OsThunkDdCreateDirectDrawObject(i32) #1

declare dso_local i32 @HeapFree(i32, i32, %struct.TYPE_5__*) #1

declare dso_local i32 @SafeCopyString(i32, i32, i32) #1

declare dso_local i32 @ReadRegistryValue(i32, i8*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
