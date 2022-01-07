; ModuleID = '/home/carl/AnghaBench/numpy/numpy/linalg/lapack_lite/extr_f2c_blas.c_daxpy_.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/linalg/lapack_lite/extr_f2c_blas.c_daxpy_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@daxpy_.i__ = internal global i32 0, align 4
@daxpy_.m = internal global i32 0, align 4
@daxpy_.ix = internal global i32 0, align 4
@daxpy_.iy = internal global i32 0, align 4
@daxpy_.mp1 = internal global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @daxpy_(i32* %0, i32* %1, i32* %2, i32* %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %15 = load i32*, i32** %12, align 8
  %16 = getelementptr inbounds i32, i32* %15, i32 -1
  store i32* %16, i32** %12, align 8
  %17 = load i32*, i32** %10, align 8
  %18 = getelementptr inbounds i32, i32* %17, i32 -1
  store i32* %18, i32** %10, align 8
  %19 = load i32*, i32** %8, align 8
  %20 = load i32, i32* %19, align 4
  %21 = icmp sle i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %6
  store i32 0, i32* %7, align 4
  br label %212

23:                                               ; preds = %6
  %24 = load i32*, i32** %9, align 8
  %25 = load i32, i32* %24, align 4
  %26 = sitofp i32 %25 to double
  %27 = fcmp oeq double %26, 0.000000e+00
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  store i32 0, i32* %7, align 4
  br label %212

29:                                               ; preds = %23
  %30 = load i32*, i32** %11, align 8
  %31 = load i32, i32* %30, align 4
  %32 = icmp eq i32 %31, 1
  br i1 %32, label %33, label %38

33:                                               ; preds = %29
  %34 = load i32*, i32** %13, align 8
  %35 = load i32, i32* %34, align 4
  %36 = icmp eq i32 %35, 1
  br i1 %36, label %37, label %38

37:                                               ; preds = %33
  br label %98

38:                                               ; preds = %33, %29
  store i32 1, i32* @daxpy_.ix, align 4
  store i32 1, i32* @daxpy_.iy, align 4
  %39 = load i32*, i32** %11, align 8
  %40 = load i32, i32* %39, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %51

42:                                               ; preds = %38
  %43 = load i32*, i32** %8, align 8
  %44 = load i32, i32* %43, align 4
  %45 = sub nsw i32 0, %44
  %46 = add nsw i32 %45, 1
  %47 = load i32*, i32** %11, align 8
  %48 = load i32, i32* %47, align 4
  %49 = mul nsw i32 %46, %48
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* @daxpy_.ix, align 4
  br label %51

51:                                               ; preds = %42, %38
  %52 = load i32*, i32** %13, align 8
  %53 = load i32, i32* %52, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %64

55:                                               ; preds = %51
  %56 = load i32*, i32** %8, align 8
  %57 = load i32, i32* %56, align 4
  %58 = sub nsw i32 0, %57
  %59 = add nsw i32 %58, 1
  %60 = load i32*, i32** %13, align 8
  %61 = load i32, i32* %60, align 4
  %62 = mul nsw i32 %59, %61
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* @daxpy_.iy, align 4
  br label %64

64:                                               ; preds = %55, %51
  %65 = load i32*, i32** %8, align 8
  %66 = load i32, i32* %65, align 4
  store i32 %66, i32* %14, align 4
  store i32 1, i32* @daxpy_.i__, align 4
  br label %67

67:                                               ; preds = %94, %64
  %68 = load i32, i32* @daxpy_.i__, align 4
  %69 = load i32, i32* %14, align 4
  %70 = icmp sle i32 %68, %69
  br i1 %70, label %71, label %97

71:                                               ; preds = %67
  %72 = load i32*, i32** %9, align 8
  %73 = load i32, i32* %72, align 4
  %74 = load i32*, i32** %10, align 8
  %75 = load i32, i32* @daxpy_.ix, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = mul nsw i32 %73, %78
  %80 = load i32*, i32** %12, align 8
  %81 = load i32, i32* @daxpy_.iy, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %80, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = add nsw i32 %84, %79
  store i32 %85, i32* %83, align 4
  %86 = load i32*, i32** %11, align 8
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @daxpy_.ix, align 4
  %89 = add nsw i32 %88, %87
  store i32 %89, i32* @daxpy_.ix, align 4
  %90 = load i32*, i32** %13, align 8
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @daxpy_.iy, align 4
  %93 = add nsw i32 %92, %91
  store i32 %93, i32* @daxpy_.iy, align 4
  br label %94

94:                                               ; preds = %71
  %95 = load i32, i32* @daxpy_.i__, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* @daxpy_.i__, align 4
  br label %67

97:                                               ; preds = %67
  store i32 0, i32* %7, align 4
  br label %212

98:                                               ; preds = %37
  %99 = load i32*, i32** %8, align 8
  %100 = load i32, i32* %99, align 4
  %101 = srem i32 %100, 4
  store i32 %101, i32* @daxpy_.m, align 4
  %102 = load i32, i32* @daxpy_.m, align 4
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %98
  br label %135

105:                                              ; preds = %98
  %106 = load i32, i32* @daxpy_.m, align 4
  store i32 %106, i32* %14, align 4
  store i32 1, i32* @daxpy_.i__, align 4
  br label %107

107:                                              ; preds = %126, %105
  %108 = load i32, i32* @daxpy_.i__, align 4
  %109 = load i32, i32* %14, align 4
  %110 = icmp sle i32 %108, %109
  br i1 %110, label %111, label %129

111:                                              ; preds = %107
  %112 = load i32*, i32** %9, align 8
  %113 = load i32, i32* %112, align 4
  %114 = load i32*, i32** %10, align 8
  %115 = load i32, i32* @daxpy_.i__, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %114, i64 %116
  %118 = load i32, i32* %117, align 4
  %119 = mul nsw i32 %113, %118
  %120 = load i32*, i32** %12, align 8
  %121 = load i32, i32* @daxpy_.i__, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i32, i32* %120, i64 %122
  %124 = load i32, i32* %123, align 4
  %125 = add nsw i32 %124, %119
  store i32 %125, i32* %123, align 4
  br label %126

126:                                              ; preds = %111
  %127 = load i32, i32* @daxpy_.i__, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* @daxpy_.i__, align 4
  br label %107

129:                                              ; preds = %107
  %130 = load i32*, i32** %8, align 8
  %131 = load i32, i32* %130, align 4
  %132 = icmp slt i32 %131, 4
  br i1 %132, label %133, label %134

133:                                              ; preds = %129
  store i32 0, i32* %7, align 4
  br label %212

134:                                              ; preds = %129
  br label %135

135:                                              ; preds = %134, %104
  %136 = load i32, i32* @daxpy_.m, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* @daxpy_.mp1, align 4
  %138 = load i32*, i32** %8, align 8
  %139 = load i32, i32* %138, align 4
  store i32 %139, i32* %14, align 4
  %140 = load i32, i32* @daxpy_.mp1, align 4
  store i32 %140, i32* @daxpy_.i__, align 4
  br label %141

141:                                              ; preds = %208, %135
  %142 = load i32, i32* @daxpy_.i__, align 4
  %143 = load i32, i32* %14, align 4
  %144 = icmp sle i32 %142, %143
  br i1 %144, label %145, label %211

145:                                              ; preds = %141
  %146 = load i32*, i32** %9, align 8
  %147 = load i32, i32* %146, align 4
  %148 = load i32*, i32** %10, align 8
  %149 = load i32, i32* @daxpy_.i__, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i32, i32* %148, i64 %150
  %152 = load i32, i32* %151, align 4
  %153 = mul nsw i32 %147, %152
  %154 = load i32*, i32** %12, align 8
  %155 = load i32, i32* @daxpy_.i__, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i32, i32* %154, i64 %156
  %158 = load i32, i32* %157, align 4
  %159 = add nsw i32 %158, %153
  store i32 %159, i32* %157, align 4
  %160 = load i32*, i32** %9, align 8
  %161 = load i32, i32* %160, align 4
  %162 = load i32*, i32** %10, align 8
  %163 = load i32, i32* @daxpy_.i__, align 4
  %164 = add nsw i32 %163, 1
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i32, i32* %162, i64 %165
  %167 = load i32, i32* %166, align 4
  %168 = mul nsw i32 %161, %167
  %169 = load i32*, i32** %12, align 8
  %170 = load i32, i32* @daxpy_.i__, align 4
  %171 = add nsw i32 %170, 1
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds i32, i32* %169, i64 %172
  %174 = load i32, i32* %173, align 4
  %175 = add nsw i32 %174, %168
  store i32 %175, i32* %173, align 4
  %176 = load i32*, i32** %9, align 8
  %177 = load i32, i32* %176, align 4
  %178 = load i32*, i32** %10, align 8
  %179 = load i32, i32* @daxpy_.i__, align 4
  %180 = add nsw i32 %179, 2
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds i32, i32* %178, i64 %181
  %183 = load i32, i32* %182, align 4
  %184 = mul nsw i32 %177, %183
  %185 = load i32*, i32** %12, align 8
  %186 = load i32, i32* @daxpy_.i__, align 4
  %187 = add nsw i32 %186, 2
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds i32, i32* %185, i64 %188
  %190 = load i32, i32* %189, align 4
  %191 = add nsw i32 %190, %184
  store i32 %191, i32* %189, align 4
  %192 = load i32*, i32** %9, align 8
  %193 = load i32, i32* %192, align 4
  %194 = load i32*, i32** %10, align 8
  %195 = load i32, i32* @daxpy_.i__, align 4
  %196 = add nsw i32 %195, 3
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds i32, i32* %194, i64 %197
  %199 = load i32, i32* %198, align 4
  %200 = mul nsw i32 %193, %199
  %201 = load i32*, i32** %12, align 8
  %202 = load i32, i32* @daxpy_.i__, align 4
  %203 = add nsw i32 %202, 3
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds i32, i32* %201, i64 %204
  %206 = load i32, i32* %205, align 4
  %207 = add nsw i32 %206, %200
  store i32 %207, i32* %205, align 4
  br label %208

208:                                              ; preds = %145
  %209 = load i32, i32* @daxpy_.i__, align 4
  %210 = add nsw i32 %209, 4
  store i32 %210, i32* @daxpy_.i__, align 4
  br label %141

211:                                              ; preds = %141
  store i32 0, i32* %7, align 4
  br label %212

212:                                              ; preds = %211, %133, %97, %28, %22
  %213 = load i32, i32* %7, align 4
  ret i32 %213
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
