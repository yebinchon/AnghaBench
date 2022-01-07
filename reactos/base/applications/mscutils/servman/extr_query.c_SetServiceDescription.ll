; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/mscutils/servman/extr_query.c_SetServiceDescription.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/mscutils/servman/extr_query.c_SetServiceDescription.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@FALSE = common dso_local global i32 0, align 4
@SC_MANAGER_LOCK = common dso_local global i32 0, align 4
@SERVICE_CHANGE_CONFIG = common dso_local global i32 0, align 4
@SERVICE_CONFIG_DESCRIPTION = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @SetServiceDescription(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_3__, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %10 = load i32, i32* @FALSE, align 4
  store i32 %10, i32* %9, align 4
  %11 = load i32, i32* @SC_MANAGER_LOCK, align 4
  %12 = call i64 @OpenSCManagerW(i32* null, i32* null, i32 %11)
  store i64 %12, i64* %5, align 8
  %13 = load i64, i64* %5, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %45

15:                                               ; preds = %2
  %16 = load i64, i64* %5, align 8
  %17 = call i32 @LockServiceDatabase(i64 %16)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %42

20:                                               ; preds = %15
  %21 = load i64, i64* %5, align 8
  %22 = load i32, i32* %3, align 4
  %23 = load i32, i32* @SERVICE_CHANGE_CONFIG, align 4
  %24 = call i64 @OpenServiceW(i64 %21, i32 %22, i32 %23)
  store i64 %24, i64* %6, align 8
  %25 = load i64, i64* %6, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %39

27:                                               ; preds = %20
  %28 = load i32, i32* %4, align 4
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  store i32 %28, i32* %29, align 4
  %30 = load i64, i64* %6, align 8
  %31 = load i32, i32* @SERVICE_CONFIG_DESCRIPTION, align 4
  %32 = call i64 @ChangeServiceConfig2W(i64 %30, i32 %31, %struct.TYPE_3__* %8)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %27
  %35 = load i32, i32* @TRUE, align 4
  store i32 %35, i32* %9, align 4
  br label %36

36:                                               ; preds = %34, %27
  %37 = load i64, i64* %6, align 8
  %38 = call i32 @CloseServiceHandle(i64 %37)
  br label %39

39:                                               ; preds = %36, %20
  %40 = load i32, i32* %7, align 4
  %41 = call i32 @UnlockServiceDatabase(i32 %40)
  br label %42

42:                                               ; preds = %39, %15
  %43 = load i64, i64* %5, align 8
  %44 = call i32 @CloseServiceHandle(i64 %43)
  br label %45

45:                                               ; preds = %42, %2
  %46 = load i32, i32* %9, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %50, label %48

48:                                               ; preds = %45
  %49 = call i32 (...) @GetError()
  br label %50

50:                                               ; preds = %48, %45
  %51 = load i32, i32* %9, align 4
  ret i32 %51
}

declare dso_local i64 @OpenSCManagerW(i32*, i32*, i32) #1

declare dso_local i32 @LockServiceDatabase(i64) #1

declare dso_local i64 @OpenServiceW(i64, i32, i32) #1

declare dso_local i64 @ChangeServiceConfig2W(i64, i32, %struct.TYPE_3__*) #1

declare dso_local i32 @CloseServiceHandle(i64) #1

declare dso_local i32 @UnlockServiceDatabase(i32) #1

declare dso_local i32 @GetError(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
