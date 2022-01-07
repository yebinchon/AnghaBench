; ModuleID = '/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_font_type1.c_Type1Font_MeasureText.c'
source_filename = "/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_font_type1.c_Type1Font_MeasureText.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32* }

@.str = private unnamed_addr constant [29 x i8] c" HPDF_Type1Font_MeasureText\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_5__*, i64*, i64, i32, i32, i32, i32, i32, i32*)* @Type1Font_MeasureText to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @Type1Font_MeasureText(%struct.TYPE_5__* %0, i64* %1, i64 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32* %8) #0 {
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_5__*, align 8
  %12 = alloca i64*, align 8
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
  %23 = alloca %struct.TYPE_4__*, align 8
  %24 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %11, align 8
  store i64* %1, i64** %12, align 8
  store i64 %2, i64* %13, align 8
  store i32 %3, i32* %14, align 4
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store i32 %6, i32* %17, align 4
  store i32 %7, i32* %18, align 4
  store i32* %8, i32** %19, align 8
  store i32 0, i32* %20, align 4
  store i64 0, i64* %21, align 8
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = sext i32 %27 to i64
  %29 = inttoptr i64 %28 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %29, %struct.TYPE_4__** %23, align 8
  %30 = call i32 @HPDF_PTRACE(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  store i64 0, i64* %22, align 8
  br label %31

31:                                               ; preds = %95, %9
  %32 = load i64, i64* %22, align 8
  %33 = load i64, i64* %13, align 8
  %34 = icmp ult i64 %32, %33
  br i1 %34, label %35, label %98

35:                                               ; preds = %31
  %36 = load i64*, i64** %12, align 8
  %37 = load i64, i64* %22, align 8
  %38 = getelementptr inbounds i64, i64* %36, i64 %37
  %39 = load i64, i64* %38, align 8
  store i64 %39, i64* %24, align 8
  %40 = load i64, i64* %24, align 8
  %41 = call i64 @HPDF_IS_WHITE_SPACE(i64 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %55

43:                                               ; preds = %35
  %44 = load i64, i64* %22, align 8
  %45 = add i64 %44, 1
  store i64 %45, i64* %21, align 8
  %46 = load i32*, i32** %19, align 8
  %47 = icmp ne i32* %46, null
  br i1 %47, label %48, label %51

48:                                               ; preds = %43
  %49 = load i32, i32* %20, align 4
  %50 = load i32*, i32** %19, align 8
  store i32 %49, i32* %50, align 4
  br label %51

51:                                               ; preds = %48, %43
  %52 = load i32, i32* %17, align 4
  %53 = load i32, i32* %20, align 4
  %54 = add nsw i32 %53, %52
  store i32 %54, i32* %20, align 4
  br label %67

55:                                               ; preds = %35
  %56 = load i32, i32* %18, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %66, label %58

58:                                               ; preds = %55
  %59 = load i64, i64* %22, align 8
  store i64 %59, i64* %21, align 8
  %60 = load i32*, i32** %19, align 8
  %61 = icmp ne i32* %60, null
  br i1 %61, label %62, label %65

62:                                               ; preds = %58
  %63 = load i32, i32* %20, align 4
  %64 = load i32*, i32** %19, align 8
  store i32 %63, i32* %64, align 4
  br label %65

65:                                               ; preds = %62, %58
  br label %66

66:                                               ; preds = %65, %55
  br label %67

67:                                               ; preds = %66, %51
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = load i64, i64* %24, align 8
  %72 = getelementptr inbounds i32, i32* %70, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* %15, align 4
  %75 = mul nsw i32 %73, %74
  %76 = sdiv i32 %75, 1000
  %77 = load i32, i32* %20, align 4
  %78 = add nsw i32 %77, %76
  store i32 %78, i32* %20, align 4
  %79 = load i32, i32* %20, align 4
  %80 = load i32, i32* %14, align 4
  %81 = icmp sgt i32 %79, %80
  br i1 %81, label %85, label %82

82:                                               ; preds = %67
  %83 = load i64, i64* %24, align 8
  %84 = icmp eq i64 %83, 10
  br i1 %84, label %85, label %87

85:                                               ; preds = %82, %67
  %86 = load i64, i64* %21, align 8
  store i64 %86, i64* %10, align 8
  br label %106

87:                                               ; preds = %82
  %88 = load i64, i64* %22, align 8
  %89 = icmp ugt i64 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %87
  %91 = load i32, i32* %16, align 4
  %92 = load i32, i32* %20, align 4
  %93 = add nsw i32 %92, %91
  store i32 %93, i32* %20, align 4
  br label %94

94:                                               ; preds = %90, %87
  br label %95

95:                                               ; preds = %94
  %96 = load i64, i64* %22, align 8
  %97 = add i64 %96, 1
  store i64 %97, i64* %22, align 8
  br label %31

98:                                               ; preds = %31
  %99 = load i32*, i32** %19, align 8
  %100 = icmp ne i32* %99, null
  br i1 %100, label %101, label %104

101:                                              ; preds = %98
  %102 = load i32, i32* %20, align 4
  %103 = load i32*, i32** %19, align 8
  store i32 %102, i32* %103, align 4
  br label %104

104:                                              ; preds = %101, %98
  %105 = load i64, i64* %13, align 8
  store i64 %105, i64* %10, align 8
  br label %106

106:                                              ; preds = %104, %85
  %107 = load i64, i64* %10, align 8
  ret i64 %107
}

declare dso_local i32 @HPDF_PTRACE(i8*) #1

declare dso_local i64 @HPDF_IS_WHITE_SPACE(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
