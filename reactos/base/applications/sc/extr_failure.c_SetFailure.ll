; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/sc/extr_failure.c_SetFailure.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/sc/extr_failure.c_SetFailure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32* }

@TRUE = common dso_local global i64 0, align 8
@FALSE = common dso_local global i64 0, align 8
@SC_MANAGER_CONNECT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"[SC] OpenSCManager FAILED %lu:\0A\0A\00", align 1
@SERVICE_CHANGE_CONFIG = common dso_local global i32 0, align 4
@SERVICE_START = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"[SC] OpenService FAILED %lu:\0A\0A\00", align 1
@SE_SHUTDOWN_PRIVILEGE = common dso_local global i32 0, align 4
@SERVICE_CONFIG_FAILURE_ACTIONS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"[SC] ChangeServiceConfig2 FAILED %lu:\0A\0A\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"[SC] ChangeServiceConfig2 SUCCESS\0A\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @SetFailure(i32** %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_4__, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  store i32** %0, i32*** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* null, i32** %6, align 8
  store i32* null, i32** %7, align 8
  %12 = load i64, i64* @TRUE, align 8
  store i64 %12, i64* %8, align 8
  store i32* null, i32** %10, align 8
  %13 = load i64, i64* @FALSE, align 8
  store i64 %13, i64* %11, align 8
  %14 = call i32 @ZeroMemory(%struct.TYPE_4__* %9, i32 8)
  %15 = load i32**, i32*** %4, align 8
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @ParseFailureArguments(i32** %15, i32 %16, i32** %10, %struct.TYPE_4__* %9)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %2
  %20 = call i32 (...) @SetFailureUsage()
  %21 = load i64, i64* @FALSE, align 8
  store i64 %21, i64* %3, align 8
  br label %97

22:                                               ; preds = %2
  %23 = load i32, i32* @SC_MANAGER_CONNECT, align 4
  %24 = call i32* @OpenSCManager(i32* null, i32* null, i32 %23)
  store i32* %24, i32** %6, align 8
  %25 = load i32*, i32** %6, align 8
  %26 = icmp eq i32* %25, null
  br i1 %26, label %27, label %32

27:                                               ; preds = %22
  %28 = call i32 @_T(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %29 = call i32 (...) @GetLastError()
  %30 = call i32 (i32, ...) @_tprintf(i32 %28, i32 %29)
  %31 = load i64, i64* @FALSE, align 8
  store i64 %31, i64* %8, align 8
  br label %64

32:                                               ; preds = %22
  %33 = load i32*, i32** %6, align 8
  %34 = load i32*, i32** %10, align 8
  %35 = load i32, i32* @SERVICE_CHANGE_CONFIG, align 4
  %36 = load i32, i32* @SERVICE_START, align 4
  %37 = or i32 %35, %36
  %38 = call i32* @OpenService(i32* %33, i32* %34, i32 %37)
  store i32* %38, i32** %7, align 8
  %39 = load i32*, i32** %7, align 8
  %40 = icmp eq i32* %39, null
  br i1 %40, label %41, label %46

41:                                               ; preds = %32
  %42 = call i32 @_T(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %43 = call i32 (...) @GetLastError()
  %44 = call i32 (i32, ...) @_tprintf(i32 %42, i32 %43)
  %45 = load i64, i64* @FALSE, align 8
  store i64 %45, i64* %8, align 8
  br label %64

46:                                               ; preds = %32
  %47 = load i32, i32* @SE_SHUTDOWN_PRIVILEGE, align 4
  %48 = load i64, i64* @TRUE, align 8
  %49 = load i64, i64* @FALSE, align 8
  %50 = call i32 @RtlAdjustPrivilege(i32 %47, i64 %48, i64 %49, i64* %11)
  %51 = load i32*, i32** %7, align 8
  %52 = load i32, i32* @SERVICE_CONFIG_FAILURE_ACTIONS, align 4
  %53 = ptrtoint %struct.TYPE_4__* %9 to i32
  %54 = call i32 @ChangeServiceConfig2(i32* %51, i32 %52, i32 %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %61, label %56

56:                                               ; preds = %46
  %57 = call i32 @_T(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  %58 = call i32 (...) @GetLastError()
  %59 = call i32 (i32, ...) @_tprintf(i32 %57, i32 %58)
  %60 = load i64, i64* @FALSE, align 8
  store i64 %60, i64* %8, align 8
  br label %64

61:                                               ; preds = %46
  %62 = call i32 @_T(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  %63 = call i32 (i32, ...) @_tprintf(i32 %62)
  br label %64

64:                                               ; preds = %61, %56, %41, %27
  %65 = load i32, i32* @SE_SHUTDOWN_PRIVILEGE, align 4
  %66 = load i64, i64* %11, align 8
  %67 = load i64, i64* @FALSE, align 8
  %68 = call i32 @RtlAdjustPrivilege(i32 %65, i64 %66, i64 %67, i64* %11)
  %69 = load i64, i64* %8, align 8
  %70 = load i64, i64* @FALSE, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %74

72:                                               ; preds = %64
  %73 = call i32 (...) @ReportLastError()
  br label %74

74:                                               ; preds = %72, %64
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %76 = load i32*, i32** %75, align 8
  %77 = icmp ne i32* %76, null
  br i1 %77, label %78, label %83

78:                                               ; preds = %74
  %79 = call i32 (...) @GetProcessHeap()
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %81 = load i32*, i32** %80, align 8
  %82 = call i32 @HeapFree(i32 %79, i32 0, i32* %81)
  br label %83

83:                                               ; preds = %78, %74
  %84 = load i32*, i32** %7, align 8
  %85 = icmp ne i32* %84, null
  br i1 %85, label %86, label %89

86:                                               ; preds = %83
  %87 = load i32*, i32** %7, align 8
  %88 = call i32 @CloseServiceHandle(i32* %87)
  br label %89

89:                                               ; preds = %86, %83
  %90 = load i32*, i32** %6, align 8
  %91 = icmp ne i32* %90, null
  br i1 %91, label %92, label %95

92:                                               ; preds = %89
  %93 = load i32*, i32** %6, align 8
  %94 = call i32 @CloseServiceHandle(i32* %93)
  br label %95

95:                                               ; preds = %92, %89
  %96 = load i64, i64* %8, align 8
  store i64 %96, i64* %3, align 8
  br label %97

97:                                               ; preds = %95, %19
  %98 = load i64, i64* %3, align 8
  ret i64 %98
}

declare dso_local i32 @ZeroMemory(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @ParseFailureArguments(i32**, i32, i32**, %struct.TYPE_4__*) #1

declare dso_local i32 @SetFailureUsage(...) #1

declare dso_local i32* @OpenSCManager(i32*, i32*, i32) #1

declare dso_local i32 @_tprintf(i32, ...) #1

declare dso_local i32 @_T(i8*) #1

declare dso_local i32 @GetLastError(...) #1

declare dso_local i32* @OpenService(i32*, i32*, i32) #1

declare dso_local i32 @RtlAdjustPrivilege(i32, i64, i64, i64*) #1

declare dso_local i32 @ChangeServiceConfig2(i32*, i32, i32) #1

declare dso_local i32 @ReportLastError(...) #1

declare dso_local i32 @HeapFree(i32, i32, i32*) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @CloseServiceHandle(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
