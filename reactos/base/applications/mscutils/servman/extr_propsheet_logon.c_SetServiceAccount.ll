; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/mscutils/servman/extr_propsheet_logon.c_SetServiceAccount.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/mscutils/servman/extr_propsheet_logon.c_SetServiceAccount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4
@SC_MANAGER_LOCK = common dso_local global i32 0, align 4
@SERVICE_CHANGE_CONFIG = common dso_local global i32 0, align 4
@SERVICE_NO_CHANGE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32)* @SetServiceAccount to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @SetServiceAccount(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = load i32, i32* @FALSE, align 4
  store i32 %13, i32* %12, align 4
  %14 = load i32, i32* @SC_MANAGER_LOCK, align 4
  %15 = call i64 @OpenSCManagerW(i32* null, i32* null, i32 %14)
  store i64 %15, i64* %9, align 8
  %16 = load i64, i64* %9, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %50

18:                                               ; preds = %4
  %19 = load i64, i64* %9, align 8
  %20 = call i32 @LockServiceDatabase(i64 %19)
  store i32 %20, i32* %11, align 4
  %21 = load i32, i32* %11, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %47

23:                                               ; preds = %18
  %24 = load i64, i64* %9, align 8
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @SERVICE_CHANGE_CONFIG, align 4
  %27 = call i64 @OpenServiceW(i64 %24, i32 %25, i32 %26)
  store i64 %27, i64* %10, align 8
  %28 = load i64, i64* %10, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %44

30:                                               ; preds = %23
  %31 = load i64, i64* %10, align 8
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* @SERVICE_NO_CHANGE, align 4
  %34 = load i32, i32* @SERVICE_NO_CHANGE, align 4
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* %8, align 4
  %37 = call i64 @ChangeServiceConfigW(i64 %31, i32 %32, i32 %33, i32 %34, i32* null, i32* null, i32* null, i32* null, i32 %35, i32 %36, i32* null)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %30
  %40 = load i32, i32* @TRUE, align 4
  store i32 %40, i32* %12, align 4
  br label %41

41:                                               ; preds = %39, %30
  %42 = load i64, i64* %10, align 8
  %43 = call i32 @CloseServiceHandle(i64 %42)
  br label %44

44:                                               ; preds = %41, %23
  %45 = load i32, i32* %11, align 4
  %46 = call i32 @UnlockServiceDatabase(i32 %45)
  br label %47

47:                                               ; preds = %44, %18
  %48 = load i64, i64* %9, align 8
  %49 = call i32 @CloseServiceHandle(i64 %48)
  br label %50

50:                                               ; preds = %47, %4
  %51 = load i32, i32* %12, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %55, label %53

53:                                               ; preds = %50
  %54 = call i32 (...) @GetError()
  br label %55

55:                                               ; preds = %53, %50
  %56 = load i32, i32* %12, align 4
  ret i32 %56
}

declare dso_local i64 @OpenSCManagerW(i32*, i32*, i32) #1

declare dso_local i32 @LockServiceDatabase(i64) #1

declare dso_local i64 @OpenServiceW(i64, i32, i32) #1

declare dso_local i64 @ChangeServiceConfigW(i64, i32, i32, i32, i32*, i32*, i32*, i32*, i32, i32, i32*) #1

declare dso_local i32 @CloseServiceHandle(i64) #1

declare dso_local i32 @UnlockServiceDatabase(i32) #1

declare dso_local i32 @GetError(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
