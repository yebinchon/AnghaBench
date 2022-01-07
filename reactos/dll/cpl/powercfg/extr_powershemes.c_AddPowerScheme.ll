; ModuleID = '/home/carl/AnghaBench/reactos/dll/cpl/powercfg/extr_powershemes.c_AddPowerScheme.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/cpl/powercfg/extr_powershemes.c_AddPowerScheme.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_8__*, %struct.TYPE_8__*, i32, i32, i32 }
%struct.TYPE_7__ = type { i32 }

@FALSE = common dso_local global i64 0, align 8
@HEAP_ZERO_MEMORY = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_8__* (%struct.TYPE_7__*, i32, i32, i32, i32, i32, i32)* @AddPowerScheme to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_8__* @AddPowerScheme(%struct.TYPE_7__* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_8__*, align 8
  %17 = alloca i64, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %18 = load i64, i64* @FALSE, align 8
  store i64 %18, i64* %17, align 8
  %19 = call i32 (...) @GetProcessHeap()
  %20 = load i32, i32* @HEAP_ZERO_MEMORY, align 4
  %21 = call i8* @HeapAlloc(i32 %19, i32 %20, i32 4)
  %22 = bitcast i8* %21 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %22, %struct.TYPE_8__** %16, align 8
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %24 = icmp eq %struct.TYPE_8__* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %7
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %8, align 8
  br label %116

26:                                               ; preds = %7
  %27 = load i32, i32* %10, align 4
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 4
  store i32 %27, i32* %29, align 8
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 3
  %32 = load i32, i32* %15, align 4
  %33 = call i32 @CopyMemory(i32* %31, i32 %32, i32 4)
  %34 = load i32, i32* %11, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %55

36:                                               ; preds = %26
  %37 = call i32 (...) @GetProcessHeap()
  %38 = load i32, i32* @HEAP_ZERO_MEMORY, align 4
  %39 = load i32, i32* %11, align 4
  %40 = call i8* @HeapAlloc(i32 %37, i32 %38, i32 %39)
  %41 = bitcast i8* %40 to %struct.TYPE_8__*
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 1
  store %struct.TYPE_8__* %41, %struct.TYPE_8__** %43, align 8
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 1
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %45, align 8
  %47 = icmp eq %struct.TYPE_8__* %46, null
  br i1 %47, label %48, label %49

48:                                               ; preds = %36
  br label %84

49:                                               ; preds = %36
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 1
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %51, align 8
  %53 = load i32, i32* %12, align 4
  %54 = call i32 @_tcscpy(%struct.TYPE_8__* %52, i32 %53)
  br label %55

55:                                               ; preds = %49, %26
  %56 = load i32, i32* %13, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %77

58:                                               ; preds = %55
  %59 = call i32 (...) @GetProcessHeap()
  %60 = load i32, i32* @HEAP_ZERO_MEMORY, align 4
  %61 = load i32, i32* %13, align 4
  %62 = call i8* @HeapAlloc(i32 %59, i32 %60, i32 %61)
  %63 = bitcast i8* %62 to %struct.TYPE_8__*
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 0
  store %struct.TYPE_8__* %63, %struct.TYPE_8__** %65, align 8
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 0
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %67, align 8
  %69 = icmp eq %struct.TYPE_8__* %68, null
  br i1 %69, label %70, label %71

70:                                               ; preds = %58
  br label %84

71:                                               ; preds = %58
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 0
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %73, align 8
  %75 = load i32, i32* %14, align 4
  %76 = call i32 @_tcscpy(%struct.TYPE_8__* %74, i32 %75)
  br label %77

77:                                               ; preds = %71, %55
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 0
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 2
  %82 = call i32 @InsertTailList(i32* %79, i32* %81)
  %83 = load i64, i64* @TRUE, align 8
  store i64 %83, i64* %17, align 8
  br label %84

84:                                               ; preds = %77, %70, %48
  %85 = load i64, i64* %17, align 8
  %86 = load i64, i64* @FALSE, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %114

88:                                               ; preds = %84
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 1
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %90, align 8
  %92 = icmp ne %struct.TYPE_8__* %91, null
  br i1 %92, label %93, label %99

93:                                               ; preds = %88
  %94 = call i32 (...) @GetProcessHeap()
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 1
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %96, align 8
  %98 = call i32 @HeapFree(i32 %94, i32 0, %struct.TYPE_8__* %97)
  br label %99

99:                                               ; preds = %93, %88
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 0
  %102 = load %struct.TYPE_8__*, %struct.TYPE_8__** %101, align 8
  %103 = icmp ne %struct.TYPE_8__* %102, null
  br i1 %103, label %104, label %110

104:                                              ; preds = %99
  %105 = call i32 (...) @GetProcessHeap()
  %106 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 0
  %108 = load %struct.TYPE_8__*, %struct.TYPE_8__** %107, align 8
  %109 = call i32 @HeapFree(i32 %105, i32 0, %struct.TYPE_8__* %108)
  br label %110

110:                                              ; preds = %104, %99
  %111 = call i32 (...) @GetProcessHeap()
  %112 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %113 = call i32 @HeapFree(i32 %111, i32 0, %struct.TYPE_8__* %112)
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %16, align 8
  br label %114

114:                                              ; preds = %110, %84
  %115 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  store %struct.TYPE_8__* %115, %struct.TYPE_8__** %8, align 8
  br label %116

116:                                              ; preds = %114, %25
  %117 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  ret %struct.TYPE_8__* %117
}

declare dso_local i8* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @CopyMemory(i32*, i32, i32) #1

declare dso_local i32 @_tcscpy(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @InsertTailList(i32*, i32*) #1

declare dso_local i32 @HeapFree(i32, i32, %struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
