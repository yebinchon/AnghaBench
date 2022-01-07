; ModuleID = '/home/carl/AnghaBench/radare2/libr/debug/p/native/windows/extr_windows_debug.c_setup_debug_privileges.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/debug/p/native/windows/extr_windows_debug.c_setup_debug_privileges.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32 }

@TOKEN_ADJUST_PRIVILEGES = common dso_local global i32 0, align 4
@TOKEN_QUERY = common dso_local global i32 0, align 4
@SE_DEBUG_NAME = common dso_local global i32 0, align 4
@SE_PRIVILEGE_ENABLED = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @setup_debug_privileges(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_5__, align 8
  store i32 %0, i32* %3, align 4
  %8 = call i32 (...) @GetCurrentProcess()
  %9 = load i32, i32* @TOKEN_ADJUST_PRIVILEGES, align 4
  %10 = load i32, i32* @TOKEN_QUERY, align 4
  %11 = or i32 %9, %10
  %12 = call i32 @OpenProcessToken(i32 %8, i32 %11, i32* %4)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %51

15:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  %16 = load i32, i32* @SE_DEBUG_NAME, align 4
  %17 = call i64 @LookupPrivilegeValue(i32* null, i32 %16, i32* %6)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %47

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  store i32 1, i32* %20, align 8
  %21 = load i32, i32* %6, align 4
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 1
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i64 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  store i32 %21, i32* %25, align 4
  %26 = load i32, i32* %3, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %19
  %29 = load i32, i32* @SE_PRIVILEGE_ENABLED, align 4
  br label %31

30:                                               ; preds = %19
  br label %31

31:                                               ; preds = %30, %28
  %32 = phi i32 [ %29, %28 ], [ 0, %30 ]
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 1
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i64 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  store i32 %32, i32* %36, align 4
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* @FALSE, align 4
  %39 = call i64 @AdjustTokenPrivileges(i32 %37, i32 %38, %struct.TYPE_5__* %7, i32 0, i32* null, i32* null)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %31
  %42 = call i64 (...) @GetLastError()
  %43 = load i64, i64* @ERROR_SUCCESS, align 8
  %44 = icmp eq i64 %42, %43
  %45 = zext i1 %44 to i32
  store i32 %45, i32* %5, align 4
  br label %46

46:                                               ; preds = %41, %31
  br label %47

47:                                               ; preds = %46, %15
  %48 = load i32, i32* %4, align 4
  %49 = call i32 @CloseHandle(i32 %48)
  %50 = load i32, i32* %5, align 4
  store i32 %50, i32* %2, align 4
  br label %51

51:                                               ; preds = %47, %14
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local i32 @OpenProcessToken(i32, i32, i32*) #1

declare dso_local i32 @GetCurrentProcess(...) #1

declare dso_local i64 @LookupPrivilegeValue(i32*, i32, i32*) #1

declare dso_local i64 @AdjustTokenPrivileges(i32, i32, %struct.TYPE_5__*, i32, i32*, i32*) #1

declare dso_local i64 @GetLastError(...) #1

declare dso_local i32 @CloseHandle(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
