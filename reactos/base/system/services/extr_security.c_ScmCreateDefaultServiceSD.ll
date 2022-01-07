; ModuleID = '/home/carl/AnghaBench/reactos/base/system/services/extr_security.c_ScmCreateDefaultServiceSD.c'
source_filename = "/home/carl/AnghaBench/reactos/base/system/services/extr_security.c_ScmCreateDefaultServiceSD.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ERROR_SUCCESS = common dso_local global i64 0, align 8
@pDefaultSD = common dso_local global i32 0, align 4
@STATUS_BUFFER_TOO_SMALL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [18 x i8] c"BufferLength %lu\0A\00", align 1
@HEAP_ZERO_MEMORY = common dso_local global i32 0, align 4
@ERROR_OUTOFMEMORY = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [16 x i8] c"pRelativeSD %p\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ScmCreateDefaultServiceSD(i32** %0) #0 {
  %2 = alloca i32**, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i32** %0, i32*** %2, align 8
  store i32* null, i32** %3, align 8
  store i64 0, i64* %4, align 8
  %7 = load i64, i64* @ERROR_SUCCESS, align 8
  store i64 %7, i64* %6, align 8
  %8 = load i32, i32* @pDefaultSD, align 4
  %9 = call i64 @RtlAbsoluteToSelfRelativeSD(i32 %8, i32* null, i64* %4)
  store i64 %9, i64* %5, align 8
  %10 = load i64, i64* %5, align 8
  %11 = load i64, i64* @STATUS_BUFFER_TOO_SMALL, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load i64, i64* %5, align 8
  %15 = call i64 @RtlNtStatusToDosError(i64 %14)
  store i64 %15, i64* %6, align 8
  br label %43

16:                                               ; preds = %1
  %17 = load i64, i64* %4, align 8
  %18 = call i32 @DPRINT(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i64 %17)
  %19 = call i32 (...) @RtlGetProcessHeap()
  %20 = load i32, i32* @HEAP_ZERO_MEMORY, align 4
  %21 = load i64, i64* %4, align 8
  %22 = call i32* @RtlAllocateHeap(i32 %19, i32 %20, i64 %21)
  store i32* %22, i32** %3, align 8
  %23 = load i32*, i32** %3, align 8
  %24 = icmp eq i32* %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %16
  %26 = load i64, i64* @ERROR_OUTOFMEMORY, align 8
  store i64 %26, i64* %6, align 8
  br label %43

27:                                               ; preds = %16
  %28 = load i32*, i32** %3, align 8
  %29 = ptrtoint i32* %28 to i64
  %30 = call i32 @DPRINT(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i64 %29)
  %31 = load i32, i32* @pDefaultSD, align 4
  %32 = load i32*, i32** %3, align 8
  %33 = call i64 @RtlAbsoluteToSelfRelativeSD(i32 %31, i32* %32, i64* %4)
  store i64 %33, i64* %5, align 8
  %34 = load i64, i64* %5, align 8
  %35 = call i32 @NT_SUCCESS(i64 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %27
  %38 = load i64, i64* %5, align 8
  %39 = call i64 @RtlNtStatusToDosError(i64 %38)
  store i64 %39, i64* %6, align 8
  br label %43

40:                                               ; preds = %27
  %41 = load i32*, i32** %3, align 8
  %42 = load i32**, i32*** %2, align 8
  store i32* %41, i32** %42, align 8
  br label %43

43:                                               ; preds = %40, %37, %25, %13
  %44 = load i64, i64* %6, align 8
  %45 = load i64, i64* @ERROR_SUCCESS, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %55

47:                                               ; preds = %43
  %48 = load i32*, i32** %3, align 8
  %49 = icmp ne i32* %48, null
  br i1 %49, label %50, label %54

50:                                               ; preds = %47
  %51 = call i32 (...) @RtlGetProcessHeap()
  %52 = load i32*, i32** %3, align 8
  %53 = call i32 @RtlFreeHeap(i32 %51, i32 0, i32* %52)
  br label %54

54:                                               ; preds = %50, %47
  br label %55

55:                                               ; preds = %54, %43
  %56 = load i64, i64* %6, align 8
  ret i64 %56
}

declare dso_local i64 @RtlAbsoluteToSelfRelativeSD(i32, i32*, i64*) #1

declare dso_local i64 @RtlNtStatusToDosError(i64) #1

declare dso_local i32 @DPRINT(i8*, i64) #1

declare dso_local i32* @RtlAllocateHeap(i32, i32, i64) #1

declare dso_local i32 @RtlGetProcessHeap(...) #1

declare dso_local i32 @NT_SUCCESS(i64) #1

declare dso_local i32 @RtlFreeHeap(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
