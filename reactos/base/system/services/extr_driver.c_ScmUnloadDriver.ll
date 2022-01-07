; ModuleID = '/home/carl/AnghaBench/reactos/base/system/services/extr_driver.c_ScmUnloadDriver.c'
source_filename = "/home/carl/AnghaBench/reactos/base/system/services/extr_driver.c_ScmUnloadDriver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@STATUS_SUCCESS = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@HEAP_ZERO_MEMORY = common dso_local global i32 0, align 4
@ERROR_NOT_ENOUGH_MEMORY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i32] [i32 92, i32 82, i32 101, i32 103, i32 105, i32 115, i32 116, i32 114, i32 121, i32 92, i32 77, i32 97, i32 99, i32 104, i32 105, i32 110, i32 101, i32 92, i32 83, i32 121, i32 115, i32 116, i32 101, i32 109, i32 92, i32 67, i32 117, i32 114, i32 114, i32 101, i32 110, i32 116, i32 67, i32 111, i32 110, i32 116, i32 114, i32 111, i32 108, i32 83, i32 101, i32 116, i32 92, i32 83, i32 101, i32 114, i32 118, i32 105, i32 99, i32 101, i32 115, i32 92, i32 0], align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"  Path: %wZ\0A\00", align 1
@SE_LOAD_DRIVER_PRIVILEGE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [71 x i8] c"SERVICES: Cannot acquire driver-unloading privilege, Status = 0x%08lx\0A\00", align 1
@STATUS_INVALID_DEVICE_REQUEST = common dso_local global i64 0, align 8
@ERROR_INVALID_SERVICE_CONTROL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*)* @ScmUnloadDriver to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ScmUnloadDriver(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  %9 = load i64, i64* @STATUS_SUCCESS, align 8
  store i64 %9, i64* %4, align 8
  %10 = load i32, i32* @FALSE, align 4
  store i32 %10, i32* %5, align 4
  %11 = call i32 (...) @GetProcessHeap()
  %12 = load i32, i32* @HEAP_ZERO_MEMORY, align 4
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @wcslen(i32 %15)
  %17 = add nsw i32 52, %16
  %18 = add nsw i32 %17, 1
  %19 = sext i32 %18 to i64
  %20 = mul i64 %19, 4
  %21 = trunc i64 %20 to i32
  %22 = call i32* @HeapAlloc(i32 %11, i32 %12, i32 %21)
  store i32* %22, i32** %6, align 8
  %23 = load i32*, i32** %6, align 8
  %24 = icmp eq i32* %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %1
  %26 = load i32, i32* @ERROR_NOT_ENOUGH_MEMORY, align 4
  store i32 %26, i32* %2, align 4
  br label %70

27:                                               ; preds = %1
  %28 = load i32*, i32** %6, align 8
  %29 = call i32 @wcscpy(i32* %28, i8* bitcast ([53 x i32]* @.str to i8*))
  %30 = load i32*, i32** %6, align 8
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @wcscat(i32* %30, i32 %33)
  %35 = load i32*, i32** %6, align 8
  %36 = call i32 @RtlInitUnicodeString(i32* %7, i32* %35)
  %37 = call i32 @DPRINT(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32* %7)
  %38 = load i32, i32* @SE_LOAD_DRIVER_PRIVILEGE, align 4
  %39 = load i32, i32* @TRUE, align 4
  %40 = load i32, i32* @FALSE, align 4
  %41 = call i64 @RtlAdjustPrivilege(i32 %38, i32 %39, i32 %40, i32* %5)
  store i64 %41, i64* %4, align 8
  %42 = load i64, i64* %4, align 8
  %43 = call i32 @NT_SUCCESS(i64 %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %50, label %45

45:                                               ; preds = %27
  %46 = load i64, i64* %4, align 8
  %47 = call i32 @DPRINT1(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.2, i64 0, i64 0), i64 %46)
  %48 = load i64, i64* %4, align 8
  %49 = call i32 @RtlNtStatusToDosError(i64 %48)
  store i32 %49, i32* %8, align 4
  br label %65

50:                                               ; preds = %27
  %51 = call i64 @NtUnloadDriver(i32* %7)
  store i64 %51, i64* %4, align 8
  %52 = load i64, i64* %4, align 8
  %53 = load i64, i64* @STATUS_INVALID_DEVICE_REQUEST, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %50
  %56 = load i32, i32* @ERROR_INVALID_SERVICE_CONTROL, align 4
  store i32 %56, i32* %8, align 4
  br label %60

57:                                               ; preds = %50
  %58 = load i64, i64* %4, align 8
  %59 = call i32 @RtlNtStatusToDosError(i64 %58)
  store i32 %59, i32* %8, align 4
  br label %60

60:                                               ; preds = %57, %55
  %61 = load i32, i32* @SE_LOAD_DRIVER_PRIVILEGE, align 4
  %62 = load i32, i32* %5, align 4
  %63 = load i32, i32* @FALSE, align 4
  %64 = call i64 @RtlAdjustPrivilege(i32 %61, i32 %62, i32 %63, i32* %5)
  br label %65

65:                                               ; preds = %60, %45
  %66 = call i32 (...) @GetProcessHeap()
  %67 = load i32*, i32** %6, align 8
  %68 = call i32 @HeapFree(i32 %66, i32 0, i32* %67)
  %69 = load i32, i32* %8, align 4
  store i32 %69, i32* %2, align 4
  br label %70

70:                                               ; preds = %65, %25
  %71 = load i32, i32* %2, align 4
  ret i32 %71
}

declare dso_local i32* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @wcslen(i32) #1

declare dso_local i32 @wcscpy(i32*, i8*) #1

declare dso_local i32 @wcscat(i32*, i32) #1

declare dso_local i32 @RtlInitUnicodeString(i32*, i32*) #1

declare dso_local i32 @DPRINT(i8*, i32*) #1

declare dso_local i64 @RtlAdjustPrivilege(i32, i32, i32, i32*) #1

declare dso_local i32 @NT_SUCCESS(i64) #1

declare dso_local i32 @DPRINT1(i8*, i64) #1

declare dso_local i32 @RtlNtStatusToDosError(i64) #1

declare dso_local i64 @NtUnloadDriver(i32*) #1

declare dso_local i32 @HeapFree(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
