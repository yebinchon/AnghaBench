; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/kernel32/client/console/extr_history.c_IntSetConsoleNumberOfCommands.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/kernel32/client/console/extr_history.c_IntSetConsoleNumberOfCommands.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32, i64, i64, i32, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }

@ERROR_INVALID_PARAMETER = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"CsrAllocateCaptureBuffer failed!\0A\00", align 1
@ERROR_NOT_ENOUGH_MEMORY = common dso_local global i32 0, align 4
@CONSRV_SERVERDLL_INDEX = common dso_local global i32 0, align 4
@ConsolepSetNumberOfCommands = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, i64)* @IntSetConsoleNumberOfCommands to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @IntSetConsoleNumberOfCommands(i32 %0, i32* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_9__, align 8
  %9 = alloca %struct.TYPE_8__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  store %struct.TYPE_8__* %13, %struct.TYPE_8__** %9, align 8
  %14 = load i32*, i32** %6, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %27

16:                                               ; preds = %3
  %17 = load i64, i64* %7, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %16
  %20 = load i32*, i32** %6, align 8
  %21 = call i32 @wcslen(i32* %20)
  br label %25

22:                                               ; preds = %16
  %23 = load i32*, i32** %6, align 8
  %24 = call i32 @strlen(i32* %23)
  br label %25

25:                                               ; preds = %22, %19
  %26 = phi i32 [ %21, %19 ], [ %24, %22 ]
  br label %28

27:                                               ; preds = %3
  br label %28

28:                                               ; preds = %27, %25
  %29 = phi i32 [ %26, %25 ], [ 0, %27 ]
  store i32 %29, i32* %11, align 4
  %30 = load i32*, i32** %6, align 8
  %31 = icmp eq i32* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %28
  %33 = load i32, i32* %11, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %32, %28
  %36 = load i32, i32* @ERROR_INVALID_PARAMETER, align 4
  %37 = call i32 @SetLastError(i32 %36)
  %38 = load i32, i32* @FALSE, align 4
  store i32 %38, i32* %4, align 4
  br label %106

39:                                               ; preds = %32
  %40 = call %struct.TYPE_10__* (...) @NtCurrentPeb()
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 5
  store i32 %44, i32* %46, align 4
  %47 = load i32, i32* %5, align 4
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 4
  store i32 %47, i32* %49, align 8
  %50 = load i32, i32* %11, align 4
  %51 = sext i32 %50 to i64
  %52 = load i64, i64* %7, align 8
  %53 = icmp ne i64 %52, 0
  %54 = zext i1 %53 to i64
  %55 = select i1 %53, i64 4, i64 4
  %56 = mul i64 %51, %55
  %57 = trunc i64 %56 to i32
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 8
  %60 = load i64, i64* %7, align 8
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 2
  store i64 %60, i64* %62, align 8
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 3
  store i64 %60, i64* %64, align 8
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @CsrAllocateCaptureBuffer(i32 1, i32 %67)
  store i32 %68, i32* %10, align 4
  %69 = load i32, i32* %10, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %76, label %71

71:                                               ; preds = %39
  %72 = call i32 @DPRINT1(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %73 = load i32, i32* @ERROR_NOT_ENOUGH_MEMORY, align 4
  %74 = call i32 @SetLastError(i32 %73)
  %75 = load i32, i32* @FALSE, align 4
  store i32 %75, i32* %4, align 4
  br label %106

76:                                               ; preds = %39
  %77 = load i32, i32* %10, align 4
  %78 = load i32*, i32** %6, align 8
  %79 = ptrtoint i32* %78 to i32
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 1
  %85 = ptrtoint i32* %84 to i32
  %86 = call i32 @CsrCaptureMessageBuffer(i32 %77, i32 %79, i32 %82, i32 %85)
  %87 = ptrtoint %struct.TYPE_9__* %8 to i32
  %88 = load i32, i32* %10, align 4
  %89 = load i32, i32* @CONSRV_SERVERDLL_INDEX, align 4
  %90 = load i32, i32* @ConsolepSetNumberOfCommands, align 4
  %91 = call i32 @CSR_CREATE_API_NUMBER(i32 %89, i32 %90)
  %92 = call i32 @CsrClientCallServer(i32 %87, i32 %88, i32 %91, i32 32)
  %93 = load i32, i32* %10, align 4
  %94 = call i32 @CsrFreeCaptureBuffer(i32 %93)
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @NT_SUCCESS(i32 %96)
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %104, label %99

99:                                               ; preds = %76
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = call i32 @BaseSetLastNTError(i32 %101)
  %103 = load i32, i32* @FALSE, align 4
  store i32 %103, i32* %4, align 4
  br label %106

104:                                              ; preds = %76
  %105 = load i32, i32* @TRUE, align 4
  store i32 %105, i32* %4, align 4
  br label %106

106:                                              ; preds = %104, %99, %71, %35
  %107 = load i32, i32* %4, align 4
  ret i32 %107
}

declare dso_local i32 @wcslen(i32*) #1

declare dso_local i32 @strlen(i32*) #1

declare dso_local i32 @SetLastError(i32) #1

declare dso_local %struct.TYPE_10__* @NtCurrentPeb(...) #1

declare dso_local i32 @CsrAllocateCaptureBuffer(i32, i32) #1

declare dso_local i32 @DPRINT1(i8*) #1

declare dso_local i32 @CsrCaptureMessageBuffer(i32, i32, i32, i32) #1

declare dso_local i32 @CsrClientCallServer(i32, i32, i32, i32) #1

declare dso_local i32 @CSR_CREATE_API_NUMBER(i32, i32) #1

declare dso_local i32 @CsrFreeCaptureBuffer(i32) #1

declare dso_local i32 @NT_SUCCESS(i32) #1

declare dso_local i32 @BaseSetLastNTError(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
