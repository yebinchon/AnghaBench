; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/cmdutils/reg/extr_reg.c_set_privilege.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/cmdutils/reg/extr_reg.c_set_privilege.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32 }

@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@TOKEN_ADJUST_PRIVILEGES = common dso_local global i32 0, align 4
@SE_PRIVILEGE_ENABLED = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@ERROR_NOT_ALL_ASSIGNED = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@ERROR_ACCESS_DENIED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i64)* @set_privilege to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @set_privilege(i32 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_5__, align 8
  %8 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i64 %1, i64* %5, align 8
  %9 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  store i64 %9, i64* %6, align 8
  %10 = load i64, i64* @ERROR_SUCCESS, align 8
  store i64 %10, i64* %8, align 8
  %11 = call i32 (...) @GetCurrentProcess()
  %12 = load i32, i32* @TOKEN_ADJUST_PRIVILEGES, align 4
  %13 = call i64 @OpenProcessToken(i32 %11, i32 %12, i64* %6)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %53

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  store i32 1, i32* %16, align 8
  %17 = load i64, i64* %5, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %15
  %20 = load i32, i32* @SE_PRIVILEGE_ENABLED, align 4
  br label %22

21:                                               ; preds = %15
  br label %22

22:                                               ; preds = %21, %19
  %23 = phi i32 [ %20, %19 ], [ 0, %21 ]
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 1
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i64 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  store i32 %23, i32* %27, align 4
  %28 = load i32, i32* %4, align 4
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 1
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i64 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = call i64 @LookupPrivilegeValueW(i32* null, i32 %28, i32* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %50

35:                                               ; preds = %22
  %36 = load i64, i64* %6, align 8
  %37 = load i64, i64* @FALSE, align 8
  %38 = call i64 @AdjustTokenPrivileges(i64 %36, i64 %37, %struct.TYPE_5__* %7, i32 0, i32* null, i32* null)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %35
  %41 = call i64 (...) @GetLastError()
  %42 = load i64, i64* @ERROR_NOT_ALL_ASSIGNED, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %40
  %45 = load i64, i64* @ERROR_NOT_ALL_ASSIGNED, align 8
  store i64 %45, i64* %8, align 8
  br label %59

46:                                               ; preds = %40
  br label %49

47:                                               ; preds = %35
  %48 = call i64 (...) @GetLastError()
  store i64 %48, i64* %8, align 8
  br label %59

49:                                               ; preds = %46
  br label %52

50:                                               ; preds = %22
  %51 = call i64 (...) @GetLastError()
  store i64 %51, i64* %8, align 8
  br label %59

52:                                               ; preds = %49
  br label %55

53:                                               ; preds = %2
  %54 = call i64 (...) @GetLastError()
  store i64 %54, i64* %8, align 8
  br label %59

55:                                               ; preds = %52
  %56 = load i64, i64* %6, align 8
  %57 = call i32 @CloseHandle(i64 %56)
  %58 = load i64, i64* @TRUE, align 8
  store i64 %58, i64* %3, align 8
  br label %76

59:                                               ; preds = %53, %50, %47, %44
  %60 = load i64, i64* %8, align 8
  %61 = load i64, i64* @ERROR_SUCCESS, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %65

63:                                               ; preds = %59
  %64 = load i64, i64* @ERROR_ACCESS_DENIED, align 8
  store i64 %64, i64* %8, align 8
  br label %65

65:                                               ; preds = %63, %59
  %66 = load i64, i64* %6, align 8
  %67 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %68 = icmp ne i64 %66, %67
  br i1 %68, label %69, label %72

69:                                               ; preds = %65
  %70 = load i64, i64* %6, align 8
  %71 = call i32 @CloseHandle(i64 %70)
  br label %72

72:                                               ; preds = %69, %65
  %73 = load i64, i64* %8, align 8
  %74 = call i32 @output_error(i64 %73)
  %75 = load i64, i64* @FALSE, align 8
  store i64 %75, i64* %3, align 8
  br label %76

76:                                               ; preds = %72, %55
  %77 = load i64, i64* %3, align 8
  ret i64 %77
}

declare dso_local i64 @OpenProcessToken(i32, i32, i64*) #1

declare dso_local i32 @GetCurrentProcess(...) #1

declare dso_local i64 @LookupPrivilegeValueW(i32*, i32, i32*) #1

declare dso_local i64 @AdjustTokenPrivileges(i64, i64, %struct.TYPE_5__*, i32, i32*, i32*) #1

declare dso_local i64 @GetLastError(...) #1

declare dso_local i32 @CloseHandle(i64) #1

declare dso_local i32 @output_error(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
