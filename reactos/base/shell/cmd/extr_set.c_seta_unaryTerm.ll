; ModuleID = '/home/carl/AnghaBench/reactos/base/shell/cmd/extr_set.c_seta_unaryTerm.c'
source_filename = "/home/carl/AnghaBench/reactos/base/shell/cmd/extr_set.c_seta_unaryTerm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4
@STRING_EXPECTED_CLOSE_PAREN = common dso_local global i32 0, align 4
@STRING_EXPECTED_NUMBER_OR_VARIABLE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64**, i32*)* @seta_unaryTerm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @seta_unaryTerm(i64** %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64**, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i64** %0, i64*** %4, align 8
  store i32* %1, i32** %5, align 8
  %10 = load i64**, i64*** %4, align 8
  %11 = load i64*, i64** %10, align 8
  store i64* %11, i64** %6, align 8
  %12 = load i64*, i64** %6, align 8
  %13 = load i64, i64* %12, align 8
  %14 = call i64 @_T(i8 signext 40)
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %37

16:                                               ; preds = %2
  %17 = load i64*, i64** %6, align 8
  %18 = getelementptr inbounds i64, i64* %17, i64 1
  %19 = call i64* @skip_ws(i64* %18)
  store i64* %19, i64** %6, align 8
  %20 = call i32 @seta_stmt(i64** %6, i32* %7)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %16
  %23 = load i32, i32* @FALSE, align 4
  store i32 %23, i32* %3, align 4
  br label %71

24:                                               ; preds = %16
  %25 = load i64*, i64** %6, align 8
  %26 = getelementptr inbounds i64, i64* %25, i32 1
  store i64* %26, i64** %6, align 8
  %27 = load i64, i64* %25, align 8
  %28 = call i64 @_T(i8 signext 41)
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %24
  %31 = load i32, i32* @STRING_EXPECTED_CLOSE_PAREN, align 4
  %32 = call i32 @ConErrResPuts(i32 %31)
  %33 = load i32, i32* @FALSE, align 4
  store i32 %33, i32* %3, align 4
  br label %71

34:                                               ; preds = %24
  %35 = load i32, i32* %7, align 4
  %36 = load i32*, i32** %5, align 8
  store i32 %35, i32* %36, align 4
  br label %66

37:                                               ; preds = %2
  %38 = load i64*, i64** %6, align 8
  %39 = load i64, i64* %38, align 8
  %40 = call i64 @isdigit(i64 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %37
  %43 = load i64*, i64** %6, align 8
  %44 = bitcast i64** %6 to i32*
  %45 = call i32 @_tcstol(i64* %43, i32* %44, i32 0)
  %46 = load i32*, i32** %5, align 8
  store i32 %45, i32* %46, align 4
  br label %65

47:                                               ; preds = %37
  %48 = load i64*, i64** %6, align 8
  %49 = load i64, i64* %48, align 8
  %50 = call i64 @__iscsymf(i64 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %60

52:                                               ; preds = %47
  %53 = load i32, i32* %8, align 4
  %54 = load i32, i32* %9, align 4
  %55 = load i64*, i64** %6, align 8
  %56 = call i32 @PARSE_IDENT(i32 %53, i32 %54, i64* %55)
  %57 = load i32, i32* %8, align 4
  %58 = call i32 @seta_identval(i32 %57)
  %59 = load i32*, i32** %5, align 8
  store i32 %58, i32* %59, align 4
  br label %64

60:                                               ; preds = %47
  %61 = load i32, i32* @STRING_EXPECTED_NUMBER_OR_VARIABLE, align 4
  %62 = call i32 @ConErrResPuts(i32 %61)
  %63 = load i32, i32* @FALSE, align 4
  store i32 %63, i32* %3, align 4
  br label %71

64:                                               ; preds = %52
  br label %65

65:                                               ; preds = %64, %42
  br label %66

66:                                               ; preds = %65, %34
  %67 = load i64*, i64** %6, align 8
  %68 = call i64* @skip_ws(i64* %67)
  %69 = load i64**, i64*** %4, align 8
  store i64* %68, i64** %69, align 8
  %70 = load i32, i32* @TRUE, align 4
  store i32 %70, i32* %3, align 4
  br label %71

71:                                               ; preds = %66, %60, %30, %22
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare dso_local i64 @_T(i8 signext) #1

declare dso_local i64* @skip_ws(i64*) #1

declare dso_local i32 @seta_stmt(i64**, i32*) #1

declare dso_local i32 @ConErrResPuts(i32) #1

declare dso_local i64 @isdigit(i64) #1

declare dso_local i32 @_tcstol(i64*, i32*, i32) #1

declare dso_local i64 @__iscsymf(i64) #1

declare dso_local i32 @PARSE_IDENT(i32, i32, i64*) #1

declare dso_local i32 @seta_identval(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
