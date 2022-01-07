; ModuleID = '/home/carl/AnghaBench/reactos/base/system/services/extr_driver.c_ScmLoadDriver.c'
source_filename = "/home/carl/AnghaBench/reactos/base/system/services/extr_driver.c_ScmLoadDriver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@STATUS_SUCCESS = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@HEAP_ZERO_MEMORY = common dso_local global i32 0, align 4
@ERROR_NOT_ENOUGH_MEMORY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i32] [i32 92, i32 82, i32 101, i32 103, i32 105, i32 115, i32 116, i32 114, i32 121, i32 92, i32 77, i32 97, i32 99, i32 104, i32 105, i32 110, i32 101, i32 92, i32 83, i32 121, i32 115, i32 116, i32 101, i32 109, i32 92, i32 67, i32 117, i32 114, i32 114, i32 101, i32 110, i32 116, i32 67, i32 111, i32 110, i32 116, i32 114, i32 111, i32 108, i32 83, i32 101, i32 116, i32 92, i32 83, i32 101, i32 114, i32 118, i32 105, i32 99, i32 101, i32 115, i32 92, i32 0], align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"  Path: %wZ\0A\00", align 1
@SE_LOAD_DRIVER_PRIVILEGE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [69 x i8] c"SERVICES: Cannot acquire driver-loading privilege, Status = 0x%08lx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*)* @ScmLoadDriver to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ScmLoadDriver(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  %8 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* @FALSE, align 4
  store i32 %9, i32* %5, align 4
  %10 = call i32 (...) @GetProcessHeap()
  %11 = load i32, i32* @HEAP_ZERO_MEMORY, align 4
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @wcslen(i32 %14)
  %16 = add nsw i32 52, %15
  %17 = add nsw i32 %16, 1
  %18 = sext i32 %17 to i64
  %19 = mul i64 %18, 4
  %20 = trunc i64 %19 to i32
  %21 = call i32* @HeapAlloc(i32 %10, i32 %11, i32 %20)
  store i32* %21, i32** %6, align 8
  %22 = load i32*, i32** %6, align 8
  %23 = icmp eq i32* %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %1
  %25 = load i32, i32* @ERROR_NOT_ENOUGH_MEMORY, align 4
  store i32 %25, i32* %2, align 4
  br label %59

26:                                               ; preds = %1
  %27 = load i32*, i32** %6, align 8
  %28 = call i32 @wcscpy(i32* %27, i8* bitcast ([53 x i32]* @.str to i8*))
  %29 = load i32*, i32** %6, align 8
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @wcscat(i32* %29, i32 %32)
  %34 = load i32*, i32** %6, align 8
  %35 = call i32 @RtlInitUnicodeString(i32* %7, i32* %34)
  %36 = call i32 @DPRINT(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32* %7)
  %37 = load i32, i32* @SE_LOAD_DRIVER_PRIVILEGE, align 4
  %38 = load i32, i32* @TRUE, align 4
  %39 = load i32, i32* @FALSE, align 4
  %40 = call i32 @RtlAdjustPrivilege(i32 %37, i32 %38, i32 %39, i32* %5)
  store i32 %40, i32* %4, align 4
  %41 = load i32, i32* %4, align 4
  %42 = call i32 @NT_SUCCESS(i32 %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %26
  %45 = load i32, i32* %4, align 4
  %46 = call i32 @DPRINT1(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.2, i64 0, i64 0), i32 %45)
  br label %53

47:                                               ; preds = %26
  %48 = call i32 @NtLoadDriver(i32* %7)
  store i32 %48, i32* %4, align 4
  %49 = load i32, i32* @SE_LOAD_DRIVER_PRIVILEGE, align 4
  %50 = load i32, i32* %5, align 4
  %51 = load i32, i32* @FALSE, align 4
  %52 = call i32 @RtlAdjustPrivilege(i32 %49, i32 %50, i32 %51, i32* %5)
  br label %53

53:                                               ; preds = %47, %44
  %54 = call i32 (...) @GetProcessHeap()
  %55 = load i32*, i32** %6, align 8
  %56 = call i32 @HeapFree(i32 %54, i32 0, i32* %55)
  %57 = load i32, i32* %4, align 4
  %58 = call i32 @RtlNtStatusToDosError(i32 %57)
  store i32 %58, i32* %2, align 4
  br label %59

59:                                               ; preds = %53, %24
  %60 = load i32, i32* %2, align 4
  ret i32 %60
}

declare dso_local i32* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @wcslen(i32) #1

declare dso_local i32 @wcscpy(i32*, i8*) #1

declare dso_local i32 @wcscat(i32*, i32) #1

declare dso_local i32 @RtlInitUnicodeString(i32*, i32*) #1

declare dso_local i32 @DPRINT(i8*, i32*) #1

declare dso_local i32 @RtlAdjustPrivilege(i32, i32, i32, i32*) #1

declare dso_local i32 @NT_SUCCESS(i32) #1

declare dso_local i32 @DPRINT1(i8*, i32) #1

declare dso_local i32 @NtLoadDriver(i32*) #1

declare dso_local i32 @HeapFree(i32, i32, i32*) #1

declare dso_local i32 @RtlNtStatusToDosError(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
