; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/cryptui/extr_main.c_create_advanced_filter.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/cryptui/extr_main.c_create_advanced_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i64, %struct.TYPE_16__* }
%struct.TYPE_15__ = type { i64 }

@HEAP_ZERO_MEMORY = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_16__* ()* @create_advanced_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_16__* @create_advanced_filter() #0 {
  %1 = alloca %struct.TYPE_16__*, align 8
  %2 = alloca %struct.TYPE_15__**, align 8
  %3 = alloca %struct.TYPE_16__*, align 8
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca %struct.TYPE_15__**, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = call i32 (...) @GetProcessHeap()
  %9 = load i32, i32* @HEAP_ZERO_MEMORY, align 4
  %10 = call %struct.TYPE_16__* @HeapAlloc(i32 %8, i32 %9, i32 16)
  store %struct.TYPE_16__* %10, %struct.TYPE_16__** %1, align 8
  %11 = load %struct.TYPE_16__*, %struct.TYPE_16__** %1, align 8
  %12 = icmp ne %struct.TYPE_16__* %11, null
  br i1 %12, label %13, label %102

13:                                               ; preds = %0
  %14 = call i64 @WTHelperGetKnownUsages(i32 1, %struct.TYPE_15__*** %2)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %101

16:                                               ; preds = %13
  %17 = call %struct.TYPE_16__* (...) @get_cert_mgr_usages()
  store %struct.TYPE_16__* %17, %struct.TYPE_16__** %3, align 8
  %18 = icmp ne %struct.TYPE_16__* %17, null
  br i1 %18, label %19, label %99

19:                                               ; preds = %16
  %20 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %21 = call %struct.TYPE_16__* @convert_usages_str_to_usage(%struct.TYPE_16__* %20)
  store %struct.TYPE_16__* %21, %struct.TYPE_16__** %4, align 8
  %22 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %23 = icmp ne %struct.TYPE_16__* %22, null
  br i1 %23, label %24, label %95

24:                                               ; preds = %19
  %25 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %2, align 8
  store %struct.TYPE_15__** %25, %struct.TYPE_15__*** %5, align 8
  br label %26

26:                                               ; preds = %83, %24
  %27 = load %struct.TYPE_16__*, %struct.TYPE_16__** %1, align 8
  %28 = icmp ne %struct.TYPE_16__* %27, null
  br i1 %28, label %29, label %33

29:                                               ; preds = %26
  %30 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %5, align 8
  %31 = load %struct.TYPE_15__*, %struct.TYPE_15__** %30, align 8
  %32 = icmp ne %struct.TYPE_15__* %31, null
  br label %33

33:                                               ; preds = %29, %26
  %34 = phi i1 [ false, %26 ], [ %32, %29 ]
  br i1 %34, label %35, label %86

35:                                               ; preds = %33
  %36 = load i64, i64* @FALSE, align 8
  store i64 %36, i64* %7, align 8
  store i64 0, i64* %6, align 8
  br label %37

37:                                               ; preds = %68, %35
  %38 = load i64, i64* %7, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %46, label %40

40:                                               ; preds = %37
  %41 = load i64, i64* %6, align 8
  %42 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp ult i64 %41, %44
  br label %46

46:                                               ; preds = %40, %37
  %47 = phi i1 [ false, %37 ], [ %45, %40 ]
  br i1 %47, label %48, label %71

48:                                               ; preds = %46
  %49 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %49, i32 0, i32 1
  %51 = load %struct.TYPE_16__*, %struct.TYPE_16__** %50, align 8
  %52 = load i64, i64* %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %51, i64 %52
  %54 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %5, align 8
  %55 = load %struct.TYPE_15__*, %struct.TYPE_15__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = bitcast %struct.TYPE_16__* %53 to { i64, %struct.TYPE_16__* }*
  %59 = getelementptr inbounds { i64, %struct.TYPE_16__* }, { i64, %struct.TYPE_16__* }* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = getelementptr inbounds { i64, %struct.TYPE_16__* }, { i64, %struct.TYPE_16__* }* %58, i32 0, i32 1
  %62 = load %struct.TYPE_16__*, %struct.TYPE_16__** %61, align 8
  %63 = call i32 @strcmp(i64 %60, %struct.TYPE_16__* %62, i64 %57)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %67, label %65

65:                                               ; preds = %48
  %66 = load i64, i64* @TRUE, align 8
  store i64 %66, i64* %7, align 8
  br label %67

67:                                               ; preds = %65, %48
  br label %68

68:                                               ; preds = %67
  %69 = load i64, i64* %6, align 8
  %70 = add i64 %69, 1
  store i64 %70, i64* %6, align 8
  br label %37

71:                                               ; preds = %46
  %72 = load i64, i64* %7, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %82, label %74

74:                                               ; preds = %71
  %75 = load %struct.TYPE_16__*, %struct.TYPE_16__** %1, align 8
  %76 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %5, align 8
  %77 = load %struct.TYPE_15__*, %struct.TYPE_15__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = inttoptr i64 %79 to %struct.TYPE_16__*
  %81 = call %struct.TYPE_16__* @add_oid_to_usage(%struct.TYPE_16__* %75, %struct.TYPE_16__* %80)
  store %struct.TYPE_16__* %81, %struct.TYPE_16__** %1, align 8
  br label %82

82:                                               ; preds = %74, %71
  br label %83

83:                                               ; preds = %82
  %84 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %84, i32 1
  store %struct.TYPE_15__** %85, %struct.TYPE_15__*** %5, align 8
  br label %26

86:                                               ; preds = %33
  %87 = call i32 (...) @GetProcessHeap()
  %88 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %88, i32 0, i32 1
  %90 = load %struct.TYPE_16__*, %struct.TYPE_16__** %89, align 8
  %91 = call i32 @HeapFree(i32 %87, i32 0, %struct.TYPE_16__* %90)
  %92 = call i32 (...) @GetProcessHeap()
  %93 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %94 = call i32 @HeapFree(i32 %92, i32 0, %struct.TYPE_16__* %93)
  br label %95

95:                                               ; preds = %86, %19
  %96 = call i32 (...) @GetProcessHeap()
  %97 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %98 = call i32 @HeapFree(i32 %96, i32 0, %struct.TYPE_16__* %97)
  br label %99

99:                                               ; preds = %95, %16
  %100 = call i64 @WTHelperGetKnownUsages(i32 2, %struct.TYPE_15__*** %2)
  br label %101

101:                                              ; preds = %99, %13
  br label %102

102:                                              ; preds = %101, %0
  %103 = load %struct.TYPE_16__*, %struct.TYPE_16__** %1, align 8
  ret %struct.TYPE_16__* %103
}

declare dso_local %struct.TYPE_16__* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i64 @WTHelperGetKnownUsages(i32, %struct.TYPE_15__***) #1

declare dso_local %struct.TYPE_16__* @get_cert_mgr_usages(...) #1

declare dso_local %struct.TYPE_16__* @convert_usages_str_to_usage(%struct.TYPE_16__*) #1

declare dso_local i32 @strcmp(i64, %struct.TYPE_16__*, i64) #1

declare dso_local %struct.TYPE_16__* @add_oid_to_usage(%struct.TYPE_16__*, %struct.TYPE_16__*) #1

declare dso_local i32 @HeapFree(i32, i32, %struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
