; ModuleID = '/home/carl/AnghaBench/numpy/numpy/linalg/lapack_lite/extr_f2c_s_lapack.c_slasdt_.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/linalg/lapack_lite/extr_f2c_s_lapack.c_slasdt_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@slasdt_.i__ = internal global i32 0, align 4
@slasdt_.il = internal global i32 0, align 4
@slasdt_.ir = internal global i32 0, align 4
@slasdt_.maxn = internal global i32 0, align 4
@slasdt_.temp = internal global float 0.000000e+00, align 4
@slasdt_.nlvl = internal global i32 0, align 4
@slasdt_.llst = internal global i32 0, align 4
@slasdt_.ncrnt = internal global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @slasdt_(i32* %0, i32* %1, i32* %2, i32* %3, i32* %4, i32* %5, i32* %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  store i32* %6, i32** %14, align 8
  %17 = load i32*, i32** %13, align 8
  %18 = getelementptr inbounds i32, i32* %17, i32 -1
  store i32* %18, i32** %13, align 8
  %19 = load i32*, i32** %12, align 8
  %20 = getelementptr inbounds i32, i32* %19, i32 -1
  store i32* %20, i32** %12, align 8
  %21 = load i32*, i32** %11, align 8
  %22 = getelementptr inbounds i32, i32* %21, i32 -1
  store i32* %22, i32** %11, align 8
  %23 = load i32*, i32** %8, align 8
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @max(i32 1, i32 %24)
  store i32 %25, i32* @slasdt_.maxn, align 4
  %26 = load i32, i32* @slasdt_.maxn, align 4
  %27 = sitofp i32 %26 to float
  %28 = load i32*, i32** %14, align 8
  %29 = load i32, i32* %28, align 4
  %30 = add nsw i32 %29, 1
  %31 = sitofp i32 %30 to float
  %32 = fdiv float %27, %31
  %33 = call float @log(float %32)
  %34 = call float @log(float 2.000000e+00)
  %35 = fdiv float %33, %34
  store float %35, float* @slasdt_.temp, align 4
  %36 = load float, float* @slasdt_.temp, align 4
  %37 = fptosi float %36 to i32
  %38 = add nsw i32 %37, 1
  %39 = load i32*, i32** %9, align 8
  store i32 %38, i32* %39, align 4
  %40 = load i32*, i32** %8, align 8
  %41 = load i32, i32* %40, align 4
  %42 = sdiv i32 %41, 2
  store i32 %42, i32* @slasdt_.i__, align 4
  %43 = load i32, i32* @slasdt_.i__, align 4
  %44 = add nsw i32 %43, 1
  %45 = load i32*, i32** %11, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 1
  store i32 %44, i32* %46, align 4
  %47 = load i32, i32* @slasdt_.i__, align 4
  %48 = load i32*, i32** %12, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 1
  store i32 %47, i32* %49, align 4
  %50 = load i32*, i32** %8, align 8
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @slasdt_.i__, align 4
  %53 = sub nsw i32 %51, %52
  %54 = sub nsw i32 %53, 1
  %55 = load i32*, i32** %13, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 1
  store i32 %54, i32* %56, align 4
  store i32 0, i32* @slasdt_.il, align 4
  store i32 1, i32* @slasdt_.ir, align 4
  store i32 1, i32* @slasdt_.llst, align 4
  %57 = load i32*, i32** %9, align 8
  %58 = load i32, i32* %57, align 4
  %59 = sub nsw i32 %58, 1
  store i32 %59, i32* %15, align 4
  store i32 1, i32* @slasdt_.nlvl, align 4
  br label %60

60:                                               ; preds = %169, %7
  %61 = load i32, i32* @slasdt_.nlvl, align 4
  %62 = load i32, i32* %15, align 4
  %63 = icmp sle i32 %61, %62
  br i1 %63, label %64, label %172

64:                                               ; preds = %60
  %65 = load i32, i32* @slasdt_.llst, align 4
  %66 = sub nsw i32 %65, 1
  store i32 %66, i32* %16, align 4
  store i32 0, i32* @slasdt_.i__, align 4
  br label %67

67:                                               ; preds = %163, %64
  %68 = load i32, i32* @slasdt_.i__, align 4
  %69 = load i32, i32* %16, align 4
  %70 = icmp sle i32 %68, %69
  br i1 %70, label %71, label %166

71:                                               ; preds = %67
  %72 = load i32, i32* @slasdt_.il, align 4
  %73 = add nsw i32 %72, 2
  store i32 %73, i32* @slasdt_.il, align 4
  %74 = load i32, i32* @slasdt_.ir, align 4
  %75 = add nsw i32 %74, 2
  store i32 %75, i32* @slasdt_.ir, align 4
  %76 = load i32, i32* @slasdt_.llst, align 4
  %77 = load i32, i32* @slasdt_.i__, align 4
  %78 = add nsw i32 %76, %77
  store i32 %78, i32* @slasdt_.ncrnt, align 4
  %79 = load i32*, i32** %12, align 8
  %80 = load i32, i32* @slasdt_.ncrnt, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %79, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = sdiv i32 %83, 2
  %85 = load i32*, i32** %12, align 8
  %86 = load i32, i32* @slasdt_.il, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %85, i64 %87
  store i32 %84, i32* %88, align 4
  %89 = load i32*, i32** %12, align 8
  %90 = load i32, i32* @slasdt_.ncrnt, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %89, i64 %91
  %93 = load i32, i32* %92, align 4
  %94 = load i32*, i32** %12, align 8
  %95 = load i32, i32* @slasdt_.il, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %94, i64 %96
  %98 = load i32, i32* %97, align 4
  %99 = sub nsw i32 %93, %98
  %100 = sub nsw i32 %99, 1
  %101 = load i32*, i32** %13, align 8
  %102 = load i32, i32* @slasdt_.il, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %101, i64 %103
  store i32 %100, i32* %104, align 4
  %105 = load i32*, i32** %11, align 8
  %106 = load i32, i32* @slasdt_.ncrnt, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %105, i64 %107
  %109 = load i32, i32* %108, align 4
  %110 = load i32*, i32** %13, align 8
  %111 = load i32, i32* @slasdt_.il, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %110, i64 %112
  %114 = load i32, i32* %113, align 4
  %115 = sub nsw i32 %109, %114
  %116 = sub nsw i32 %115, 1
  %117 = load i32*, i32** %11, align 8
  %118 = load i32, i32* @slasdt_.il, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32, i32* %117, i64 %119
  store i32 %116, i32* %120, align 4
  %121 = load i32*, i32** %13, align 8
  %122 = load i32, i32* @slasdt_.ncrnt, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i32, i32* %121, i64 %123
  %125 = load i32, i32* %124, align 4
  %126 = sdiv i32 %125, 2
  %127 = load i32*, i32** %12, align 8
  %128 = load i32, i32* @slasdt_.ir, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i32, i32* %127, i64 %129
  store i32 %126, i32* %130, align 4
  %131 = load i32*, i32** %13, align 8
  %132 = load i32, i32* @slasdt_.ncrnt, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i32, i32* %131, i64 %133
  %135 = load i32, i32* %134, align 4
  %136 = load i32*, i32** %12, align 8
  %137 = load i32, i32* @slasdt_.ir, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i32, i32* %136, i64 %138
  %140 = load i32, i32* %139, align 4
  %141 = sub nsw i32 %135, %140
  %142 = sub nsw i32 %141, 1
  %143 = load i32*, i32** %13, align 8
  %144 = load i32, i32* @slasdt_.ir, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i32, i32* %143, i64 %145
  store i32 %142, i32* %146, align 4
  %147 = load i32*, i32** %11, align 8
  %148 = load i32, i32* @slasdt_.ncrnt, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i32, i32* %147, i64 %149
  %151 = load i32, i32* %150, align 4
  %152 = load i32*, i32** %12, align 8
  %153 = load i32, i32* @slasdt_.ir, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i32, i32* %152, i64 %154
  %156 = load i32, i32* %155, align 4
  %157 = add nsw i32 %151, %156
  %158 = add nsw i32 %157, 1
  %159 = load i32*, i32** %11, align 8
  %160 = load i32, i32* @slasdt_.ir, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i32, i32* %159, i64 %161
  store i32 %158, i32* %162, align 4
  br label %163

163:                                              ; preds = %71
  %164 = load i32, i32* @slasdt_.i__, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* @slasdt_.i__, align 4
  br label %67

166:                                              ; preds = %67
  %167 = load i32, i32* @slasdt_.llst, align 4
  %168 = shl i32 %167, 1
  store i32 %168, i32* @slasdt_.llst, align 4
  br label %169

169:                                              ; preds = %166
  %170 = load i32, i32* @slasdt_.nlvl, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* @slasdt_.nlvl, align 4
  br label %60

172:                                              ; preds = %60
  %173 = load i32, i32* @slasdt_.llst, align 4
  %174 = shl i32 %173, 1
  %175 = sub nsw i32 %174, 1
  %176 = load i32*, i32** %10, align 8
  store i32 %175, i32* %176, align 4
  ret i32 0
}

declare dso_local i32 @max(i32, i32) #1

declare dso_local float @log(float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
