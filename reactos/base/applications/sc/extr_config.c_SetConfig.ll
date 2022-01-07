; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/sc/extr_config.c_SetConfig.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/sc/extr_config.c_SetConfig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32 }

@TRUE = common dso_local global i64 0, align 8
@FALSE = common dso_local global i64 0, align 8
@SC_MANAGER_CONNECT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"[SC] OpenSCManager FAILED %lu:\0A\0A\00", align 1
@SERVICE_CHANGE_CONFIG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"[SC] OpenService FAILED %lu:\0A\0A\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"[SC] ChangeServiceConfig FAILED %lu:\0A\0A\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"[SC] ChangeServiceConfig SUCCESS\0A\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @SetConfig(i32* %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_3__, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* null, i32** %6, align 8
  store i32* null, i32** %7, align 8
  %10 = load i64, i64* @TRUE, align 8
  store i64 %10, i64* %8, align 8
  %11 = load i32*, i32** %4, align 8
  %12 = load i32, i32* %5, align 4
  %13 = load i64, i64* @TRUE, align 8
  %14 = call i32 @ParseCreateConfigArguments(i32* %11, i32 %12, i64 %13, %struct.TYPE_3__* %9)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = call i32 (...) @SetConfigUsage()
  %18 = load i64, i64* @FALSE, align 8
  store i64 %18, i64* %3, align 8
  br label %100

19:                                               ; preds = %2
  %20 = load i32, i32* @SC_MANAGER_CONNECT, align 4
  %21 = call i32* @OpenSCManager(i32* null, i32* null, i32 %20)
  store i32* %21, i32** %6, align 8
  %22 = load i32*, i32** %6, align 8
  %23 = icmp eq i32* %22, null
  br i1 %23, label %24, label %29

24:                                               ; preds = %19
  %25 = call i32 @_T(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %26 = call i32 (...) @GetLastError()
  %27 = call i32 (i32, ...) @_tprintf(i32 %25, i32 %26)
  %28 = load i64, i64* @FALSE, align 8
  store i64 %28, i64* %8, align 8
  br label %80

29:                                               ; preds = %19
  %30 = load i32*, i32** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 11
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @SERVICE_CHANGE_CONFIG, align 4
  %34 = call i32* @OpenService(i32* %30, i32 %32, i32 %33)
  store i32* %34, i32** %7, align 8
  %35 = load i32*, i32** %7, align 8
  %36 = icmp eq i32* %35, null
  br i1 %36, label %37, label %42

37:                                               ; preds = %29
  %38 = call i32 @_T(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %39 = call i32 (...) @GetLastError()
  %40 = call i32 (i32, ...) @_tprintf(i32 %38, i32 %39)
  %41 = load i64, i64* @FALSE, align 8
  store i64 %41, i64* %8, align 8
  br label %80

42:                                               ; preds = %29
  %43 = load i32*, i32** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 10
  %45 = load i32, i32* %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 9
  %47 = load i32, i32* %46, align 4
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 8
  %49 = load i32, i32* %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 7
  %51 = load i32, i32* %50, align 4
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 6
  %53 = load i32, i32* %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 5
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %42
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 4
  br label %60

59:                                               ; preds = %42
  br label %60

60:                                               ; preds = %59, %57
  %61 = phi i32* [ %58, %57 ], [ null, %59 ]
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 3
  %63 = load i32, i32* %62, align 4
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @ChangeServiceConfig(i32* %43, i32 %45, i32 %47, i32 %49, i32 %51, i32 %53, i32* %61, i32 %63, i32 %65, i32 %67, i32 %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %77, label %72

72:                                               ; preds = %60
  %73 = call i32 @_T(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  %74 = call i32 (...) @GetLastError()
  %75 = call i32 (i32, ...) @_tprintf(i32 %73, i32 %74)
  %76 = load i64, i64* @FALSE, align 8
  store i64 %76, i64* %8, align 8
  br label %80

77:                                               ; preds = %60
  %78 = call i32 @_T(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  %79 = call i32 (i32, ...) @_tprintf(i32 %78)
  br label %80

80:                                               ; preds = %77, %72, %37, %24
  %81 = load i64, i64* %8, align 8
  %82 = load i64, i64* @FALSE, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %86

84:                                               ; preds = %80
  %85 = call i32 (...) @ReportLastError()
  br label %86

86:                                               ; preds = %84, %80
  %87 = load i32*, i32** %7, align 8
  %88 = icmp ne i32* %87, null
  br i1 %88, label %89, label %92

89:                                               ; preds = %86
  %90 = load i32*, i32** %7, align 8
  %91 = call i32 @CloseServiceHandle(i32* %90)
  br label %92

92:                                               ; preds = %89, %86
  %93 = load i32*, i32** %6, align 8
  %94 = icmp ne i32* %93, null
  br i1 %94, label %95, label %98

95:                                               ; preds = %92
  %96 = load i32*, i32** %6, align 8
  %97 = call i32 @CloseServiceHandle(i32* %96)
  br label %98

98:                                               ; preds = %95, %92
  %99 = load i64, i64* %8, align 8
  store i64 %99, i64* %3, align 8
  br label %100

100:                                              ; preds = %98, %16
  %101 = load i64, i64* %3, align 8
  ret i64 %101
}

declare dso_local i32 @ParseCreateConfigArguments(i32*, i32, i64, %struct.TYPE_3__*) #1

declare dso_local i32 @SetConfigUsage(...) #1

declare dso_local i32* @OpenSCManager(i32*, i32*, i32) #1

declare dso_local i32 @_tprintf(i32, ...) #1

declare dso_local i32 @_T(i8*) #1

declare dso_local i32 @GetLastError(...) #1

declare dso_local i32* @OpenService(i32*, i32, i32) #1

declare dso_local i32 @ChangeServiceConfig(i32*, i32, i32, i32, i32, i32, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @ReportLastError(...) #1

declare dso_local i32 @CloseServiceHandle(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
