; ModuleID = '/home/carl/AnghaBench/reactos/base/system/services/extr_database.c_ScmCheckDriver.c'
source_filename = "/home/carl/AnghaBench/reactos/base/system/services/extr_database.c_ScmCheckDriver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_11__*, %struct.TYPE_10__, i32 }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_10__ = type { i64, i64, i64, i64, i32, i32, i32 }
%struct.TYPE_14__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"ScmCheckDriver(%S) called\0A\00", align 1
@SERVICE_KERNEL_DRIVER = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [8 x i32] [i32 92, i32 68, i32 114, i32 105, i32 118, i32 101, i32 114, i32 0], align 4
@SERVICE_FILE_SYSTEM_DRIVER = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [12 x i32] [i32 92, i32 70, i32 105, i32 108, i32 101, i32 83, i32 121, i32 115, i32 116, i32 101, i32 109, i32 0], align 4
@DIRECTORY_QUERY = common dso_local global i32 0, align 4
@DIRECTORY_TRAVERSE = common dso_local global i32 0, align 4
@MAX_PATH = common dso_local global i32 0, align 4
@HEAP_ZERO_MEMORY = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@STATUS_NO_MORE_ENTRIES = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [21 x i8] c"Service '%S' failed\0A\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"Comparing: '%S'  '%wZ'\0A\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"Found: '%S'  '%wZ'\0A\00", align 1
@SERVICE_RUNNING = common dso_local global i32 0, align 4
@SERVICE_ACCEPT_STOP = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i32 0, align 4
@STATUS_SUCCESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_13__*)* @ScmCheckDriver to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ScmCheckDriver(%struct.TYPE_13__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %3, align 8
  %12 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 8
  %15 = call i32 (i8*, i32, ...) @DPRINT(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @SERVICE_KERNEL_DRIVER, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %1
  %23 = call i32 @RtlInitUnicodeString(i32* %5, i8* bitcast ([8 x i32]* @.str.1 to i8*))
  br label %34

24:                                               ; preds = %1
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @SERVICE_FILE_SYSTEM_DRIVER, align 8
  %30 = icmp eq i64 %28, %29
  %31 = zext i1 %30 to i32
  %32 = call i32 @ASSERT(i32 %31)
  %33 = call i32 @RtlInitUnicodeString(i32* %5, i8* bitcast ([12 x i32]* @.str.2 to i8*))
  br label %34

34:                                               ; preds = %24, %22
  %35 = call i32 @InitializeObjectAttributes(i32* %4, i32* %5, i32 0, i32* null, i32* null)
  %36 = load i32, i32* @DIRECTORY_QUERY, align 4
  %37 = load i32, i32* @DIRECTORY_TRAVERSE, align 4
  %38 = or i32 %36, %37
  %39 = call i64 @NtOpenDirectoryObject(i32* %6, i32 %38, i32* %4)
  store i64 %39, i64* %7, align 8
  %40 = load i64, i64* %7, align 8
  %41 = call i32 @NT_SUCCESS(i64 %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %45, label %43

43:                                               ; preds = %34
  %44 = load i64, i64* %7, align 8
  store i64 %44, i64* %2, align 8
  br label %142

45:                                               ; preds = %34
  %46 = load i32, i32* @MAX_PATH, align 4
  %47 = mul nsw i32 2, %46
  %48 = sext i32 %47 to i64
  %49 = mul i64 %48, 4
  %50 = add i64 4, %49
  %51 = trunc i64 %50 to i32
  store i32 %51, i32* %9, align 4
  %52 = call i32 (...) @GetProcessHeap()
  %53 = load i32, i32* @HEAP_ZERO_MEMORY, align 4
  %54 = load i32, i32* %9, align 4
  %55 = call %struct.TYPE_14__* @HeapAlloc(i32 %52, i32 %53, i32 %54)
  store %struct.TYPE_14__* %55, %struct.TYPE_14__** %8, align 8
  store i32 0, i32* %11, align 4
  br label %56

56:                                               ; preds = %134, %45
  %57 = load i64, i64* @TRUE, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %135

59:                                               ; preds = %56
  %60 = load i32, i32* %6, align 4
  %61 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %62 = load i32, i32* %9, align 4
  %63 = load i64, i64* @TRUE, align 8
  %64 = load i32, i32* @FALSE, align 4
  %65 = call i64 @NtQueryDirectoryObject(i32 %60, %struct.TYPE_14__* %61, i32 %62, i64 %63, i32 %64, i32* %11, i32* %10)
  store i64 %65, i64* %7, align 8
  %66 = load i64, i64* %7, align 8
  %67 = load i64, i64* @STATUS_NO_MORE_ENTRIES, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %74

69:                                               ; preds = %59
  %70 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = call i32 (i8*, i32, ...) @DPRINT(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 %72)
  br label %135

74:                                               ; preds = %59
  %75 = load i64, i64* %7, align 8
  %76 = call i32 @NT_SUCCESS(i64 %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %79, label %78

78:                                               ; preds = %74
  br label %135

79:                                               ; preds = %74
  %80 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %84 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %83, i32 0, i32 0
  %85 = call i32 (i8*, i32, ...) @DPRINT(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 %82, %struct.TYPE_12__* %84)
  %86 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %90 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = call i64 @_wcsicmp(i32 %88, i32 %92)
  %94 = icmp eq i64 %93, 0
  br i1 %94, label %95, label %134

95:                                               ; preds = %79
  %96 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %97 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %100 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %99, i32 0, i32 0
  %101 = call i32 (i8*, i32, ...) @DPRINT(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i32 %98, %struct.TYPE_12__* %100)
  %102 = load i32, i32* @SERVICE_RUNNING, align 4
  %103 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %104 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %104, i32 0, i32 6
  store i32 %102, i32* %105, align 8
  %106 = load i32, i32* @SERVICE_ACCEPT_STOP, align 4
  %107 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %108 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %108, i32 0, i32 5
  store i32 %106, i32* %109, align 4
  %110 = load i32, i32* @ERROR_SUCCESS, align 4
  %111 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %112 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %112, i32 0, i32 4
  store i32 %110, i32* %113, align 8
  %114 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %115 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %115, i32 0, i32 3
  store i64 0, i64* %116, align 8
  %117 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %118 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %118, i32 0, i32 2
  store i64 0, i64* %119, align 8
  %120 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %121 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %121, i32 0, i32 1
  store i64 0, i64* %122, align 8
  %123 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %124 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %123, i32 0, i32 0
  %125 = load %struct.TYPE_11__*, %struct.TYPE_11__** %124, align 8
  %126 = icmp ne %struct.TYPE_11__* %125, null
  br i1 %126, label %127, label %133

127:                                              ; preds = %95
  %128 = load i64, i64* @TRUE, align 8
  %129 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %130 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %129, i32 0, i32 0
  %131 = load %struct.TYPE_11__*, %struct.TYPE_11__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %131, i32 0, i32 0
  store i64 %128, i64* %132, align 8
  br label %133

133:                                              ; preds = %127, %95
  br label %135

134:                                              ; preds = %79
  br label %56

135:                                              ; preds = %133, %78, %69, %56
  %136 = call i32 (...) @GetProcessHeap()
  %137 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %138 = call i32 @HeapFree(i32 %136, i32 0, %struct.TYPE_14__* %137)
  %139 = load i32, i32* %6, align 4
  %140 = call i32 @NtClose(i32 %139)
  %141 = load i64, i64* @STATUS_SUCCESS, align 8
  store i64 %141, i64* %2, align 8
  br label %142

142:                                              ; preds = %135, %43
  %143 = load i64, i64* %2, align 8
  ret i64 %143
}

declare dso_local i32 @DPRINT(i8*, i32, ...) #1

declare dso_local i32 @RtlInitUnicodeString(i32*, i8*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @InitializeObjectAttributes(i32*, i32*, i32, i32*, i32*) #1

declare dso_local i64 @NtOpenDirectoryObject(i32*, i32, i32*) #1

declare dso_local i32 @NT_SUCCESS(i64) #1

declare dso_local %struct.TYPE_14__* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i64 @NtQueryDirectoryObject(i32, %struct.TYPE_14__*, i32, i64, i32, i32*, i32*) #1

declare dso_local i64 @_wcsicmp(i32, i32) #1

declare dso_local i32 @HeapFree(i32, i32, %struct.TYPE_14__*) #1

declare dso_local i32 @NtClose(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
