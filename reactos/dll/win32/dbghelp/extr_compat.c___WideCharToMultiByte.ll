; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_compat.c___WideCharToMultiByte.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_compat.c___WideCharToMultiByte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ERROR_INVALID_PARAMETER = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__WideCharToMultiByte(i32 %0, i32 %1, i32* %2, i32 %3, i32* %4, i32 %5, i32 %6, i32* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  store i32 %0, i32* %10, align 4
  store i32 %1, i32* %11, align 4
  store i32* %2, i32** %12, align 8
  store i32 %3, i32* %13, align 4
  store i32* %4, i32** %14, align 8
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32* %7, i32** %17, align 8
  %19 = load i32*, i32** %12, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %30

21:                                               ; preds = %8
  %22 = load i32, i32* %13, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %21
  %25 = load i32*, i32** %14, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %33, label %27

27:                                               ; preds = %24
  %28 = load i32, i32* %15, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %27, %21, %8
  %31 = load i32, i32* @ERROR_INVALID_PARAMETER, align 4
  %32 = call i32 @SetLastError(i32 %31)
  store i32 0, i32* %9, align 4
  br label %78

33:                                               ; preds = %27, %24
  %34 = load i32, i32* %13, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %33
  %37 = load i32*, i32** %12, align 8
  %38 = call i32 @strlenW(i32* %37)
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %13, align 4
  br label %40

40:                                               ; preds = %36, %33
  %41 = load i32, i32* %15, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %45, label %43

43:                                               ; preds = %40
  %44 = load i32, i32* %13, align 4
  store i32 %44, i32* %9, align 4
  br label %78

45:                                               ; preds = %40
  store i32 0, i32* %18, align 4
  br label %46

46:                                               ; preds = %67, %45
  %47 = load i32, i32* %18, align 4
  %48 = load i32, i32* %13, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %54

50:                                               ; preds = %46
  %51 = load i32, i32* %18, align 4
  %52 = load i32, i32* %15, align 4
  %53 = icmp slt i32 %51, %52
  br label %54

54:                                               ; preds = %50, %46
  %55 = phi i1 [ false, %46 ], [ %53, %50 ]
  br i1 %55, label %56, label %70

56:                                               ; preds = %54
  %57 = load i32*, i32** %12, align 8
  %58 = load i32, i32* %18, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = and i32 %61, 255
  %63 = load i32*, i32** %14, align 8
  %64 = load i32, i32* %18, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  store i32 %62, i32* %66, align 4
  br label %67

67:                                               ; preds = %56
  %68 = load i32, i32* %18, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %18, align 4
  br label %46

70:                                               ; preds = %54
  %71 = load i32*, i32** %17, align 8
  %72 = icmp ne i32* %71, null
  br i1 %72, label %73, label %76

73:                                               ; preds = %70
  %74 = load i32, i32* @FALSE, align 4
  %75 = load i32*, i32** %17, align 8
  store i32 %74, i32* %75, align 4
  br label %76

76:                                               ; preds = %73, %70
  %77 = load i32, i32* %18, align 4
  store i32 %77, i32* %9, align 4
  br label %78

78:                                               ; preds = %76, %43, %30
  %79 = load i32, i32* %9, align 4
  ret i32 %79
}

declare dso_local i32 @SetLastError(i32) #1

declare dso_local i32 @strlenW(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
