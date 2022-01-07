; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/network/net/extr_main.c_ReadFromConsole.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/network/net/extr_main.c_ReadFromConsole.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@STD_INPUT_HANDLE = common dso_local global i32 0, align 4
@ENABLE_LINE_INPUT = common dso_local global i32 0, align 4
@ENABLE_ECHO_INPUT = common dso_local global i32 0, align 4
@CP_OEMCP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ReadFromConsole(i32* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  store i32 0, i32* %9, align 4
  %13 = call i32 (...) @GetProcessHeap()
  %14 = load i32, i32* %6, align 4
  %15 = sub nsw i32 %14, 1
  %16 = call i64 @HeapAlloc(i32 %13, i32 0, i32 %15)
  store i64 %16, i64* %12, align 8
  %17 = load i32*, i32** %5, align 8
  %18 = load i32, i32* %6, align 4
  %19 = sext i32 %18 to i64
  %20 = mul i64 %19, 4
  %21 = trunc i64 %20 to i32
  %22 = call i32 @ZeroMemory(i32* %17, i32 %21)
  %23 = load i32, i32* @STD_INPUT_HANDLE, align 4
  %24 = call i32 @GetStdHandle(i32 %23)
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %10, align 4
  %26 = call i32 @GetConsoleMode(i32 %25, i32* %8)
  %27 = load i32, i32* %10, align 4
  %28 = load i32, i32* @ENABLE_LINE_INPUT, align 4
  %29 = load i64, i64* %7, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %3
  %32 = load i32, i32* @ENABLE_ECHO_INPUT, align 4
  br label %34

33:                                               ; preds = %3
  br label %34

34:                                               ; preds = %33, %31
  %35 = phi i32 [ %32, %31 ], [ 0, %33 ]
  %36 = or i32 %28, %35
  %37 = call i32 @SetConsoleMode(i32 %27, i32 %36)
  %38 = load i32, i32* %10, align 4
  %39 = load i64, i64* %12, align 8
  %40 = trunc i64 %39 to i32
  %41 = load i32, i32* %6, align 4
  %42 = sub nsw i32 %41, 1
  %43 = call i32 @ReadFile(i32 %38, i32 %40, i32 %42, i32* %9, i32* null)
  %44 = load i32, i32* @CP_OEMCP, align 4
  %45 = load i64, i64* %12, align 8
  %46 = load i32, i32* %9, align 4
  %47 = load i32*, i32** %5, align 8
  %48 = load i32, i32* %6, align 4
  %49 = sub nsw i32 %48, 1
  %50 = call i32 @MultiByteToWideChar(i32 %44, i32 0, i64 %45, i32 %46, i32* %47, i32 %49)
  %51 = call i32 (...) @GetProcessHeap()
  %52 = load i64, i64* %12, align 8
  %53 = call i32 @HeapFree(i32 %51, i32 0, i64 %52)
  %54 = load i32*, i32** %5, align 8
  store i32* %54, i32** %11, align 8
  br label %55

55:                                               ; preds = %66, %34
  %56 = load i32*, i32** %11, align 8
  %57 = load i32, i32* %56, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %69

59:                                               ; preds = %55
  %60 = load i32*, i32** %11, align 8
  %61 = load i32, i32* %60, align 4
  %62 = icmp eq i32 %61, 13
  br i1 %62, label %63, label %65

63:                                               ; preds = %59
  %64 = load i32*, i32** %11, align 8
  store i32 0, i32* %64, align 4
  br label %69

65:                                               ; preds = %59
  br label %66

66:                                               ; preds = %65
  %67 = load i32*, i32** %11, align 8
  %68 = getelementptr inbounds i32, i32* %67, i32 1
  store i32* %68, i32** %11, align 8
  br label %55

69:                                               ; preds = %63, %55
  %70 = load i32, i32* %10, align 4
  %71 = load i32, i32* %8, align 4
  %72 = call i32 @SetConsoleMode(i32 %70, i32 %71)
  %73 = load i32, i32* %4, align 4
  ret i32 %73
}

declare dso_local i64 @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @ZeroMemory(i32*, i32) #1

declare dso_local i32 @GetStdHandle(i32) #1

declare dso_local i32 @GetConsoleMode(i32, i32*) #1

declare dso_local i32 @SetConsoleMode(i32, i32) #1

declare dso_local i32 @ReadFile(i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @MultiByteToWideChar(i32, i32, i64, i32, i32*, i32) #1

declare dso_local i32 @HeapFree(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
