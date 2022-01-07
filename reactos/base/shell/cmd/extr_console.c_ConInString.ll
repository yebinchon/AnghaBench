; ModuleID = '/home/carl/AnghaBench/reactos/base/shell/cmd/extr_console.c_ConInString.c'
source_filename = "/home/carl/AnghaBench/reactos/base/shell/cmd/extr_console.c_ConInString.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@STD_INPUT_HANDLE = common dso_local global i32 0, align 4
@ENABLE_LINE_INPUT = common dso_local global i32 0, align 4
@ENABLE_ECHO_INPUT = common dso_local global i32 0, align 4
@InputCodePage = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ConInString(i64* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  store i64* %0, i64** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %7, align 4
  %11 = load i64*, i64** %4, align 8
  store i64* %11, i64** %10, align 8
  %12 = load i64*, i64** %4, align 8
  %13 = load i32, i32* %5, align 4
  %14 = sext i32 %13 to i64
  %15 = mul i64 %14, 4
  %16 = trunc i64 %15 to i32
  %17 = call i32 @ZeroMemory(i64* %12, i32 %16)
  %18 = load i32, i32* @STD_INPUT_HANDLE, align 4
  %19 = call i32 @GetStdHandle(i32 %18)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = call i32 @GetConsoleMode(i32 %20, i32* %6)
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* @ENABLE_LINE_INPUT, align 4
  %24 = load i32, i32* @ENABLE_ECHO_INPUT, align 4
  %25 = or i32 %23, %24
  %26 = call i32 @SetConsoleMode(i32 %22, i32 %25)
  %27 = load i32, i32* %8, align 4
  %28 = load i64*, i64** %10, align 8
  %29 = ptrtoint i64* %28 to i32
  %30 = load i32, i32* %5, align 4
  %31 = sub nsw i32 %30, 1
  %32 = call i32 @ReadFile(i32 %27, i32 %29, i32 %31, i32* %7, i32* null)
  %33 = load i64*, i64** %4, align 8
  store i64* %33, i64** %9, align 8
  br label %34

34:                                               ; preds = %47, %2
  %35 = load i64*, i64** %9, align 8
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %50

38:                                               ; preds = %34
  %39 = load i64*, i64** %9, align 8
  %40 = load i64, i64* %39, align 8
  %41 = call i64 @_T(i8 signext 13)
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %38
  %44 = call i64 @_T(i8 signext 0)
  %45 = load i64*, i64** %9, align 8
  store i64 %44, i64* %45, align 8
  br label %50

46:                                               ; preds = %38
  br label %47

47:                                               ; preds = %46
  %48 = load i64*, i64** %9, align 8
  %49 = getelementptr inbounds i64, i64* %48, i32 1
  store i64* %49, i64** %9, align 8
  br label %34

50:                                               ; preds = %43, %34
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* %6, align 4
  %53 = call i32 @SetConsoleMode(i32 %51, i32 %52)
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local i32 @ZeroMemory(i64*, i32) #1

declare dso_local i32 @GetStdHandle(i32) #1

declare dso_local i32 @GetConsoleMode(i32, i32*) #1

declare dso_local i32 @SetConsoleMode(i32, i32) #1

declare dso_local i32 @ReadFile(i32, i32, i32, i32*, i32*) #1

declare dso_local i64 @_T(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
