; ModuleID = '/home/carl/AnghaBench/openpilot/phonelibs/nanovg/extr_fontstash.h_fons__blurRows.c'
source_filename = "/home/carl/AnghaBench/openpilot/phonelibs/nanovg/extr_fontstash.h_fons__blurRows.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ZPREC = common dso_local global i32 0, align 4
@APREC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i32, i32, i32)* @fons__blurRows to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fons__blurRows(i8* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %14

14:                                               ; preds = %104, %5
  %15 = load i32, i32* %11, align 4
  %16 = load i32, i32* %7, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %107

18:                                               ; preds = %14
  store i32 0, i32* %13, align 4
  %19 = load i32, i32* %9, align 4
  store i32 %19, i32* %12, align 4
  br label %20

20:                                               ; preds = %51, %18
  %21 = load i32, i32* %12, align 4
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* %9, align 4
  %24 = mul nsw i32 %22, %23
  %25 = icmp slt i32 %21, %24
  br i1 %25, label %26, label %55

26:                                               ; preds = %20
  %27 = load i32, i32* %10, align 4
  %28 = load i8*, i8** %6, align 8
  %29 = load i32, i32* %12, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i8, i8* %28, i64 %30
  %32 = load i8, i8* %31, align 1
  %33 = zext i8 %32 to i32
  %34 = load i32, i32* @ZPREC, align 4
  %35 = shl i32 %33, %34
  %36 = load i32, i32* %13, align 4
  %37 = sub nsw i32 %35, %36
  %38 = mul nsw i32 %27, %37
  %39 = load i32, i32* @APREC, align 4
  %40 = ashr i32 %38, %39
  %41 = load i32, i32* %13, align 4
  %42 = add nsw i32 %41, %40
  store i32 %42, i32* %13, align 4
  %43 = load i32, i32* %13, align 4
  %44 = load i32, i32* @ZPREC, align 4
  %45 = ashr i32 %43, %44
  %46 = trunc i32 %45 to i8
  %47 = load i8*, i8** %6, align 8
  %48 = load i32, i32* %12, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i8, i8* %47, i64 %49
  store i8 %46, i8* %50, align 1
  br label %51

51:                                               ; preds = %26
  %52 = load i32, i32* %9, align 4
  %53 = load i32, i32* %12, align 4
  %54 = add nsw i32 %53, %52
  store i32 %54, i32* %12, align 4
  br label %20

55:                                               ; preds = %20
  %56 = load i8*, i8** %6, align 8
  %57 = load i32, i32* %8, align 4
  %58 = sub nsw i32 %57, 1
  %59 = load i32, i32* %9, align 4
  %60 = mul nsw i32 %58, %59
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i8, i8* %56, i64 %61
  store i8 0, i8* %62, align 1
  store i32 0, i32* %13, align 4
  %63 = load i32, i32* %8, align 4
  %64 = sub nsw i32 %63, 2
  %65 = load i32, i32* %9, align 4
  %66 = mul nsw i32 %64, %65
  store i32 %66, i32* %12, align 4
  br label %67

67:                                               ; preds = %95, %55
  %68 = load i32, i32* %12, align 4
  %69 = icmp sge i32 %68, 0
  br i1 %69, label %70, label %99

70:                                               ; preds = %67
  %71 = load i32, i32* %10, align 4
  %72 = load i8*, i8** %6, align 8
  %73 = load i32, i32* %12, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i8, i8* %72, i64 %74
  %76 = load i8, i8* %75, align 1
  %77 = zext i8 %76 to i32
  %78 = load i32, i32* @ZPREC, align 4
  %79 = shl i32 %77, %78
  %80 = load i32, i32* %13, align 4
  %81 = sub nsw i32 %79, %80
  %82 = mul nsw i32 %71, %81
  %83 = load i32, i32* @APREC, align 4
  %84 = ashr i32 %82, %83
  %85 = load i32, i32* %13, align 4
  %86 = add nsw i32 %85, %84
  store i32 %86, i32* %13, align 4
  %87 = load i32, i32* %13, align 4
  %88 = load i32, i32* @ZPREC, align 4
  %89 = ashr i32 %87, %88
  %90 = trunc i32 %89 to i8
  %91 = load i8*, i8** %6, align 8
  %92 = load i32, i32* %12, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i8, i8* %91, i64 %93
  store i8 %90, i8* %94, align 1
  br label %95

95:                                               ; preds = %70
  %96 = load i32, i32* %9, align 4
  %97 = load i32, i32* %12, align 4
  %98 = sub nsw i32 %97, %96
  store i32 %98, i32* %12, align 4
  br label %67

99:                                               ; preds = %67
  %100 = load i8*, i8** %6, align 8
  %101 = getelementptr inbounds i8, i8* %100, i64 0
  store i8 0, i8* %101, align 1
  %102 = load i8*, i8** %6, align 8
  %103 = getelementptr inbounds i8, i8* %102, i32 1
  store i8* %103, i8** %6, align 8
  br label %104

104:                                              ; preds = %99
  %105 = load i32, i32* %11, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %11, align 4
  br label %14

107:                                              ; preds = %14
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
