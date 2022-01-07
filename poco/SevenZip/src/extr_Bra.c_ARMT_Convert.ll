; ModuleID = '/home/carl/AnghaBench/poco/SevenZip/src/extr_Bra.c_ARMT_Convert.c'
source_filename = "/home/carl/AnghaBench/poco/SevenZip/src/extr_Bra.c_ARMT_Convert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ARMT_Convert(i32* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp slt i32 %13, 4
  br i1 %14, label %15, label %16

15:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %134

16:                                               ; preds = %4
  %17 = load i32, i32* %7, align 4
  %18 = sub nsw i32 %17, 4
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %8, align 4
  %20 = add nsw i32 %19, 4
  store i32 %20, i32* %8, align 4
  store i32 0, i32* %10, align 4
  br label %21

21:                                               ; preds = %129, %16
  %22 = load i32, i32* %10, align 4
  %23 = load i32, i32* %7, align 4
  %24 = icmp sle i32 %22, %23
  br i1 %24, label %25, label %132

25:                                               ; preds = %21
  %26 = load i32*, i32** %6, align 8
  %27 = load i32, i32* %10, align 4
  %28 = add nsw i32 %27, 1
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %26, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = and i32 %31, 248
  %33 = icmp eq i32 %32, 240
  br i1 %33, label %34, label %128

34:                                               ; preds = %25
  %35 = load i32*, i32** %6, align 8
  %36 = load i32, i32* %10, align 4
  %37 = add nsw i32 %36, 3
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %35, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = and i32 %40, 248
  %42 = icmp eq i32 %41, 248
  br i1 %42, label %43, label %128

43:                                               ; preds = %34
  %44 = load i32*, i32** %6, align 8
  %45 = load i32, i32* %10, align 4
  %46 = add nsw i32 %45, 1
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %44, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = and i32 %49, 7
  %51 = shl i32 %50, 19
  %52 = load i32*, i32** %6, align 8
  %53 = load i32, i32* %10, align 4
  %54 = add nsw i32 %53, 0
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %52, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = shl i32 %57, 11
  %59 = or i32 %51, %58
  %60 = load i32*, i32** %6, align 8
  %61 = load i32, i32* %10, align 4
  %62 = add nsw i32 %61, 3
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %60, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = and i32 %65, 7
  %67 = shl i32 %66, 8
  %68 = or i32 %59, %67
  %69 = load i32*, i32** %6, align 8
  %70 = load i32, i32* %10, align 4
  %71 = add nsw i32 %70, 2
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %69, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = or i32 %68, %74
  store i32 %75, i32* %12, align 4
  %76 = load i32, i32* %12, align 4
  %77 = shl i32 %76, 1
  store i32 %77, i32* %12, align 4
  %78 = load i32, i32* %9, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %86

80:                                               ; preds = %43
  %81 = load i32, i32* %8, align 4
  %82 = load i32, i32* %10, align 4
  %83 = add nsw i32 %81, %82
  %84 = load i32, i32* %12, align 4
  %85 = add nsw i32 %83, %84
  store i32 %85, i32* %11, align 4
  br label %92

86:                                               ; preds = %43
  %87 = load i32, i32* %12, align 4
  %88 = load i32, i32* %8, align 4
  %89 = load i32, i32* %10, align 4
  %90 = add nsw i32 %88, %89
  %91 = sub nsw i32 %87, %90
  store i32 %91, i32* %11, align 4
  br label %92

92:                                               ; preds = %86, %80
  %93 = load i32, i32* %11, align 4
  %94 = ashr i32 %93, 1
  store i32 %94, i32* %11, align 4
  %95 = load i32, i32* %11, align 4
  %96 = ashr i32 %95, 19
  %97 = and i32 %96, 7
  %98 = or i32 240, %97
  %99 = load i32*, i32** %6, align 8
  %100 = load i32, i32* %10, align 4
  %101 = add nsw i32 %100, 1
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %99, i64 %102
  store i32 %98, i32* %103, align 4
  %104 = load i32, i32* %11, align 4
  %105 = ashr i32 %104, 11
  %106 = load i32*, i32** %6, align 8
  %107 = load i32, i32* %10, align 4
  %108 = add nsw i32 %107, 0
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %106, i64 %109
  store i32 %105, i32* %110, align 4
  %111 = load i32, i32* %11, align 4
  %112 = ashr i32 %111, 8
  %113 = and i32 %112, 7
  %114 = or i32 248, %113
  %115 = load i32*, i32** %6, align 8
  %116 = load i32, i32* %10, align 4
  %117 = add nsw i32 %116, 3
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i32, i32* %115, i64 %118
  store i32 %114, i32* %119, align 4
  %120 = load i32, i32* %11, align 4
  %121 = load i32*, i32** %6, align 8
  %122 = load i32, i32* %10, align 4
  %123 = add nsw i32 %122, 2
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i32, i32* %121, i64 %124
  store i32 %120, i32* %125, align 4
  %126 = load i32, i32* %10, align 4
  %127 = add nsw i32 %126, 2
  store i32 %127, i32* %10, align 4
  br label %128

128:                                              ; preds = %92, %34, %25
  br label %129

129:                                              ; preds = %128
  %130 = load i32, i32* %10, align 4
  %131 = add nsw i32 %130, 2
  store i32 %131, i32* %10, align 4
  br label %21

132:                                              ; preds = %21
  %133 = load i32, i32* %10, align 4
  store i32 %133, i32* %5, align 4
  br label %134

134:                                              ; preds = %132, %15
  %135 = load i32, i32* %5, align 4
  ret i32 %135
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
