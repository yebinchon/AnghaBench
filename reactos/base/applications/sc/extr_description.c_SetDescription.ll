; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/sc/extr_description.c_SetDescription.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/sc/extr_description.c_SetDescription.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@TRUE = common dso_local global i64 0, align 8
@SC_MANAGER_CONNECT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"[SC] OpenSCManager FAILED %lu:\0A\0A\00", align 1
@FALSE = common dso_local global i64 0, align 8
@SERVICE_CHANGE_CONFIG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"[SC] OpenService FAILED %lu:\0A\0A\00", align 1
@SERVICE_CONFIG_DESCRIPTION = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"[SC] ChangeServiceConfig2 FAILED %lu:\0A\0A\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"[SC] ChangeServiceConfig2 SUCCESS\0A\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @SetDescription(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_2__, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  store i32* null, i32** %5, align 8
  store i32* null, i32** %6, align 8
  %9 = load i64, i64* @TRUE, align 8
  store i64 %9, i64* %7, align 8
  %10 = load i32, i32* @SC_MANAGER_CONNECT, align 4
  %11 = call i32* @OpenSCManager(i32* null, i32* null, i32 %10)
  store i32* %11, i32** %5, align 8
  %12 = load i32*, i32** %5, align 8
  %13 = icmp eq i32* %12, null
  br i1 %13, label %14, label %19

14:                                               ; preds = %2
  %15 = call i32 @_T(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %16 = call i32 (...) @GetLastError()
  %17 = call i32 (i32, ...) @_tprintf(i32 %15, i32 %16)
  %18 = load i64, i64* @FALSE, align 8
  store i64 %18, i64* %7, align 8
  br label %47

19:                                               ; preds = %2
  %20 = load i32*, i32** %5, align 8
  %21 = load i64, i64* %3, align 8
  %22 = load i32, i32* @SERVICE_CHANGE_CONFIG, align 4
  %23 = call i32* @OpenService(i32* %20, i64 %21, i32 %22)
  store i32* %23, i32** %6, align 8
  %24 = load i32*, i32** %6, align 8
  %25 = icmp eq i32* %24, null
  br i1 %25, label %26, label %31

26:                                               ; preds = %19
  %27 = call i32 @_T(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %28 = call i32 (...) @GetLastError()
  %29 = call i32 (i32, ...) @_tprintf(i32 %27, i32 %28)
  %30 = load i64, i64* @FALSE, align 8
  store i64 %30, i64* %7, align 8
  br label %47

31:                                               ; preds = %19
  %32 = load i64, i64* %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  store i64 %32, i64* %33, align 8
  %34 = load i32*, i32** %6, align 8
  %35 = load i32, i32* @SERVICE_CONFIG_DESCRIPTION, align 4
  %36 = ptrtoint %struct.TYPE_2__* %8 to i32
  %37 = call i32 @ChangeServiceConfig2(i32* %34, i32 %35, i32 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %44, label %39

39:                                               ; preds = %31
  %40 = call i32 @_T(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  %41 = call i32 (...) @GetLastError()
  %42 = call i32 (i32, ...) @_tprintf(i32 %40, i32 %41)
  %43 = load i64, i64* @FALSE, align 8
  store i64 %43, i64* %7, align 8
  br label %47

44:                                               ; preds = %31
  %45 = call i32 @_T(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  %46 = call i32 (i32, ...) @_tprintf(i32 %45)
  br label %47

47:                                               ; preds = %44, %39, %26, %14
  %48 = load i64, i64* %7, align 8
  %49 = load i64, i64* @FALSE, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %47
  %52 = call i32 (...) @ReportLastError()
  br label %53

53:                                               ; preds = %51, %47
  %54 = load i32*, i32** %6, align 8
  %55 = icmp ne i32* %54, null
  br i1 %55, label %56, label %59

56:                                               ; preds = %53
  %57 = load i32*, i32** %6, align 8
  %58 = call i32 @CloseServiceHandle(i32* %57)
  br label %59

59:                                               ; preds = %56, %53
  %60 = load i32*, i32** %5, align 8
  %61 = icmp ne i32* %60, null
  br i1 %61, label %62, label %65

62:                                               ; preds = %59
  %63 = load i32*, i32** %5, align 8
  %64 = call i32 @CloseServiceHandle(i32* %63)
  br label %65

65:                                               ; preds = %62, %59
  %66 = load i64, i64* %7, align 8
  ret i64 %66
}

declare dso_local i32* @OpenSCManager(i32*, i32*, i32) #1

declare dso_local i32 @_tprintf(i32, ...) #1

declare dso_local i32 @_T(i8*) #1

declare dso_local i32 @GetLastError(...) #1

declare dso_local i32* @OpenService(i32*, i64, i32) #1

declare dso_local i32 @ChangeServiceConfig2(i32*, i32, i32) #1

declare dso_local i32 @ReportLastError(...) #1

declare dso_local i32 @CloseServiceHandle(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
