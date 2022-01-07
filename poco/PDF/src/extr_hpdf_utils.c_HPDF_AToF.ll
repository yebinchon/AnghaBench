; ModuleID = '/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_utils.c_HPDF_AToF.c'
source_filename = "/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_utils.c_HPDF_AToF.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@HPDF_FALSE = common dso_local global i64 0, align 8
@HPDF_TRUE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @HPDF_AToF(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %7 = load i64, i64* @HPDF_FALSE, align 8
  store i64 %7, i64* %3, align 8
  store i32 0, i32* %4, align 4
  store i32 1, i32* %6, align 4
  br label %8

8:                                                ; preds = %30, %1
  %9 = load i8*, i8** %2, align 8
  %10 = load i8, i8* %9, align 1
  %11 = icmp ne i8 %10, 0
  br i1 %11, label %12, label %31

12:                                               ; preds = %8
  %13 = load i8*, i8** %2, align 8
  %14 = load i8, i8* %13, align 1
  %15 = call i64 @HPDF_IS_WHITE_SPACE(i8 signext %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %12
  %18 = load i8*, i8** %2, align 8
  %19 = getelementptr inbounds i8, i8* %18, i32 1
  store i8* %19, i8** %2, align 8
  br label %30

20:                                               ; preds = %12
  %21 = load i8*, i8** %2, align 8
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp eq i32 %23, 45
  br i1 %24, label %25, label %29

25:                                               ; preds = %20
  %26 = load i64, i64* @HPDF_TRUE, align 8
  store i64 %26, i64* %3, align 8
  %27 = load i8*, i8** %2, align 8
  %28 = getelementptr inbounds i8, i8* %27, i32 1
  store i8* %28, i8** %2, align 8
  br label %29

29:                                               ; preds = %25, %20
  br label %31

30:                                               ; preds = %17
  br label %8

31:                                               ; preds = %29, %8
  br label %32

32:                                               ; preds = %48, %31
  %33 = load i8*, i8** %2, align 8
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp sge i32 %35, 48
  br i1 %36, label %37, label %42

37:                                               ; preds = %32
  %38 = load i8*, i8** %2, align 8
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp sle i32 %40, 57
  br label %42

42:                                               ; preds = %37, %32
  %43 = phi i1 [ false, %32 ], [ %41, %37 ]
  br i1 %43, label %44, label %59

44:                                               ; preds = %42
  %45 = load i32, i32* %4, align 4
  %46 = icmp sgt i32 %45, 3276
  br i1 %46, label %47, label %48

47:                                               ; preds = %44
  br label %59

48:                                               ; preds = %44
  %49 = load i32, i32* %4, align 4
  %50 = mul nsw i32 %49, 10
  store i32 %50, i32* %4, align 4
  %51 = load i8*, i8** %2, align 8
  %52 = load i8, i8* %51, align 1
  %53 = sext i8 %52 to i32
  %54 = sub nsw i32 %53, 48
  %55 = load i32, i32* %4, align 4
  %56 = add nsw i32 %55, %54
  store i32 %56, i32* %4, align 4
  %57 = load i8*, i8** %2, align 8
  %58 = getelementptr inbounds i8, i8* %57, i32 1
  store i8* %58, i8** %2, align 8
  br label %32

59:                                               ; preds = %47, %42
  %60 = load i8*, i8** %2, align 8
  %61 = load i8, i8* %60, align 1
  %62 = sext i8 %61 to i32
  %63 = icmp eq i32 %62, 46
  br i1 %63, label %64, label %97

64:                                               ; preds = %59
  %65 = load i8*, i8** %2, align 8
  %66 = getelementptr inbounds i8, i8* %65, i32 1
  store i8* %66, i8** %2, align 8
  br label %67

67:                                               ; preds = %83, %64
  %68 = load i8*, i8** %2, align 8
  %69 = load i8, i8* %68, align 1
  %70 = sext i8 %69 to i32
  %71 = icmp sge i32 %70, 48
  br i1 %71, label %72, label %77

72:                                               ; preds = %67
  %73 = load i8*, i8** %2, align 8
  %74 = load i8, i8* %73, align 1
  %75 = sext i8 %74 to i32
  %76 = icmp sle i32 %75, 57
  br label %77

77:                                               ; preds = %72, %67
  %78 = phi i1 [ false, %67 ], [ %76, %72 ]
  br i1 %78, label %79, label %96

79:                                               ; preds = %77
  %80 = load i32, i32* %4, align 4
  %81 = icmp sgt i32 %80, 214748364
  br i1 %81, label %82, label %83

82:                                               ; preds = %79
  br label %96

83:                                               ; preds = %79
  %84 = load i32, i32* %4, align 4
  %85 = mul nsw i32 %84, 10
  store i32 %85, i32* %4, align 4
  %86 = load i8*, i8** %2, align 8
  %87 = load i8, i8* %86, align 1
  %88 = sext i8 %87 to i32
  %89 = sub nsw i32 %88, 48
  %90 = load i32, i32* %4, align 4
  %91 = add nsw i32 %90, %89
  store i32 %91, i32* %4, align 4
  %92 = load i8*, i8** %2, align 8
  %93 = getelementptr inbounds i8, i8* %92, i32 1
  store i8* %93, i8** %2, align 8
  %94 = load i32, i32* %6, align 4
  %95 = mul nsw i32 %94, 10
  store i32 %95, i32* %6, align 4
  br label %67

96:                                               ; preds = %82, %77
  br label %97

97:                                               ; preds = %96, %59
  %98 = load i32, i32* %4, align 4
  %99 = load i32, i32* %6, align 4
  %100 = sdiv i32 %98, %99
  store i32 %100, i32* %5, align 4
  %101 = load i64, i64* %3, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %97
  %104 = load i32, i32* %5, align 4
  %105 = mul nsw i32 %104, -1
  store i32 %105, i32* %5, align 4
  br label %106

106:                                              ; preds = %103, %97
  %107 = load i32, i32* %5, align 4
  ret i32 %107
}

declare dso_local i64 @HPDF_IS_WHITE_SPACE(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
