; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/mscutils/servman/extr_dependencies_tv2.c_TV2_HasDependantServices.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/mscutils/servman/extr_dependencies_tv2.c_TV2_HasDependantServices.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4
@SC_MANAGER_ALL_ACCESS = common dso_local global i32 0, align 4
@SERVICE_QUERY_STATUS = common dso_local global i32 0, align 4
@SERVICE_ENUMERATE_DEPENDENTS = common dso_local global i32 0, align 4
@SERVICE_STATE_ALL = common dso_local global i32 0, align 4
@ERROR_MORE_DATA = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @TV2_HasDependantServices(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %8 = load i32, i32* @FALSE, align 4
  store i32 %8, i32* %7, align 4
  %9 = load i32, i32* @SC_MANAGER_ALL_ACCESS, align 4
  %10 = call i64 @OpenSCManagerW(i32* null, i32* null, i32 %9)
  store i64 %10, i64* %3, align 8
  %11 = load i64, i64* %3, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %40

13:                                               ; preds = %1
  %14 = load i64, i64* %3, align 8
  %15 = load i32, i32* %2, align 4
  %16 = load i32, i32* @SERVICE_QUERY_STATUS, align 4
  %17 = load i32, i32* @SERVICE_ENUMERATE_DEPENDENTS, align 4
  %18 = or i32 %16, %17
  %19 = call i64 @OpenServiceW(i64 %14, i32 %15, i32 %18)
  store i64 %19, i64* %4, align 8
  %20 = load i64, i64* %4, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %37

22:                                               ; preds = %13
  %23 = load i64, i64* %4, align 8
  %24 = load i32, i32* @SERVICE_STATE_ALL, align 4
  %25 = call i32 @EnumDependentServices(i64 %23, i32 %24, i32* null, i32 0, i32* %5, i32* %6)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %34, label %27

27:                                               ; preds = %22
  %28 = call i64 (...) @GetLastError()
  %29 = load i64, i64* @ERROR_MORE_DATA, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = load i32, i32* @TRUE, align 4
  store i32 %32, i32* %7, align 4
  br label %33

33:                                               ; preds = %31, %27
  br label %34

34:                                               ; preds = %33, %22
  %35 = load i64, i64* %4, align 8
  %36 = call i32 @CloseServiceHandle(i64 %35)
  br label %37

37:                                               ; preds = %34, %13
  %38 = load i64, i64* %3, align 8
  %39 = call i32 @CloseServiceHandle(i64 %38)
  br label %40

40:                                               ; preds = %37, %1
  %41 = load i32, i32* %7, align 4
  ret i32 %41
}

declare dso_local i64 @OpenSCManagerW(i32*, i32*, i32) #1

declare dso_local i64 @OpenServiceW(i64, i32, i32) #1

declare dso_local i32 @EnumDependentServices(i64, i32, i32*, i32, i32*, i32*) #1

declare dso_local i64 @GetLastError(...) #1

declare dso_local i32 @CloseServiceHandle(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
