; ModuleID = '/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_font_tt.c_MeasureText.c'
source_filename = "/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_font_tt.c_MeasureText.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [26 x i8] c" HPDF_TTFont_MeasureText\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i32*, i64, i32, i32, i32, i32, i32, i32*)* @MeasureText to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @MeasureText(i32 %0, i32* %1, i64 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32* %8) #0 {
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i32, align 4
  store i32 %0, i32* %11, align 4
  store i32* %1, i32** %12, align 8
  store i64 %2, i64* %13, align 8
  store i32 %3, i32* %14, align 4
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store i32 %6, i32* %17, align 4
  store i32 %7, i32* %18, align 4
  store i32* %8, i32** %19, align 8
  store i32 0, i32* %20, align 4
  store i64 0, i64* %21, align 8
  %24 = call i32 @HPDF_PTRACE(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  store i64 0, i64* %22, align 8
  br label %25

25:                                               ; preds = %87, %9
  %26 = load i64, i64* %22, align 8
  %27 = load i64, i64* %13, align 8
  %28 = icmp ult i64 %26, %27
  br i1 %28, label %29, label %90

29:                                               ; preds = %25
  %30 = load i32*, i32** %12, align 8
  %31 = load i64, i64* %22, align 8
  %32 = getelementptr inbounds i32, i32* %30, i64 %31
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %23, align 4
  %34 = load i32, i32* %23, align 4
  %35 = call i64 @HPDF_IS_WHITE_SPACE(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %49

37:                                               ; preds = %29
  %38 = load i64, i64* %22, align 8
  %39 = add i64 %38, 1
  store i64 %39, i64* %21, align 8
  %40 = load i32*, i32** %19, align 8
  %41 = icmp ne i32* %40, null
  br i1 %41, label %42, label %45

42:                                               ; preds = %37
  %43 = load i32, i32* %20, align 4
  %44 = load i32*, i32** %19, align 8
  store i32 %43, i32* %44, align 4
  br label %45

45:                                               ; preds = %42, %37
  %46 = load i32, i32* %17, align 4
  %47 = load i32, i32* %20, align 4
  %48 = add nsw i32 %47, %46
  store i32 %48, i32* %20, align 4
  br label %61

49:                                               ; preds = %29
  %50 = load i32, i32* %18, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %60, label %52

52:                                               ; preds = %49
  %53 = load i64, i64* %22, align 8
  store i64 %53, i64* %21, align 8
  %54 = load i32*, i32** %19, align 8
  %55 = icmp ne i32* %54, null
  br i1 %55, label %56, label %59

56:                                               ; preds = %52
  %57 = load i32, i32* %20, align 4
  %58 = load i32*, i32** %19, align 8
  store i32 %57, i32* %58, align 4
  br label %59

59:                                               ; preds = %56, %52
  br label %60

60:                                               ; preds = %59, %49
  br label %61

61:                                               ; preds = %60, %45
  %62 = load i32, i32* %11, align 4
  %63 = load i32, i32* %23, align 4
  %64 = call i64 @CharWidth(i32 %62, i32 %63)
  %65 = trunc i64 %64 to i32
  %66 = load i32, i32* %15, align 4
  %67 = mul nsw i32 %65, %66
  %68 = sdiv i32 %67, 1000
  %69 = load i32, i32* %20, align 4
  %70 = add nsw i32 %69, %68
  store i32 %70, i32* %20, align 4
  %71 = load i32, i32* %20, align 4
  %72 = load i32, i32* %14, align 4
  %73 = icmp sgt i32 %71, %72
  br i1 %73, label %77, label %74

74:                                               ; preds = %61
  %75 = load i32, i32* %23, align 4
  %76 = icmp eq i32 %75, 10
  br i1 %76, label %77, label %79

77:                                               ; preds = %74, %61
  %78 = load i64, i64* %21, align 8
  store i64 %78, i64* %10, align 8
  br label %98

79:                                               ; preds = %74
  %80 = load i64, i64* %22, align 8
  %81 = icmp ugt i64 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %79
  %83 = load i32, i32* %16, align 4
  %84 = load i32, i32* %20, align 4
  %85 = add nsw i32 %84, %83
  store i32 %85, i32* %20, align 4
  br label %86

86:                                               ; preds = %82, %79
  br label %87

87:                                               ; preds = %86
  %88 = load i64, i64* %22, align 8
  %89 = add i64 %88, 1
  store i64 %89, i64* %22, align 8
  br label %25

90:                                               ; preds = %25
  %91 = load i32*, i32** %19, align 8
  %92 = icmp ne i32* %91, null
  br i1 %92, label %93, label %96

93:                                               ; preds = %90
  %94 = load i32, i32* %20, align 4
  %95 = load i32*, i32** %19, align 8
  store i32 %94, i32* %95, align 4
  br label %96

96:                                               ; preds = %93, %90
  %97 = load i64, i64* %13, align 8
  store i64 %97, i64* %10, align 8
  br label %98

98:                                               ; preds = %96, %77
  %99 = load i64, i64* %10, align 8
  ret i64 %99
}

declare dso_local i32 @HPDF_PTRACE(i8*) #1

declare dso_local i64 @HPDF_IS_WHITE_SPACE(i32) #1

declare dso_local i64 @CharWidth(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
