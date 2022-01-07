; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/advapi32/reg/extr_hkcr.c_GetKeyName.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/advapi32/reg/extr_hkcr.c_GetKeyName.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.TYPE_8__ = type { i32, i32 }

@KeyNameInformation = common dso_local global i32 0, align 4
@STATUS_BUFFER_TOO_SMALL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [47 x i8] c"NtQueryKey returned unexpected Status: 0x%08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"Failed to allocate %lu bytes\00", align 1
@ERROR_NOT_ENOUGH_MEMORY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"NtQueryKey failed: 0x%08x\0A\00", align 1
@RTL_DUPLICATE_UNICODE_STRING_NULL_TERMINATE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [42 x i8] c"RtlDuplicateUnicodeString failed: 0x%08x\0A\00", align 1
@ERROR_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @GetKeyName to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @GetKeyName(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_7__, align 4
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i64 0, i64* %8, align 8
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @KeyNameInformation, align 4
  %12 = call i64 @NtQueryKey(i32 %10, i32 %11, %struct.TYPE_8__* null, i64 0, i64* %8)
  store i64 %12, i64* %9, align 8
  %13 = load i64, i64* %9, align 8
  %14 = load i64, i64* @STATUS_BUFFER_TOO_SMALL, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %21

16:                                               ; preds = %2
  %17 = load i64, i64* %9, align 8
  %18 = call i32 @ERR(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i64 %17)
  %19 = load i64, i64* %9, align 8
  %20 = call i32 @RtlNtStatusToDosError(i64 %19)
  store i32 %20, i32* %3, align 4
  br label %80

21:                                               ; preds = %2
  %22 = call i32 (...) @RtlGetProcessHeap()
  %23 = load i64, i64* %8, align 8
  %24 = call %struct.TYPE_8__* @RtlAllocateHeap(i32 %22, i32 0, i64 %23)
  store %struct.TYPE_8__* %24, %struct.TYPE_8__** %7, align 8
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %26 = icmp eq %struct.TYPE_8__* %25, null
  br i1 %26, label %27, label %31

27:                                               ; preds = %21
  %28 = load i64, i64* %8, align 8
  %29 = call i32 @ERR(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i64 %28)
  %30 = load i32, i32* @ERROR_NOT_ENOUGH_MEMORY, align 4
  store i32 %30, i32* %3, align 4
  br label %80

31:                                               ; preds = %21
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* @KeyNameInformation, align 4
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %35 = load i64, i64* %8, align 8
  %36 = call i64 @NtQueryKey(i32 %32, i32 %33, %struct.TYPE_8__* %34, i64 %35, i64* %8)
  store i64 %36, i64* %9, align 8
  %37 = load i64, i64* %9, align 8
  %38 = call i32 @NT_SUCCESS(i64 %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %48, label %40

40:                                               ; preds = %31
  %41 = call i32 (...) @RtlGetProcessHeap()
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %43 = call i32 @RtlFreeHeap(i32 %41, i32 0, %struct.TYPE_8__* %42)
  %44 = load i64, i64* %9, align 8
  %45 = call i32 @ERR(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i64 %44)
  %46 = load i64, i64* %9, align 8
  %47 = call i32 @RtlNtStatusToDosError(i64 %46)
  store i32 %47, i32* %3, align 4
  br label %80

48:                                               ; preds = %31
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 2
  store i32 %51, i32* %52, align 4
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 1
  store i32 %55, i32* %56, align 4
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 0
  store i32 %59, i32* %60, align 4
  %61 = load i32, i32* @RTL_DUPLICATE_UNICODE_STRING_NULL_TERMINATE, align 4
  %62 = load i32, i32* %5, align 4
  %63 = call i64 @RtlDuplicateUnicodeString(i32 %61, %struct.TYPE_7__* %6, i32 %62)
  store i64 %63, i64* %9, align 8
  %64 = load i64, i64* %9, align 8
  %65 = call i32 @NT_SUCCESS(i64 %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %75, label %67

67:                                               ; preds = %48
  %68 = call i32 (...) @RtlGetProcessHeap()
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %70 = call i32 @RtlFreeHeap(i32 %68, i32 0, %struct.TYPE_8__* %69)
  %71 = load i64, i64* %9, align 8
  %72 = call i32 @ERR(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i64 %71)
  %73 = load i64, i64* %9, align 8
  %74 = call i32 @RtlNtStatusToDosError(i64 %73)
  store i32 %74, i32* %3, align 4
  br label %80

75:                                               ; preds = %48
  %76 = call i32 (...) @RtlGetProcessHeap()
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %78 = call i32 @RtlFreeHeap(i32 %76, i32 0, %struct.TYPE_8__* %77)
  %79 = load i32, i32* @ERROR_SUCCESS, align 4
  store i32 %79, i32* %3, align 4
  br label %80

80:                                               ; preds = %75, %67, %40, %27, %16
  %81 = load i32, i32* %3, align 4
  ret i32 %81
}

declare dso_local i64 @NtQueryKey(i32, i32, %struct.TYPE_8__*, i64, i64*) #1

declare dso_local i32 @ERR(i8*, i64) #1

declare dso_local i32 @RtlNtStatusToDosError(i64) #1

declare dso_local %struct.TYPE_8__* @RtlAllocateHeap(i32, i32, i64) #1

declare dso_local i32 @RtlGetProcessHeap(...) #1

declare dso_local i32 @NT_SUCCESS(i64) #1

declare dso_local i32 @RtlFreeHeap(i32, i32, %struct.TYPE_8__*) #1

declare dso_local i64 @RtlDuplicateUnicodeString(i32, %struct.TYPE_7__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
