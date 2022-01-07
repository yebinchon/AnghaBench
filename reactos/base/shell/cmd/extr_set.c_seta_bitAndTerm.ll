; ModuleID = '/home/carl/AnghaBench/reactos/base/shell/cmd/extr_set.c_seta_bitAndTerm.c'
source_filename = "/home/carl/AnghaBench/reactos/base/shell/cmd/extr_set.c_seta_bitAndTerm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"<>\00", align 1
@STRING_INVALID_OPERAND = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64**, i32*)* @seta_bitAndTerm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @seta_bitAndTerm(i64** %0, i32* %1) #0 {
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
  %12 = call i32 @seta_logShiftTerm(i64** %6, i32* %7)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @FALSE, align 4
  store i32 %15, i32* %3, align 4
  br label %78

16:                                               ; preds = %2
  br label %17

17:                                               ; preds = %71, %16
  %18 = load i64*, i64** %6, align 8
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %35

21:                                               ; preds = %17
  %22 = call i32 @_T(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %23 = load i64*, i64** %6, align 8
  %24 = load i64, i64* %23, align 8
  %25 = call i64 @_tcschr(i32 %22, i64 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %21
  %28 = load i64*, i64** %6, align 8
  %29 = getelementptr inbounds i64, i64* %28, i64 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64*, i64** %6, align 8
  %32 = getelementptr inbounds i64, i64* %31, i64 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp eq i64 %30, %33
  br label %35

35:                                               ; preds = %27, %21, %17
  %36 = phi i1 [ false, %21 ], [ false, %17 ], [ %34, %27 ]
  br i1 %36, label %37, label %72

37:                                               ; preds = %35
  %38 = load i64*, i64** %6, align 8
  %39 = load i64, i64* %38, align 8
  %40 = trunc i64 %39 to i32
  store i32 %40, i32* %9, align 4
  %41 = load i64*, i64** %6, align 8
  %42 = getelementptr inbounds i64, i64* %41, i64 2
  %43 = call i64* @skip_ws(i64* %42)
  store i64* %43, i64** %6, align 8
  %44 = call i32 @seta_logShiftTerm(i64** %6, i32* %8)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %37
  %47 = load i32, i32* @FALSE, align 4
  store i32 %47, i32* %3, align 4
  br label %78

48:                                               ; preds = %37
  %49 = load i32, i32* %9, align 4
  switch i32 %49, label %67 [
    i32 60, label %50
    i32 62, label %63
  ]

50:                                               ; preds = %48
  %51 = load i32, i32* %8, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %57, label %53

53:                                               ; preds = %50
  %54 = load i32, i32* %8, align 4
  %55 = sext i32 %54 to i64
  %56 = icmp uge i64 %55, 32
  br i1 %56, label %57, label %58

57:                                               ; preds = %53, %50
  store i32 0, i32* %7, align 4
  br label %62

58:                                               ; preds = %53
  %59 = load i32, i32* %8, align 4
  %60 = load i32, i32* %7, align 4
  %61 = shl i32 %60, %59
  store i32 %61, i32* %7, align 4
  br label %62

62:                                               ; preds = %58, %57
  br label %71

63:                                               ; preds = %48
  %64 = load i32, i32* %8, align 4
  %65 = load i32, i32* %7, align 4
  %66 = ashr i32 %65, %64
  store i32 %66, i32* %7, align 4
  br label %71

67:                                               ; preds = %48
  %68 = load i32, i32* @STRING_INVALID_OPERAND, align 4
  %69 = call i32 @ConErrResPuts(i32 %68)
  %70 = load i32, i32* @FALSE, align 4
  store i32 %70, i32* %3, align 4
  br label %78

71:                                               ; preds = %63, %62
  br label %17

72:                                               ; preds = %35
  %73 = load i32, i32* %7, align 4
  %74 = load i32*, i32** %5, align 8
  store i32 %73, i32* %74, align 4
  %75 = load i64*, i64** %6, align 8
  %76 = load i64**, i64*** %4, align 8
  store i64* %75, i64** %76, align 8
  %77 = load i32, i32* @TRUE, align 4
  store i32 %77, i32* %3, align 4
  br label %78

78:                                               ; preds = %72, %67, %46, %14
  %79 = load i32, i32* %3, align 4
  ret i32 %79
}

declare dso_local i32 @seta_logShiftTerm(i64**, i32*) #1

declare dso_local i64 @_tcschr(i32, i64) #1

declare dso_local i32 @_T(i8*) #1

declare dso_local i64* @skip_ws(i64*) #1

declare dso_local i32 @ConErrResPuts(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
