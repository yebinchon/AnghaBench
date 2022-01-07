; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/mscutils/servman/extr_create.c_DoCreate.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/mscutils/servman/extr_create.c_DoCreate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32 }

@FALSE = common dso_local global i32 0, align 4
@SC_MANAGER_ALL_ACCESS = common dso_local global i32 0, align 4
@SERVICE_ALL_ACCESS = common dso_local global i32 0, align 4
@SERVICE_WIN32_OWN_PROCESS = common dso_local global i32 0, align 4
@SERVICE_DEMAND_START = common dso_local global i32 0, align 4
@SERVICE_ERROR_NORMAL = common dso_local global i32 0, align 4
@hInstance = common dso_local global i32 0, align 4
@IDS_CREATE_SUCCESS = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*)* @DoCreate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @DoCreate(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %7 = load i32, i32* @FALSE, align 4
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* @SC_MANAGER_ALL_ACCESS, align 4
  %9 = call i64 @OpenSCManagerW(i32* null, i32* null, i32 %8)
  store i64 %9, i64* %3, align 8
  %10 = load i64, i64* %3, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %54

12:                                               ; preds = %1
  %13 = load i64, i64* %3, align 8
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @SERVICE_ALL_ACCESS, align 4
  %21 = load i32, i32* @SERVICE_WIN32_OWN_PROCESS, align 4
  %22 = load i32, i32* @SERVICE_DEMAND_START, align 4
  %23 = load i32, i32* @SERVICE_ERROR_NORMAL, align 4
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @CreateServiceW(i64 %13, i32 %16, i32 %19, i32 %20, i32 %21, i32 %22, i32 %23, i32 %26, i32* null, i32* null, i32* null, i32* null, i32* null)
  store i64 %27, i64* %4, align 8
  %28 = load i64, i64* %4, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %51

30:                                               ; preds = %12
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @SetServiceDescription(i32 %33, i32 %36)
  %38 = load i32, i32* @hInstance, align 4
  %39 = load i32, i32* @IDS_CREATE_SUCCESS, align 4
  %40 = call i64 @AllocAndLoadString(i32* %6, i32 %38, i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %30
  %43 = load i32, i32* %6, align 4
  %44 = call i32 @DisplayString(i32 %43)
  %45 = load i32, i32* %6, align 4
  %46 = call i32 @LocalFree(i32 %45)
  br label %47

47:                                               ; preds = %42, %30
  %48 = load i64, i64* %4, align 8
  %49 = call i32 @CloseServiceHandle(i64 %48)
  %50 = load i32, i32* @TRUE, align 4
  store i32 %50, i32* %5, align 4
  br label %51

51:                                               ; preds = %47, %12
  %52 = load i64, i64* %3, align 8
  %53 = call i32 @CloseServiceHandle(i64 %52)
  br label %54

54:                                               ; preds = %51, %1
  %55 = load i32, i32* %5, align 4
  ret i32 %55
}

declare dso_local i64 @OpenSCManagerW(i32*, i32*, i32) #1

declare dso_local i64 @CreateServiceW(i64, i32, i32, i32, i32, i32, i32, i32, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @SetServiceDescription(i32, i32) #1

declare dso_local i64 @AllocAndLoadString(i32*, i32, i32) #1

declare dso_local i32 @DisplayString(i32) #1

declare dso_local i32 @LocalFree(i32) #1

declare dso_local i32 @CloseServiceHandle(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
