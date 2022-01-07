; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/sc/extr_description.c_QueryDescription.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/sc/extr_description.c_QueryDescription.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }

@TRUE = common dso_local global i64 0, align 8
@SC_MANAGER_CONNECT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"[SC] OpenSCManager FAILED %lu:\0A\0A\00", align 1
@FALSE = common dso_local global i64 0, align 8
@SERVICE_QUERY_CONFIG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"[SC] OpenService FAILED %lu:\0A\0A\00", align 1
@SERVICE_CONFIG_DESCRIPTION = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"[SC] QueryServiceConfig2 FAILED %lu:\0A\0A\00", align 1
@ERROR_OUTOFMEMORY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"[SC] HeapAlloc FAILED %lu:\0A\0A\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"[SC] QueryServiceConfig2 SUCCESS\0A\0A\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"SERVICE_NAME: %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"        DESCRIPTION        : %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @QueryDescription(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_4__*, align 8
  store i64 %0, i64* %2, align 8
  store i32* null, i32** %3, align 8
  store i32* null, i32** %4, align 8
  %8 = load i64, i64* @TRUE, align 8
  store i64 %8, i64* %5, align 8
  store i64 0, i64* %6, align 8
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %7, align 8
  %9 = load i32, i32* @SC_MANAGER_CONNECT, align 4
  %10 = call i32* @OpenSCManager(i32* null, i32* null, i32 %9)
  store i32* %10, i32** %3, align 8
  %11 = load i32*, i32** %3, align 8
  %12 = icmp eq i32* %11, null
  br i1 %12, label %13, label %18

13:                                               ; preds = %1
  %14 = call i64 @_T(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %15 = call i64 (...) @GetLastError()
  %16 = call i32 (i64, ...) @_tprintf(i64 %14, i64 %15)
  %17 = load i64, i64* @FALSE, align 8
  store i64 %17, i64* %5, align 8
  br label %90

18:                                               ; preds = %1
  %19 = load i32*, i32** %3, align 8
  %20 = load i64, i64* %2, align 8
  %21 = load i32, i32* @SERVICE_QUERY_CONFIG, align 4
  %22 = call i32* @OpenService(i32* %19, i64 %20, i32 %21)
  store i32* %22, i32** %4, align 8
  %23 = load i32*, i32** %4, align 8
  %24 = icmp eq i32* %23, null
  br i1 %24, label %25, label %30

25:                                               ; preds = %18
  %26 = call i64 @_T(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %27 = call i64 (...) @GetLastError()
  %28 = call i32 (i64, ...) @_tprintf(i64 %26, i64 %27)
  %29 = load i64, i64* @FALSE, align 8
  store i64 %29, i64* %5, align 8
  br label %90

30:                                               ; preds = %18
  %31 = load i32*, i32** %4, align 8
  %32 = load i32, i32* @SERVICE_CONFIG_DESCRIPTION, align 4
  %33 = call i32 @QueryServiceConfig2(i32* %31, i32 %32, i32* null, i64 0, i64* %6)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %44, label %35

35:                                               ; preds = %30
  %36 = load i64, i64* %6, align 8
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %35
  %39 = call i64 @_T(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  %40 = call i64 (...) @GetLastError()
  %41 = call i32 (i64, ...) @_tprintf(i64 %39, i64 %40)
  %42 = load i64, i64* @FALSE, align 8
  store i64 %42, i64* %5, align 8
  br label %90

43:                                               ; preds = %35
  br label %44

44:                                               ; preds = %43, %30
  %45 = call i32 (...) @GetProcessHeap()
  %46 = load i64, i64* %6, align 8
  %47 = call %struct.TYPE_4__* @HeapAlloc(i32 %45, i32 0, i64 %46)
  store %struct.TYPE_4__* %47, %struct.TYPE_4__** %7, align 8
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %49 = icmp eq %struct.TYPE_4__* %48, null
  br i1 %49, label %50, label %57

50:                                               ; preds = %44
  %51 = load i32, i32* @ERROR_OUTOFMEMORY, align 4
  %52 = call i32 @SetLastError(i32 %51)
  %53 = call i64 @_T(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  %54 = call i64 (...) @GetLastError()
  %55 = call i32 (i64, ...) @_tprintf(i64 %53, i64 %54)
  %56 = load i64, i64* @FALSE, align 8
  store i64 %56, i64* %5, align 8
  br label %90

57:                                               ; preds = %44
  %58 = load i32*, i32** %4, align 8
  %59 = load i32, i32* @SERVICE_CONFIG_DESCRIPTION, align 4
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %61 = bitcast %struct.TYPE_4__* %60 to i32*
  %62 = load i64, i64* %6, align 8
  %63 = call i32 @QueryServiceConfig2(i32* %58, i32 %59, i32* %61, i64 %62, i64* %6)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %70, label %65

65:                                               ; preds = %57
  %66 = call i64 @_T(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  %67 = call i64 (...) @GetLastError()
  %68 = call i32 (i64, ...) @_tprintf(i64 %66, i64 %67)
  %69 = load i64, i64* @FALSE, align 8
  store i64 %69, i64* %5, align 8
  br label %90

70:                                               ; preds = %57
  %71 = call i64 @_T(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0))
  %72 = call i32 (i64, ...) @_tprintf(i64 %71)
  %73 = call i64 @_T(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0))
  %74 = load i64, i64* %2, align 8
  %75 = call i32 (i64, ...) @_tprintf(i64 %73, i64 %74)
  %76 = call i64 @_T(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0))
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %70
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  br label %87

85:                                               ; preds = %70
  %86 = call i64 @_T(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0))
  br label %87

87:                                               ; preds = %85, %81
  %88 = phi i64 [ %84, %81 ], [ %86, %85 ]
  %89 = call i32 (i64, ...) @_tprintf(i64 %76, i64 %88)
  br label %90

90:                                               ; preds = %87, %65, %50, %38, %25, %13
  %91 = load i64, i64* %5, align 8
  %92 = load i64, i64* @FALSE, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %94, label %96

94:                                               ; preds = %90
  %95 = call i32 (...) @ReportLastError()
  br label %96

96:                                               ; preds = %94, %90
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %98 = icmp ne %struct.TYPE_4__* %97, null
  br i1 %98, label %99, label %103

99:                                               ; preds = %96
  %100 = call i32 (...) @GetProcessHeap()
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %102 = call i32 @HeapFree(i32 %100, i32 0, %struct.TYPE_4__* %101)
  br label %103

103:                                              ; preds = %99, %96
  %104 = load i32*, i32** %4, align 8
  %105 = icmp ne i32* %104, null
  br i1 %105, label %106, label %109

106:                                              ; preds = %103
  %107 = load i32*, i32** %4, align 8
  %108 = call i32 @CloseServiceHandle(i32* %107)
  br label %109

109:                                              ; preds = %106, %103
  %110 = load i32*, i32** %3, align 8
  %111 = icmp ne i32* %110, null
  br i1 %111, label %112, label %115

112:                                              ; preds = %109
  %113 = load i32*, i32** %3, align 8
  %114 = call i32 @CloseServiceHandle(i32* %113)
  br label %115

115:                                              ; preds = %112, %109
  %116 = load i64, i64* %5, align 8
  ret i64 %116
}

declare dso_local i32* @OpenSCManager(i32*, i32*, i32) #1

declare dso_local i32 @_tprintf(i64, ...) #1

declare dso_local i64 @_T(i8*) #1

declare dso_local i64 @GetLastError(...) #1

declare dso_local i32* @OpenService(i32*, i64, i32) #1

declare dso_local i32 @QueryServiceConfig2(i32*, i32, i32*, i64, i64*) #1

declare dso_local %struct.TYPE_4__* @HeapAlloc(i32, i32, i64) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @SetLastError(i32) #1

declare dso_local i32 @ReportLastError(...) #1

declare dso_local i32 @HeapFree(i32, i32, %struct.TYPE_4__*) #1

declare dso_local i32 @CloseServiceHandle(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
