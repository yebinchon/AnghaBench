; ModuleID = '/home/carl/AnghaBench/reactos/dll/cpl/timedate/extr_dateandtime.c_SystemSetLocalTime.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/cpl/timedate/extr_dateandtime.c_SystemSetLocalTime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32 }

@FALSE = common dso_local global i32 0, align 4
@TOKEN_ADJUST_PRIVILEGES = common dso_local global i32 0, align 4
@TOKEN_QUERY = common dso_local global i32 0, align 4
@SE_PRIVILEGE_ENABLED = common dso_local global i32 0, align 4
@SE_SYSTEMTIME_NAME = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @SystemSetLocalTime(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__, align 8
  %6 = alloca %struct.TYPE_6__, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %8 = load i32, i32* @FALSE, align 4
  store i32 %8, i32* %7, align 4
  %9 = call i32 (...) @GetCurrentProcess()
  %10 = load i32, i32* @TOKEN_ADJUST_PRIVILEGES, align 4
  %11 = load i32, i32* @TOKEN_QUERY, align 4
  %12 = or i32 %10, %11
  %13 = call i64 @OpenProcessToken(i32 %9, i32 %12, i32* %3)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %61

15:                                               ; preds = %1
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 0
  store i32 1, i32* %16, align 8
  %17 = load i32, i32* @SE_PRIVILEGE_ENABLED, align 4
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 1
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i64 0
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 1
  store i32 %17, i32* %21, align 4
  %22 = load i32, i32* @SE_SYSTEMTIME_NAME, align 4
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 1
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i64 0
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = call i64 @LookupPrivilegeValueW(i32* null, i32 %22, i32* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %58

29:                                               ; preds = %15
  %30 = load i32, i32* %3, align 4
  %31 = load i32, i32* @FALSE, align 4
  %32 = call i64 @AdjustTokenPrivileges(i32 %30, i32 %31, %struct.TYPE_6__* %5, i32 16, %struct.TYPE_6__* %6, i32* %4)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %57

34:                                               ; preds = %29
  %35 = call i64 (...) @GetLastError()
  %36 = load i64, i64* @ERROR_SUCCESS, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %57

38:                                               ; preds = %34
  %39 = load i32, i32* %2, align 4
  %40 = call i64 @SetLocalTime(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %38
  %43 = load i32, i32* %2, align 4
  %44 = call i64 @SetLocalTime(i32 %43)
  %45 = icmp ne i64 %44, 0
  br label %46

46:                                               ; preds = %42, %38
  %47 = phi i1 [ false, %38 ], [ %45, %42 ]
  %48 = zext i1 %47 to i32
  store i32 %48, i32* %7, align 4
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = icmp sgt i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %46
  %53 = load i32, i32* %3, align 4
  %54 = load i32, i32* @FALSE, align 4
  %55 = call i64 @AdjustTokenPrivileges(i32 %53, i32 %54, %struct.TYPE_6__* %6, i32 0, %struct.TYPE_6__* null, i32* null)
  br label %56

56:                                               ; preds = %52, %46
  br label %57

57:                                               ; preds = %56, %34, %29
  br label %58

58:                                               ; preds = %57, %15
  %59 = load i32, i32* %3, align 4
  %60 = call i32 @CloseHandle(i32 %59)
  br label %61

61:                                               ; preds = %58, %1
  %62 = load i32, i32* %7, align 4
  ret i32 %62
}

declare dso_local i64 @OpenProcessToken(i32, i32, i32*) #1

declare dso_local i32 @GetCurrentProcess(...) #1

declare dso_local i64 @LookupPrivilegeValueW(i32*, i32, i32*) #1

declare dso_local i64 @AdjustTokenPrivileges(i32, i32, %struct.TYPE_6__*, i32, %struct.TYPE_6__*, i32*) #1

declare dso_local i64 @GetLastError(...) #1

declare dso_local i64 @SetLocalTime(i32) #1

declare dso_local i32 @CloseHandle(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
