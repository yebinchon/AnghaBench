; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/dxdiag/extr_system.c_GetSystemCPU.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/dxdiag/extr_system.c_GetSystemCPU.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@FALSE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [9 x i32] [i32 107, i32 101, i32 114, i32 110, i32 101, i32 108, i32 51, i32 50, i32 0], align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"IsWow64Process\00", align 1
@PROCESSOR_ARCHITECTURE_UNKNOWN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i32] [i32 51, i32 50, i32 45, i32 98, i32 105, i32 116, i32 0], align 4
@.str.3 = private unnamed_addr constant [7 x i32] [i32 54, i32 52, i32 45, i32 98, i32 105, i32 116, i32 0], align 4
@.str.4 = private unnamed_addr constant [8 x i32] [i32 73, i32 116, i32 97, i32 110, i32 105, i32 117, i32 109, i32 0], align 4
@.str.5 = private unnamed_addr constant [4 x i32] [i32 65, i32 82, i32 77, i32 0], align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @GetSystemCPU(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_4__, align 4
  %5 = alloca i32 (i32, i64*)*, align 8
  %6 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  %7 = load i64, i64* @FALSE, align 8
  store i64 %7, i64* %6, align 8
  %8 = call i32 @GetModuleHandleW(i8* bitcast ([9 x i32]* @.str to i8*))
  %9 = call i64 @GetProcAddress(i32 %8, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %10 = inttoptr i64 %9 to i32 (i32, i64*)*
  store i32 (i32, i64*)* %10, i32 (i32, i64*)** %5, align 8
  %11 = load i32 (i32, i64*)*, i32 (i32, i64*)** %5, align 8
  %12 = icmp ne i32 (i32, i64*)* %11, null
  br i1 %12, label %13, label %17

13:                                               ; preds = %1
  %14 = load i32 (i32, i64*)*, i32 (i32, i64*)** %5, align 8
  %15 = call i32 (...) @GetCurrentProcess()
  %16 = call i32 %14(i32 %15, i64* %6)
  br label %17

17:                                               ; preds = %13, %1
  %18 = load i64, i64* %6, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %17
  %21 = call i32 @GetNativeSystemInfo(%struct.TYPE_4__* %4)
  br label %24

22:                                               ; preds = %17
  %23 = call i32 @GetSystemInfo(%struct.TYPE_4__* %4)
  br label %24

24:                                               ; preds = %22, %20
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @PROCESSOR_ARCHITECTURE_UNKNOWN, align 4
  %28 = icmp ne i32 %26, %27
  br i1 %28, label %29, label %46

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  switch i32 %31, label %44 [
    i32 128, label %32
    i32 131, label %35
    i32 129, label %38
    i32 130, label %41
  ]

32:                                               ; preds = %29
  %33 = load i32*, i32** %3, align 8
  %34 = call i32 @wsprintfW(i32* %33, i8* bitcast ([7 x i32]* @.str.2 to i8*))
  br label %45

35:                                               ; preds = %29
  %36 = load i32*, i32** %3, align 8
  %37 = call i32 @wsprintfW(i32* %36, i8* bitcast ([7 x i32]* @.str.3 to i8*))
  br label %45

38:                                               ; preds = %29
  %39 = load i32*, i32** %3, align 8
  %40 = call i32 @wsprintfW(i32* %39, i8* bitcast ([8 x i32]* @.str.4 to i8*))
  br label %45

41:                                               ; preds = %29
  %42 = load i32*, i32** %3, align 8
  %43 = call i32 @wsprintfW(i32* %42, i8* bitcast ([4 x i32]* @.str.5 to i8*))
  br label %45

44:                                               ; preds = %29
  br label %45

45:                                               ; preds = %44, %41, %38, %35, %32
  br label %46

46:                                               ; preds = %45, %24
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local i64 @GetProcAddress(i32, i8*) #1

declare dso_local i32 @GetModuleHandleW(i8*) #1

declare dso_local i32 @GetCurrentProcess(...) #1

declare dso_local i32 @GetNativeSystemInfo(%struct.TYPE_4__*) #1

declare dso_local i32 @GetSystemInfo(%struct.TYPE_4__*) #1

declare dso_local i32 @wsprintfW(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
