; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/shutdown/extr_shutdown.c_EnablePrivilege.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/shutdown/extr_shutdown.c_EnablePrivilege.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32 }

@ERROR_SUCCESS = common dso_local global i64 0, align 8
@TOKEN_ADJUST_PRIVILEGES = common dso_local global i32 0, align 4
@SE_PRIVILEGE_ENABLED = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@ERROR_NOT_ALL_ASSIGNED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i64)* @EnablePrivilege to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @EnablePrivilege(i32 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_5__, align 8
  store i32 %0, i32* %3, align 4
  store i64 %1, i64* %4, align 8
  %8 = load i64, i64* @ERROR_SUCCESS, align 8
  store i64 %8, i64* %5, align 8
  store i32* null, i32** %6, align 8
  %9 = call i32 (...) @GetCurrentProcess()
  %10 = load i32, i32* @TOKEN_ADJUST_PRIVILEGES, align 4
  %11 = call i64 @OpenProcessToken(i32 %9, i32 %10, i32** %6)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %53

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  store i32 1, i32* %14, align 8
  %15 = load i64, i64* %4, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %13
  %18 = load i32, i32* @SE_PRIVILEGE_ENABLED, align 4
  br label %20

19:                                               ; preds = %13
  br label %20

20:                                               ; preds = %19, %17
  %21 = phi i32 [ %18, %17 ], [ 0, %19 ]
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 1
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i64 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  store i32 %21, i32* %25, align 4
  %26 = load i32, i32* %3, align 4
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 1
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i64 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = call i64 @LookupPrivilegeValueW(i32* null, i32 %26, i32* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %48

33:                                               ; preds = %20
  %34 = load i32*, i32** %6, align 8
  %35 = load i32, i32* @FALSE, align 4
  %36 = call i64 @AdjustTokenPrivileges(i32* %34, i32 %35, %struct.TYPE_5__* %7, i32 0, i32* null, i32* null)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %33
  %39 = call i64 (...) @GetLastError()
  %40 = load i64, i64* @ERROR_NOT_ALL_ASSIGNED, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %38
  %43 = load i64, i64* @ERROR_NOT_ALL_ASSIGNED, align 8
  store i64 %43, i64* %5, align 8
  br label %44

44:                                               ; preds = %42, %38
  br label %47

45:                                               ; preds = %33
  %46 = call i64 (...) @GetLastError()
  store i64 %46, i64* %5, align 8
  br label %47

47:                                               ; preds = %45, %44
  br label %50

48:                                               ; preds = %20
  %49 = call i64 (...) @GetLastError()
  store i64 %49, i64* %5, align 8
  br label %50

50:                                               ; preds = %48, %47
  %51 = load i32*, i32** %6, align 8
  %52 = call i32 @CloseHandle(i32* %51)
  br label %55

53:                                               ; preds = %2
  %54 = call i64 (...) @GetLastError()
  store i64 %54, i64* %5, align 8
  br label %55

55:                                               ; preds = %53, %50
  %56 = load i64, i64* %5, align 8
  %57 = load i64, i64* @ERROR_SUCCESS, align 8
  %58 = icmp ne i64 %56, %57
  br i1 %58, label %59, label %62

59:                                               ; preds = %55
  %60 = load i64, i64* %5, align 8
  %61 = call i32 @DisplayError(i64 %60)
  br label %62

62:                                               ; preds = %59, %55
  %63 = load i64, i64* %5, align 8
  ret i64 %63
}

declare dso_local i64 @OpenProcessToken(i32, i32, i32**) #1

declare dso_local i32 @GetCurrentProcess(...) #1

declare dso_local i64 @LookupPrivilegeValueW(i32*, i32, i32*) #1

declare dso_local i64 @AdjustTokenPrivileges(i32*, i32, %struct.TYPE_5__*, i32, i32*, i32*) #1

declare dso_local i64 @GetLastError(...) #1

declare dso_local i32 @CloseHandle(i32*) #1

declare dso_local i32 @DisplayError(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
