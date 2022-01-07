; ModuleID = '/home/carl/AnghaBench/numpy/numpy/linalg/lapack_lite/extr_f2c_blas.c_scopy_.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/linalg/lapack_lite/extr_f2c_blas.c_scopy_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@scopy_.i__ = internal global i32 0, align 4
@scopy_.m = internal global i32 0, align 4
@scopy_.ix = internal global i32 0, align 4
@scopy_.iy = internal global i32 0, align 4
@scopy_.mp1 = internal global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @scopy_(i32* %0, i32* %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %13 = load i32*, i32** %10, align 8
  %14 = getelementptr inbounds i32, i32* %13, i32 -1
  store i32* %14, i32** %10, align 8
  %15 = load i32*, i32** %8, align 8
  %16 = getelementptr inbounds i32, i32* %15, i32 -1
  store i32* %16, i32** %8, align 8
  %17 = load i32*, i32** %7, align 8
  %18 = load i32, i32* %17, align 4
  %19 = icmp sle i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %207

21:                                               ; preds = %5
  %22 = load i32*, i32** %9, align 8
  %23 = load i32, i32* %22, align 4
  %24 = icmp eq i32 %23, 1
  br i1 %24, label %25, label %30

25:                                               ; preds = %21
  %26 = load i32*, i32** %11, align 8
  %27 = load i32, i32* %26, align 4
  %28 = icmp eq i32 %27, 1
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  br label %85

30:                                               ; preds = %25, %21
  store i32 1, i32* @scopy_.ix, align 4
  store i32 1, i32* @scopy_.iy, align 4
  %31 = load i32*, i32** %9, align 8
  %32 = load i32, i32* %31, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %43

34:                                               ; preds = %30
  %35 = load i32*, i32** %7, align 8
  %36 = load i32, i32* %35, align 4
  %37 = sub nsw i32 0, %36
  %38 = add nsw i32 %37, 1
  %39 = load i32*, i32** %9, align 8
  %40 = load i32, i32* %39, align 4
  %41 = mul nsw i32 %38, %40
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* @scopy_.ix, align 4
  br label %43

43:                                               ; preds = %34, %30
  %44 = load i32*, i32** %11, align 8
  %45 = load i32, i32* %44, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %56

47:                                               ; preds = %43
  %48 = load i32*, i32** %7, align 8
  %49 = load i32, i32* %48, align 4
  %50 = sub nsw i32 0, %49
  %51 = add nsw i32 %50, 1
  %52 = load i32*, i32** %11, align 8
  %53 = load i32, i32* %52, align 4
  %54 = mul nsw i32 %51, %53
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* @scopy_.iy, align 4
  br label %56

56:                                               ; preds = %47, %43
  %57 = load i32*, i32** %7, align 8
  %58 = load i32, i32* %57, align 4
  store i32 %58, i32* %12, align 4
  store i32 1, i32* @scopy_.i__, align 4
  br label %59

59:                                               ; preds = %81, %56
  %60 = load i32, i32* @scopy_.i__, align 4
  %61 = load i32, i32* %12, align 4
  %62 = icmp sle i32 %60, %61
  br i1 %62, label %63, label %84

63:                                               ; preds = %59
  %64 = load i32*, i32** %8, align 8
  %65 = load i32, i32* @scopy_.ix, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = load i32*, i32** %10, align 8
  %70 = load i32, i32* @scopy_.iy, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  store i32 %68, i32* %72, align 4
  %73 = load i32*, i32** %9, align 8
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @scopy_.ix, align 4
  %76 = add nsw i32 %75, %74
  store i32 %76, i32* @scopy_.ix, align 4
  %77 = load i32*, i32** %11, align 8
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @scopy_.iy, align 4
  %80 = add nsw i32 %79, %78
  store i32 %80, i32* @scopy_.iy, align 4
  br label %81

81:                                               ; preds = %63
  %82 = load i32, i32* @scopy_.i__, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* @scopy_.i__, align 4
  br label %59

84:                                               ; preds = %59
  store i32 0, i32* %6, align 4
  br label %207

85:                                               ; preds = %29
  %86 = load i32*, i32** %7, align 8
  %87 = load i32, i32* %86, align 4
  %88 = srem i32 %87, 7
  store i32 %88, i32* @scopy_.m, align 4
  %89 = load i32, i32* @scopy_.m, align 4
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %85
  br label %117

92:                                               ; preds = %85
  %93 = load i32, i32* @scopy_.m, align 4
  store i32 %93, i32* %12, align 4
  store i32 1, i32* @scopy_.i__, align 4
  br label %94

94:                                               ; preds = %108, %92
  %95 = load i32, i32* @scopy_.i__, align 4
  %96 = load i32, i32* %12, align 4
  %97 = icmp sle i32 %95, %96
  br i1 %97, label %98, label %111

98:                                               ; preds = %94
  %99 = load i32*, i32** %8, align 8
  %100 = load i32, i32* @scopy_.i__, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %99, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = load i32*, i32** %10, align 8
  %105 = load i32, i32* @scopy_.i__, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %104, i64 %106
  store i32 %103, i32* %107, align 4
  br label %108

108:                                              ; preds = %98
  %109 = load i32, i32* @scopy_.i__, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* @scopy_.i__, align 4
  br label %94

111:                                              ; preds = %94
  %112 = load i32*, i32** %7, align 8
  %113 = load i32, i32* %112, align 4
  %114 = icmp slt i32 %113, 7
  br i1 %114, label %115, label %116

115:                                              ; preds = %111
  store i32 0, i32* %6, align 4
  br label %207

116:                                              ; preds = %111
  br label %117

117:                                              ; preds = %116, %91
  %118 = load i32, i32* @scopy_.m, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* @scopy_.mp1, align 4
  %120 = load i32*, i32** %7, align 8
  %121 = load i32, i32* %120, align 4
  store i32 %121, i32* %12, align 4
  %122 = load i32, i32* @scopy_.mp1, align 4
  store i32 %122, i32* @scopy_.i__, align 4
  br label %123

123:                                              ; preds = %203, %117
  %124 = load i32, i32* @scopy_.i__, align 4
  %125 = load i32, i32* %12, align 4
  %126 = icmp sle i32 %124, %125
  br i1 %126, label %127, label %206

127:                                              ; preds = %123
  %128 = load i32*, i32** %8, align 8
  %129 = load i32, i32* @scopy_.i__, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i32, i32* %128, i64 %130
  %132 = load i32, i32* %131, align 4
  %133 = load i32*, i32** %10, align 8
  %134 = load i32, i32* @scopy_.i__, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i32, i32* %133, i64 %135
  store i32 %132, i32* %136, align 4
  %137 = load i32*, i32** %8, align 8
  %138 = load i32, i32* @scopy_.i__, align 4
  %139 = add nsw i32 %138, 1
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i32, i32* %137, i64 %140
  %142 = load i32, i32* %141, align 4
  %143 = load i32*, i32** %10, align 8
  %144 = load i32, i32* @scopy_.i__, align 4
  %145 = add nsw i32 %144, 1
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i32, i32* %143, i64 %146
  store i32 %142, i32* %147, align 4
  %148 = load i32*, i32** %8, align 8
  %149 = load i32, i32* @scopy_.i__, align 4
  %150 = add nsw i32 %149, 2
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i32, i32* %148, i64 %151
  %153 = load i32, i32* %152, align 4
  %154 = load i32*, i32** %10, align 8
  %155 = load i32, i32* @scopy_.i__, align 4
  %156 = add nsw i32 %155, 2
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i32, i32* %154, i64 %157
  store i32 %153, i32* %158, align 4
  %159 = load i32*, i32** %8, align 8
  %160 = load i32, i32* @scopy_.i__, align 4
  %161 = add nsw i32 %160, 3
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i32, i32* %159, i64 %162
  %164 = load i32, i32* %163, align 4
  %165 = load i32*, i32** %10, align 8
  %166 = load i32, i32* @scopy_.i__, align 4
  %167 = add nsw i32 %166, 3
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i32, i32* %165, i64 %168
  store i32 %164, i32* %169, align 4
  %170 = load i32*, i32** %8, align 8
  %171 = load i32, i32* @scopy_.i__, align 4
  %172 = add nsw i32 %171, 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i32, i32* %170, i64 %173
  %175 = load i32, i32* %174, align 4
  %176 = load i32*, i32** %10, align 8
  %177 = load i32, i32* @scopy_.i__, align 4
  %178 = add nsw i32 %177, 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds i32, i32* %176, i64 %179
  store i32 %175, i32* %180, align 4
  %181 = load i32*, i32** %8, align 8
  %182 = load i32, i32* @scopy_.i__, align 4
  %183 = add nsw i32 %182, 5
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds i32, i32* %181, i64 %184
  %186 = load i32, i32* %185, align 4
  %187 = load i32*, i32** %10, align 8
  %188 = load i32, i32* @scopy_.i__, align 4
  %189 = add nsw i32 %188, 5
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds i32, i32* %187, i64 %190
  store i32 %186, i32* %191, align 4
  %192 = load i32*, i32** %8, align 8
  %193 = load i32, i32* @scopy_.i__, align 4
  %194 = add nsw i32 %193, 6
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds i32, i32* %192, i64 %195
  %197 = load i32, i32* %196, align 4
  %198 = load i32*, i32** %10, align 8
  %199 = load i32, i32* @scopy_.i__, align 4
  %200 = add nsw i32 %199, 6
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds i32, i32* %198, i64 %201
  store i32 %197, i32* %202, align 4
  br label %203

203:                                              ; preds = %127
  %204 = load i32, i32* @scopy_.i__, align 4
  %205 = add nsw i32 %204, 7
  store i32 %205, i32* @scopy_.i__, align 4
  br label %123

206:                                              ; preds = %123
  store i32 0, i32* %6, align 4
  br label %207

207:                                              ; preds = %206, %115, %84, %20
  %208 = load i32, i32* %6, align 4
  ret i32 %208
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
