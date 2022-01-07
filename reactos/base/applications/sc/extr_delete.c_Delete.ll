; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/sc/extr_delete.c_Delete.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/sc/extr_delete.c_Delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TRUE = common dso_local global i64 0, align 8
@SC_MANAGER_CONNECT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"[SC] OpenSCManager FAILED %lu:\0A\0A\00", align 1
@FALSE = common dso_local global i64 0, align 8
@DELETE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"[SC] OpenService FAILED %lu:\0A\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"[SC] DeleteService FAILED %lu:\0A\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"[SC] DeleteService SUCCESS\0A\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @Delete(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  store i32* null, i32** %3, align 8
  store i32* null, i32** %4, align 8
  %6 = load i64, i64* @TRUE, align 8
  store i64 %6, i64* %5, align 8
  %7 = load i32, i32* @SC_MANAGER_CONNECT, align 4
  %8 = call i32* @OpenSCManager(i32* null, i32* null, i32 %7)
  store i32* %8, i32** %3, align 8
  %9 = load i32*, i32** %3, align 8
  %10 = icmp eq i32* %9, null
  br i1 %10, label %11, label %16

11:                                               ; preds = %1
  %12 = call i32 @_T(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %13 = call i32 (...) @GetLastError()
  %14 = call i32 (i32, ...) @_tprintf(i32 %12, i32 %13)
  %15 = load i64, i64* @FALSE, align 8
  store i64 %15, i64* %5, align 8
  br label %40

16:                                               ; preds = %1
  %17 = load i32*, i32** %3, align 8
  %18 = load i32, i32* %2, align 4
  %19 = load i32, i32* @DELETE, align 4
  %20 = call i32* @OpenService(i32* %17, i32 %18, i32 %19)
  store i32* %20, i32** %4, align 8
  %21 = load i32*, i32** %4, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %23, label %28

23:                                               ; preds = %16
  %24 = call i32 @_T(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %25 = call i32 (...) @GetLastError()
  %26 = call i32 (i32, ...) @_tprintf(i32 %24, i32 %25)
  %27 = load i64, i64* @FALSE, align 8
  store i64 %27, i64* %5, align 8
  br label %40

28:                                               ; preds = %16
  %29 = load i32*, i32** %4, align 8
  %30 = call i32 @DeleteService(i32* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %37, label %32

32:                                               ; preds = %28
  %33 = call i32 @_T(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  %34 = call i32 (...) @GetLastError()
  %35 = call i32 (i32, ...) @_tprintf(i32 %33, i32 %34)
  %36 = load i64, i64* @FALSE, align 8
  store i64 %36, i64* %5, align 8
  br label %40

37:                                               ; preds = %28
  %38 = call i32 @_T(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  %39 = call i32 (i32, ...) @_tprintf(i32 %38)
  br label %40

40:                                               ; preds = %37, %32, %23, %11
  %41 = load i64, i64* %5, align 8
  %42 = load i64, i64* @FALSE, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %40
  %45 = call i32 (...) @ReportLastError()
  br label %46

46:                                               ; preds = %44, %40
  %47 = load i32*, i32** %4, align 8
  %48 = icmp ne i32* %47, null
  br i1 %48, label %49, label %52

49:                                               ; preds = %46
  %50 = load i32*, i32** %4, align 8
  %51 = call i32 @CloseServiceHandle(i32* %50)
  br label %52

52:                                               ; preds = %49, %46
  %53 = load i32*, i32** %3, align 8
  %54 = icmp ne i32* %53, null
  br i1 %54, label %55, label %58

55:                                               ; preds = %52
  %56 = load i32*, i32** %3, align 8
  %57 = call i32 @CloseServiceHandle(i32* %56)
  br label %58

58:                                               ; preds = %55, %52
  %59 = load i64, i64* %5, align 8
  ret i64 %59
}

declare dso_local i32* @OpenSCManager(i32*, i32*, i32) #1

declare dso_local i32 @_tprintf(i32, ...) #1

declare dso_local i32 @_T(i8*) #1

declare dso_local i32 @GetLastError(...) #1

declare dso_local i32* @OpenService(i32*, i32, i32) #1

declare dso_local i32 @DeleteService(i32*) #1

declare dso_local i32 @ReportLastError(...) #1

declare dso_local i32 @CloseServiceHandle(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
