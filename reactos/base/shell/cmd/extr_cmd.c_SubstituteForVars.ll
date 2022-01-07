; ModuleID = '/home/carl/AnghaBench/reactos/base/shell/cmd/extr_cmd.c_SubstituteForVars.c'
source_filename = "/home/carl/AnghaBench/reactos/base/shell/cmd/extr_cmd.c_SubstituteForVars.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CMDLINE_LENGTH = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @SubstituteForVars(i64* %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  store i64* %0, i64** %4, align 8
  store i64* %1, i64** %5, align 8
  %10 = load i64*, i64** %5, align 8
  %11 = load i32, i32* @CMDLINE_LENGTH, align 4
  %12 = sub nsw i32 %11, 1
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i64, i64* %10, i64 %13
  store i64* %14, i64** %6, align 8
  br label %15

15:                                               ; preds = %68, %56, %2
  %16 = load i64*, i64** %4, align 8
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %74

19:                                               ; preds = %15
  %20 = load i64*, i64** %4, align 8
  %21 = getelementptr inbounds i64, i64* %20, i64 0
  %22 = load i64, i64* %21, align 8
  %23 = call i64 @_T(i8 signext 37)
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %62

25:                                               ; preds = %19
  %26 = load i64*, i64** %4, align 8
  %27 = getelementptr inbounds i64, i64* %26, i64 2
  store i64* %27, i64** %8, align 8
  store i64* null, i64** %9, align 8
  %28 = load i64*, i64** %4, align 8
  %29 = getelementptr inbounds i64, i64* %28, i64 1
  %30 = load i64, i64* %29, align 8
  %31 = call i64 @_T(i8 signext 126)
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %25
  %34 = call i64* @GetEnhancedVar(i64** %8, i64* (i64, i32*)* @FindForVar)
  store i64* %34, i64** %9, align 8
  br label %35

35:                                               ; preds = %33, %25
  %36 = load i64*, i64** %9, align 8
  %37 = icmp ne i64* %36, null
  br i1 %37, label %43, label %38

38:                                               ; preds = %35
  %39 = load i64*, i64** %4, align 8
  %40 = getelementptr inbounds i64, i64* %39, i64 1
  %41 = load i64, i64* %40, align 8
  %42 = call i64* @FindForVar(i64 %41, i32* %7)
  store i64* %42, i64** %9, align 8
  br label %43

43:                                               ; preds = %38, %35
  %44 = load i64*, i64** %9, align 8
  %45 = icmp ne i64* %44, null
  br i1 %45, label %46, label %61

46:                                               ; preds = %43
  %47 = load i64*, i64** %5, align 8
  %48 = load i64*, i64** %9, align 8
  %49 = call i32 @_tcslen(i64* %48)
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i64, i64* %47, i64 %50
  %52 = load i64*, i64** %6, align 8
  %53 = icmp ugt i64* %51, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %46
  %55 = load i32, i32* @FALSE, align 4
  store i32 %55, i32* %3, align 4
  br label %78

56:                                               ; preds = %46
  %57 = load i64*, i64** %5, align 8
  %58 = load i64*, i64** %9, align 8
  %59 = call i64* @_stpcpy(i64* %57, i64* %58)
  store i64* %59, i64** %5, align 8
  %60 = load i64*, i64** %8, align 8
  store i64* %60, i64** %4, align 8
  br label %15

61:                                               ; preds = %43
  br label %62

62:                                               ; preds = %61, %19
  %63 = load i64*, i64** %5, align 8
  %64 = load i64*, i64** %6, align 8
  %65 = icmp uge i64* %63, %64
  br i1 %65, label %66, label %68

66:                                               ; preds = %62
  %67 = load i32, i32* @FALSE, align 4
  store i32 %67, i32* %3, align 4
  br label %78

68:                                               ; preds = %62
  %69 = load i64*, i64** %4, align 8
  %70 = getelementptr inbounds i64, i64* %69, i32 1
  store i64* %70, i64** %4, align 8
  %71 = load i64, i64* %69, align 8
  %72 = load i64*, i64** %5, align 8
  %73 = getelementptr inbounds i64, i64* %72, i32 1
  store i64* %73, i64** %5, align 8
  store i64 %71, i64* %72, align 8
  br label %15

74:                                               ; preds = %15
  %75 = call i64 @_T(i8 signext 0)
  %76 = load i64*, i64** %5, align 8
  store i64 %75, i64* %76, align 8
  %77 = load i32, i32* @TRUE, align 4
  store i32 %77, i32* %3, align 4
  br label %78

78:                                               ; preds = %74, %66, %54
  %79 = load i32, i32* %3, align 4
  ret i32 %79
}

declare dso_local i64 @_T(i8 signext) #1

declare dso_local i64* @GetEnhancedVar(i64**, i64* (i64, i32*)*) #1

declare dso_local i64* @FindForVar(i64, i32*) #1

declare dso_local i32 @_tcslen(i64*) #1

declare dso_local i64* @_stpcpy(i64*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
