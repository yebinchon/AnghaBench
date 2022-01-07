; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/cmdutils/label/extr_label.c_ConInString.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/cmdutils/label/extr_label.c_ConInString.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@HEAP_ZERO_MEMORY = common dso_local global i32 0, align 4
@STD_INPUT_HANDLE = common dso_local global i32 0, align 4
@ENABLE_LINE_INPUT = common dso_local global i32 0, align 4
@ENABLE_ECHO_INPUT = common dso_local global i32 0, align 4
@UNICODE_NULL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @ConInString to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ConInString(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %7, align 4
  %11 = call i32 (...) @GetProcessHeap()
  %12 = load i32, i32* @HEAP_ZERO_MEMORY, align 4
  %13 = load i32, i32* %5, align 4
  %14 = sub nsw i32 %13, 1
  %15 = call i64 @HeapAlloc(i32 %11, i32 %12, i32 %14)
  store i64 %15, i64* %10, align 8
  %16 = load i32, i32* @STD_INPUT_HANDLE, align 4
  %17 = call i32 @GetStdHandle(i32 %16)
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = call i32 @GetConsoleMode(i32 %18, i32* %6)
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* @ENABLE_LINE_INPUT, align 4
  %22 = load i32, i32* @ENABLE_ECHO_INPUT, align 4
  %23 = or i32 %21, %22
  %24 = call i32 @SetConsoleMode(i32 %20, i32 %23)
  %25 = load i32, i32* %8, align 4
  %26 = load i64, i64* %10, align 8
  %27 = trunc i64 %26 to i32
  %28 = load i32, i32* %5, align 4
  %29 = sub nsw i32 %28, 1
  %30 = call i32 @ReadFile(i32 %25, i32 %27, i32 %29, i32* %7, i32* null)
  %31 = call i32 (...) @GetConsoleCP()
  %32 = load i64, i64* %10, align 8
  %33 = load i32, i32* %7, align 4
  %34 = load i32*, i32** %4, align 8
  %35 = load i32, i32* %5, align 4
  %36 = sub nsw i32 %35, 1
  %37 = call i32 @MultiByteToWideChar(i32 %31, i32 0, i64 %32, i32 %33, i32* %34, i32 %36)
  %38 = call i32 (...) @GetProcessHeap()
  %39 = load i64, i64* %10, align 8
  %40 = call i32 @HeapFree(i32 %38, i32 0, i64 %39)
  %41 = load i32*, i32** %4, align 8
  store i32* %41, i32** %9, align 8
  br label %42

42:                                               ; preds = %54, %2
  %43 = load i32*, i32** %9, align 8
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %57

46:                                               ; preds = %42
  %47 = load i32*, i32** %9, align 8
  %48 = load i32, i32* %47, align 4
  %49 = icmp eq i32 %48, 13
  br i1 %49, label %50, label %53

50:                                               ; preds = %46
  %51 = load i32, i32* @UNICODE_NULL, align 4
  %52 = load i32*, i32** %9, align 8
  store i32 %51, i32* %52, align 4
  br label %57

53:                                               ; preds = %46
  br label %54

54:                                               ; preds = %53
  %55 = load i32*, i32** %9, align 8
  %56 = getelementptr inbounds i32, i32* %55, i32 1
  store i32* %56, i32** %9, align 8
  br label %42

57:                                               ; preds = %50, %42
  %58 = load i32, i32* %8, align 4
  %59 = load i32, i32* %6, align 4
  %60 = call i32 @SetConsoleMode(i32 %58, i32 %59)
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local i64 @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @GetStdHandle(i32) #1

declare dso_local i32 @GetConsoleMode(i32, i32*) #1

declare dso_local i32 @SetConsoleMode(i32, i32) #1

declare dso_local i32 @ReadFile(i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @MultiByteToWideChar(i32, i32, i64, i32, i32*, i32) #1

declare dso_local i32 @GetConsoleCP(...) #1

declare dso_local i32 @HeapFree(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
