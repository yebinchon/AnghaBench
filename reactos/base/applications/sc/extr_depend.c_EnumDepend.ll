; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/sc/extr_depend.c_EnumDepend.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/sc/extr_depend.c_EnumDepend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i64, i32 }

@TRUE = common dso_local global i64 0, align 8
@SC_MANAGER_CONNECT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"[SC] OpenSCManager FAILED %lu:\0A\0A\00", align 1
@FALSE = common dso_local global i64 0, align 8
@SERVICE_ENUMERATE_DEPENDENTS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"[SC] OpenService FAILED %lu:\0A\0A\00", align 1
@SERVICE_STATE_ALL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"[SC] EnumDependentServices FAILED %lu:\0A\0A\00", align 1
@ERROR_OUTOFMEMORY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"[SC] HeapAlloc FAILED %lu:\0A\0A\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"Enum: entriesRead = %lu\0A\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"SERVICE_NAME: %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"DISPLAY_NAME: %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @EnumDepend(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  store i32* null, i32** %3, align 8
  store i32* null, i32** %4, align 8
  %10 = load i64, i64* @TRUE, align 8
  store i64 %10, i64* %5, align 8
  store i64 0, i64* %6, align 8
  store i64 0, i64* %7, align 8
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %8, align 8
  %11 = load i32, i32* @SC_MANAGER_CONNECT, align 4
  %12 = call i32* @OpenSCManager(i32* null, i32* null, i32 %11)
  store i32* %12, i32** %3, align 8
  %13 = load i32*, i32** %3, align 8
  %14 = icmp eq i32* %13, null
  br i1 %14, label %15, label %20

15:                                               ; preds = %1
  %16 = call i32 @_T(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %17 = call i64 (...) @GetLastError()
  %18 = call i32 (i32, ...) @_tprintf(i32 %16, i64 %17)
  %19 = load i64, i64* @FALSE, align 8
  store i64 %19, i64* %5, align 8
  br label %105

20:                                               ; preds = %1
  %21 = load i32*, i32** %3, align 8
  %22 = load i32, i32* %2, align 4
  %23 = load i32, i32* @SERVICE_ENUMERATE_DEPENDENTS, align 4
  %24 = call i32* @OpenService(i32* %21, i32 %22, i32 %23)
  store i32* %24, i32** %4, align 8
  %25 = load i32*, i32** %4, align 8
  %26 = icmp eq i32* %25, null
  br i1 %26, label %27, label %32

27:                                               ; preds = %20
  %28 = call i32 @_T(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %29 = call i64 (...) @GetLastError()
  %30 = call i32 (i32, ...) @_tprintf(i32 %28, i64 %29)
  %31 = load i64, i64* @FALSE, align 8
  store i64 %31, i64* %5, align 8
  br label %105

32:                                               ; preds = %20
  %33 = load i32*, i32** %4, align 8
  %34 = load i32, i32* @SERVICE_STATE_ALL, align 4
  %35 = call i32 @EnumDependentServices(i32* %33, i32 %34, %struct.TYPE_5__* null, i64 0, i64* %6, i64* %7)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %46, label %37

37:                                               ; preds = %32
  %38 = load i64, i64* %6, align 8
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %37
  %41 = call i32 @_T(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  %42 = call i64 (...) @GetLastError()
  %43 = call i32 (i32, ...) @_tprintf(i32 %41, i64 %42)
  %44 = load i64, i64* @FALSE, align 8
  store i64 %44, i64* %5, align 8
  br label %105

45:                                               ; preds = %37
  br label %46

46:                                               ; preds = %45, %32
  %47 = call i32 (...) @GetProcessHeap()
  %48 = load i64, i64* %6, align 8
  %49 = call %struct.TYPE_5__* @HeapAlloc(i32 %47, i32 0, i64 %48)
  store %struct.TYPE_5__* %49, %struct.TYPE_5__** %8, align 8
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %51 = icmp eq %struct.TYPE_5__* %50, null
  br i1 %51, label %52, label %59

52:                                               ; preds = %46
  %53 = load i32, i32* @ERROR_OUTOFMEMORY, align 4
  %54 = call i32 @SetLastError(i32 %53)
  %55 = call i32 @_T(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  %56 = call i64 (...) @GetLastError()
  %57 = call i32 (i32, ...) @_tprintf(i32 %55, i64 %56)
  %58 = load i64, i64* @FALSE, align 8
  store i64 %58, i64* %5, align 8
  br label %105

59:                                               ; preds = %46
  %60 = load i32*, i32** %4, align 8
  %61 = load i32, i32* @SERVICE_STATE_ALL, align 4
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %63 = load i64, i64* %6, align 8
  %64 = call i32 @EnumDependentServices(i32* %60, i32 %61, %struct.TYPE_5__* %62, i64 %63, i64* %6, i64* %7)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %71, label %66

66:                                               ; preds = %59
  %67 = call i32 @_T(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  %68 = call i64 (...) @GetLastError()
  %69 = call i32 (i32, ...) @_tprintf(i32 %67, i64 %68)
  %70 = load i64, i64* @FALSE, align 8
  store i64 %70, i64* %5, align 8
  br label %105

71:                                               ; preds = %59
  %72 = call i32 @_T(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  %73 = load i64, i64* %7, align 8
  %74 = call i32 (i32, ...) @_tprintf(i32 %72, i64 %73)
  store i64 0, i64* %9, align 8
  br label %75

75:                                               ; preds = %101, %71
  %76 = load i64, i64* %9, align 8
  %77 = load i64, i64* %7, align 8
  %78 = icmp slt i64 %76, %77
  br i1 %78, label %79, label %104

79:                                               ; preds = %75
  %80 = call i32 @_T(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %81 = call i32 (i32, ...) @_tprintf(i32 %80)
  %82 = call i32 @_T(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0))
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %84 = load i64, i64* %9, align 8
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = call i32 (i32, ...) @_tprintf(i32 %82, i64 %87)
  %89 = call i32 @_T(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0))
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %91 = load i64, i64* %9, align 8
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = call i32 (i32, ...) @_tprintf(i32 %89, i64 %94)
  %96 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %97 = load i64, i64* %9, align 8
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 2
  %100 = call i32 @PrintServiceStatus(i32* %99)
  br label %101

101:                                              ; preds = %79
  %102 = load i64, i64* %9, align 8
  %103 = add nsw i64 %102, 1
  store i64 %103, i64* %9, align 8
  br label %75

104:                                              ; preds = %75
  br label %105

105:                                              ; preds = %104, %66, %52, %40, %27, %15
  %106 = load i64, i64* %5, align 8
  %107 = load i64, i64* @FALSE, align 8
  %108 = icmp eq i64 %106, %107
  br i1 %108, label %109, label %111

109:                                              ; preds = %105
  %110 = call i32 (...) @ReportLastError()
  br label %111

111:                                              ; preds = %109, %105
  %112 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %113 = icmp ne %struct.TYPE_5__* %112, null
  br i1 %113, label %114, label %118

114:                                              ; preds = %111
  %115 = call i32 (...) @GetProcessHeap()
  %116 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %117 = call i32 @HeapFree(i32 %115, i32 0, %struct.TYPE_5__* %116)
  br label %118

118:                                              ; preds = %114, %111
  %119 = load i32*, i32** %4, align 8
  %120 = icmp ne i32* %119, null
  br i1 %120, label %121, label %124

121:                                              ; preds = %118
  %122 = load i32*, i32** %4, align 8
  %123 = call i32 @CloseServiceHandle(i32* %122)
  br label %124

124:                                              ; preds = %121, %118
  %125 = load i32*, i32** %3, align 8
  %126 = icmp ne i32* %125, null
  br i1 %126, label %127, label %130

127:                                              ; preds = %124
  %128 = load i32*, i32** %3, align 8
  %129 = call i32 @CloseServiceHandle(i32* %128)
  br label %130

130:                                              ; preds = %127, %124
  %131 = load i64, i64* %5, align 8
  ret i64 %131
}

declare dso_local i32* @OpenSCManager(i32*, i32*, i32) #1

declare dso_local i32 @_tprintf(i32, ...) #1

declare dso_local i32 @_T(i8*) #1

declare dso_local i64 @GetLastError(...) #1

declare dso_local i32* @OpenService(i32*, i32, i32) #1

declare dso_local i32 @EnumDependentServices(i32*, i32, %struct.TYPE_5__*, i64, i64*, i64*) #1

declare dso_local %struct.TYPE_5__* @HeapAlloc(i32, i32, i64) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @SetLastError(i32) #1

declare dso_local i32 @PrintServiceStatus(i32*) #1

declare dso_local i32 @ReportLastError(...) #1

declare dso_local i32 @HeapFree(i32, i32, %struct.TYPE_5__*) #1

declare dso_local i32 @CloseServiceHandle(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
