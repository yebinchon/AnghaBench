; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/d3d9/extr_adapter.c_GetDriverVersion.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/d3d9/extr_adapter.c_GetDriverVersion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }

@FALSE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [9 x i8] c"KERNEL32\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"IsWow64Process\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"Wow64DisableWow64FsRedirection\00", align 1
@HEAP_ZERO_MEMORY = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [2 x i8] c"\\\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"Wow64RevertWow64FsRedirection\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.TYPE_7__*)* @GetDriverVersion to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @GetDriverVersion(i32 %0, %struct.TYPE_7__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32 (i32, i64*)*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32 (i32*)*, align 8
  %11 = alloca %struct.TYPE_6__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32 (i32*)*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %4, align 8
  %14 = load i64, i64* @FALSE, align 8
  store i64 %14, i64* %7, align 8
  %15 = call i32 @GetModuleHandleA(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = call i64 @GetProcAddress(i32 %16, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %18 = inttoptr i64 %17 to i32 (i32, i64*)*
  store i32 (i32, i64*)* %18, i32 (i32, i64*)** %6, align 8
  %19 = load i32 (i32, i64*)*, i32 (i32, i64*)** %6, align 8
  %20 = icmp ne i32 (i32, i64*)* %19, null
  br i1 %20, label %21, label %34

21:                                               ; preds = %2
  %22 = load i32 (i32, i64*)*, i32 (i32, i64*)** %6, align 8
  %23 = call i32 (...) @GetCurrentProcess()
  %24 = call i32 %22(i32 %23, i64* %7)
  %25 = load i64, i64* %7, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %21
  %28 = load i32, i32* %5, align 4
  %29 = call i64 @GetProcAddress(i32 %28, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %30 = inttoptr i64 %29 to i32 (i32*)*
  store i32 (i32*)* %30, i32 (i32*)** %10, align 8
  %31 = load i32 (i32*)*, i32 (i32*)** %10, align 8
  %32 = call i32 %31(i32* %8)
  br label %33

33:                                               ; preds = %27, %21
  br label %34

34:                                               ; preds = %33, %2
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i64 @GetFileVersionInfoSizeA(i32 %37, i32* null)
  store i64 %38, i64* %9, align 8
  %39 = load i64, i64* %9, align 8
  %40 = icmp sgt i64 %39, 0
  br i1 %40, label %41, label %78

41:                                               ; preds = %34
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %11, align 8
  %42 = call i32 (...) @GetProcessHeap()
  %43 = load i32, i32* @HEAP_ZERO_MEMORY, align 4
  %44 = load i64, i64* %9, align 8
  %45 = call i32 @HeapAlloc(i32 %42, i32 %43, i64 %44)
  store i32 %45, i32* %12, align 4
  %46 = load i64, i64* @TRUE, align 8
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load i64, i64* %9, align 8
  %51 = load i32, i32* %12, align 4
  %52 = call i64 @GetFileVersionInfoA(i32 %49, i32 0, i64 %50, i32 %51)
  %53 = icmp eq i64 %46, %52
  br i1 %53, label %54, label %74

54:                                               ; preds = %41
  %55 = load i64, i64* @TRUE, align 8
  %56 = load i32, i32* %12, align 4
  %57 = bitcast %struct.TYPE_6__** %11 to i32*
  %58 = call i64 @VerQueryValueA(i32 %56, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i32* %57, i64* %9)
  %59 = icmp eq i64 %55, %58
  br i1 %59, label %60, label %73

60:                                               ; preds = %54
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 1
  store i32 %63, i32* %66, align 4
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 0
  store i32 %69, i32* %72, align 4
  br label %73

73:                                               ; preds = %60, %54
  br label %74

74:                                               ; preds = %73, %41
  %75 = call i32 (...) @GetProcessHeap()
  %76 = load i32, i32* %12, align 4
  %77 = call i32 @HeapFree(i32 %75, i32 0, i32 %76)
  br label %78

78:                                               ; preds = %74, %34
  %79 = load i64, i64* %7, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %87

81:                                               ; preds = %78
  %82 = load i32, i32* %5, align 4
  %83 = call i64 @GetProcAddress(i32 %82, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0))
  %84 = inttoptr i64 %83 to i32 (i32*)*
  store i32 (i32*)* %84, i32 (i32*)** %13, align 8
  %85 = load i32 (i32*)*, i32 (i32*)** %13, align 8
  %86 = call i32 %85(i32* %8)
  br label %87

87:                                               ; preds = %81, %78
  ret void
}

declare dso_local i32 @GetModuleHandleA(i8*) #1

declare dso_local i64 @GetProcAddress(i32, i8*) #1

declare dso_local i32 @GetCurrentProcess(...) #1

declare dso_local i64 @GetFileVersionInfoSizeA(i32, i32*) #1

declare dso_local i32 @HeapAlloc(i32, i32, i64) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i64 @GetFileVersionInfoA(i32, i32, i64, i32) #1

declare dso_local i64 @VerQueryValueA(i32, i8*, i32*, i64*) #1

declare dso_local i32 @HeapFree(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
