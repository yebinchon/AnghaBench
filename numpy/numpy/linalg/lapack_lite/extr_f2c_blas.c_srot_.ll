; ModuleID = '/home/carl/AnghaBench/numpy/numpy/linalg/lapack_lite/extr_f2c_blas.c_srot_.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/linalg/lapack_lite/extr_f2c_blas.c_srot_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@srot_.i__ = internal global i32 0, align 4
@srot_.ix = internal global i32 0, align 4
@srot_.iy = internal global i32 0, align 4
@srot_.stemp = internal global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @srot_(i32* %0, i32* %1, i32* %2, i32* %3, i32* %4, i32* %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  store i32* %0, i32** %9, align 8
  store i32* %1, i32** %10, align 8
  store i32* %2, i32** %11, align 8
  store i32* %3, i32** %12, align 8
  store i32* %4, i32** %13, align 8
  store i32* %5, i32** %14, align 8
  store i32* %6, i32** %15, align 8
  %17 = load i32*, i32** %12, align 8
  %18 = getelementptr inbounds i32, i32* %17, i32 -1
  store i32* %18, i32** %12, align 8
  %19 = load i32*, i32** %10, align 8
  %20 = getelementptr inbounds i32, i32* %19, i32 -1
  store i32* %20, i32** %10, align 8
  %21 = load i32*, i32** %9, align 8
  %22 = load i32, i32* %21, align 4
  %23 = icmp sle i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %7
  store i32 0, i32* %8, align 4
  br label %178

25:                                               ; preds = %7
  %26 = load i32*, i32** %11, align 8
  %27 = load i32, i32* %26, align 4
  %28 = icmp eq i32 %27, 1
  br i1 %28, label %29, label %34

29:                                               ; preds = %25
  %30 = load i32*, i32** %13, align 8
  %31 = load i32, i32* %30, align 4
  %32 = icmp eq i32 %31, 1
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  br label %123

34:                                               ; preds = %29, %25
  store i32 1, i32* @srot_.ix, align 4
  store i32 1, i32* @srot_.iy, align 4
  %35 = load i32*, i32** %11, align 8
  %36 = load i32, i32* %35, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %47

38:                                               ; preds = %34
  %39 = load i32*, i32** %9, align 8
  %40 = load i32, i32* %39, align 4
  %41 = sub nsw i32 0, %40
  %42 = add nsw i32 %41, 1
  %43 = load i32*, i32** %11, align 8
  %44 = load i32, i32* %43, align 4
  %45 = mul nsw i32 %42, %44
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* @srot_.ix, align 4
  br label %47

47:                                               ; preds = %38, %34
  %48 = load i32*, i32** %13, align 8
  %49 = load i32, i32* %48, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %60

51:                                               ; preds = %47
  %52 = load i32*, i32** %9, align 8
  %53 = load i32, i32* %52, align 4
  %54 = sub nsw i32 0, %53
  %55 = add nsw i32 %54, 1
  %56 = load i32*, i32** %13, align 8
  %57 = load i32, i32* %56, align 4
  %58 = mul nsw i32 %55, %57
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* @srot_.iy, align 4
  br label %60

60:                                               ; preds = %51, %47
  %61 = load i32*, i32** %9, align 8
  %62 = load i32, i32* %61, align 4
  store i32 %62, i32* %16, align 4
  store i32 1, i32* @srot_.i__, align 4
  br label %63

63:                                               ; preds = %119, %60
  %64 = load i32, i32* @srot_.i__, align 4
  %65 = load i32, i32* %16, align 4
  %66 = icmp sle i32 %64, %65
  br i1 %66, label %67, label %122

67:                                               ; preds = %63
  %68 = load i32*, i32** %14, align 8
  %69 = load i32, i32* %68, align 4
  %70 = load i32*, i32** %10, align 8
  %71 = load i32, i32* @srot_.ix, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = mul nsw i32 %69, %74
  %76 = load i32*, i32** %15, align 8
  %77 = load i32, i32* %76, align 4
  %78 = load i32*, i32** %12, align 8
  %79 = load i32, i32* @srot_.iy, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = mul nsw i32 %77, %82
  %84 = add nsw i32 %75, %83
  store i32 %84, i32* @srot_.stemp, align 4
  %85 = load i32*, i32** %14, align 8
  %86 = load i32, i32* %85, align 4
  %87 = load i32*, i32** %12, align 8
  %88 = load i32, i32* @srot_.iy, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %87, i64 %89
  %91 = load i32, i32* %90, align 4
  %92 = mul nsw i32 %86, %91
  %93 = load i32*, i32** %15, align 8
  %94 = load i32, i32* %93, align 4
  %95 = load i32*, i32** %10, align 8
  %96 = load i32, i32* @srot_.ix, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %95, i64 %97
  %99 = load i32, i32* %98, align 4
  %100 = mul nsw i32 %94, %99
  %101 = sub nsw i32 %92, %100
  %102 = load i32*, i32** %12, align 8
  %103 = load i32, i32* @srot_.iy, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %102, i64 %104
  store i32 %101, i32* %105, align 4
  %106 = load i32, i32* @srot_.stemp, align 4
  %107 = load i32*, i32** %10, align 8
  %108 = load i32, i32* @srot_.ix, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %107, i64 %109
  store i32 %106, i32* %110, align 4
  %111 = load i32*, i32** %11, align 8
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* @srot_.ix, align 4
  %114 = add nsw i32 %113, %112
  store i32 %114, i32* @srot_.ix, align 4
  %115 = load i32*, i32** %13, align 8
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* @srot_.iy, align 4
  %118 = add nsw i32 %117, %116
  store i32 %118, i32* @srot_.iy, align 4
  br label %119

119:                                              ; preds = %67
  %120 = load i32, i32* @srot_.i__, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* @srot_.i__, align 4
  br label %63

122:                                              ; preds = %63
  store i32 0, i32* %8, align 4
  br label %178

123:                                              ; preds = %33
  %124 = load i32*, i32** %9, align 8
  %125 = load i32, i32* %124, align 4
  store i32 %125, i32* %16, align 4
  store i32 1, i32* @srot_.i__, align 4
  br label %126

126:                                              ; preds = %174, %123
  %127 = load i32, i32* @srot_.i__, align 4
  %128 = load i32, i32* %16, align 4
  %129 = icmp sle i32 %127, %128
  br i1 %129, label %130, label %177

130:                                              ; preds = %126
  %131 = load i32*, i32** %14, align 8
  %132 = load i32, i32* %131, align 4
  %133 = load i32*, i32** %10, align 8
  %134 = load i32, i32* @srot_.i__, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i32, i32* %133, i64 %135
  %137 = load i32, i32* %136, align 4
  %138 = mul nsw i32 %132, %137
  %139 = load i32*, i32** %15, align 8
  %140 = load i32, i32* %139, align 4
  %141 = load i32*, i32** %12, align 8
  %142 = load i32, i32* @srot_.i__, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i32, i32* %141, i64 %143
  %145 = load i32, i32* %144, align 4
  %146 = mul nsw i32 %140, %145
  %147 = add nsw i32 %138, %146
  store i32 %147, i32* @srot_.stemp, align 4
  %148 = load i32*, i32** %14, align 8
  %149 = load i32, i32* %148, align 4
  %150 = load i32*, i32** %12, align 8
  %151 = load i32, i32* @srot_.i__, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i32, i32* %150, i64 %152
  %154 = load i32, i32* %153, align 4
  %155 = mul nsw i32 %149, %154
  %156 = load i32*, i32** %15, align 8
  %157 = load i32, i32* %156, align 4
  %158 = load i32*, i32** %10, align 8
  %159 = load i32, i32* @srot_.i__, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i32, i32* %158, i64 %160
  %162 = load i32, i32* %161, align 4
  %163 = mul nsw i32 %157, %162
  %164 = sub nsw i32 %155, %163
  %165 = load i32*, i32** %12, align 8
  %166 = load i32, i32* @srot_.i__, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds i32, i32* %165, i64 %167
  store i32 %164, i32* %168, align 4
  %169 = load i32, i32* @srot_.stemp, align 4
  %170 = load i32*, i32** %10, align 8
  %171 = load i32, i32* @srot_.i__, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds i32, i32* %170, i64 %172
  store i32 %169, i32* %173, align 4
  br label %174

174:                                              ; preds = %130
  %175 = load i32, i32* @srot_.i__, align 4
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* @srot_.i__, align 4
  br label %126

177:                                              ; preds = %126
  store i32 0, i32* %8, align 4
  br label %178

178:                                              ; preds = %177, %122, %24
  %179 = load i32, i32* %8, align 4
  ret i32 %179
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
