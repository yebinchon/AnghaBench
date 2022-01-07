; ModuleID = '/home/carl/AnghaBench/numpy/numpy/linalg/lapack_lite/extr_f2c_blas.c_sscal_.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/linalg/lapack_lite/extr_f2c_blas.c_sscal_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@sscal_.i__ = internal global i32 0, align 4
@sscal_.m = internal global i32 0, align 4
@sscal_.mp1 = internal global i32 0, align 4
@sscal_.nincx = internal global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sscal_(i32* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %12 = load i32*, i32** %8, align 8
  %13 = getelementptr inbounds i32, i32* %12, i32 -1
  store i32* %13, i32** %8, align 8
  %14 = load i32*, i32** %6, align 8
  %15 = load i32, i32* %14, align 4
  %16 = icmp sle i32 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %4
  %18 = load i32*, i32** %9, align 8
  %19 = load i32, i32* %18, align 4
  %20 = icmp sle i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %17, %4
  store i32 0, i32* %5, align 4
  br label %188

22:                                               ; preds = %17
  %23 = load i32*, i32** %9, align 8
  %24 = load i32, i32* %23, align 4
  %25 = icmp eq i32 %24, 1
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  br label %70

27:                                               ; preds = %22
  %28 = load i32*, i32** %6, align 8
  %29 = load i32, i32* %28, align 4
  %30 = load i32*, i32** %9, align 8
  %31 = load i32, i32* %30, align 4
  %32 = mul nsw i32 %29, %31
  store i32 %32, i32* @sscal_.nincx, align 4
  %33 = load i32, i32* @sscal_.nincx, align 4
  store i32 %33, i32* %10, align 4
  %34 = load i32*, i32** %9, align 8
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %11, align 4
  store i32 1, i32* @sscal_.i__, align 4
  br label %36

36:                                               ; preds = %65, %27
  %37 = load i32, i32* %11, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %36
  %40 = load i32, i32* @sscal_.i__, align 4
  %41 = load i32, i32* %10, align 4
  %42 = icmp sge i32 %40, %41
  %43 = zext i1 %42 to i32
  br label %49

44:                                               ; preds = %36
  %45 = load i32, i32* @sscal_.i__, align 4
  %46 = load i32, i32* %10, align 4
  %47 = icmp sle i32 %45, %46
  %48 = zext i1 %47 to i32
  br label %49

49:                                               ; preds = %44, %39
  %50 = phi i32 [ %43, %39 ], [ %48, %44 ]
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %69

52:                                               ; preds = %49
  %53 = load i32*, i32** %7, align 8
  %54 = load i32, i32* %53, align 4
  %55 = load i32*, i32** %8, align 8
  %56 = load i32, i32* @sscal_.i__, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = mul nsw i32 %54, %59
  %61 = load i32*, i32** %8, align 8
  %62 = load i32, i32* @sscal_.i__, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  store i32 %60, i32* %64, align 4
  br label %65

65:                                               ; preds = %52
  %66 = load i32, i32* %11, align 4
  %67 = load i32, i32* @sscal_.i__, align 4
  %68 = add nsw i32 %67, %66
  store i32 %68, i32* @sscal_.i__, align 4
  br label %36

69:                                               ; preds = %49
  store i32 0, i32* %5, align 4
  br label %188

70:                                               ; preds = %26
  %71 = load i32*, i32** %6, align 8
  %72 = load i32, i32* %71, align 4
  %73 = srem i32 %72, 5
  store i32 %73, i32* @sscal_.m, align 4
  %74 = load i32, i32* @sscal_.m, align 4
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %70
  br label %105

77:                                               ; preds = %70
  %78 = load i32, i32* @sscal_.m, align 4
  store i32 %78, i32* %11, align 4
  store i32 1, i32* @sscal_.i__, align 4
  br label %79

79:                                               ; preds = %96, %77
  %80 = load i32, i32* @sscal_.i__, align 4
  %81 = load i32, i32* %11, align 4
  %82 = icmp sle i32 %80, %81
  br i1 %82, label %83, label %99

83:                                               ; preds = %79
  %84 = load i32*, i32** %7, align 8
  %85 = load i32, i32* %84, align 4
  %86 = load i32*, i32** %8, align 8
  %87 = load i32, i32* @sscal_.i__, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %86, i64 %88
  %90 = load i32, i32* %89, align 4
  %91 = mul nsw i32 %85, %90
  %92 = load i32*, i32** %8, align 8
  %93 = load i32, i32* @sscal_.i__, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %92, i64 %94
  store i32 %91, i32* %95, align 4
  br label %96

96:                                               ; preds = %83
  %97 = load i32, i32* @sscal_.i__, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* @sscal_.i__, align 4
  br label %79

99:                                               ; preds = %79
  %100 = load i32*, i32** %6, align 8
  %101 = load i32, i32* %100, align 4
  %102 = icmp slt i32 %101, 5
  br i1 %102, label %103, label %104

103:                                              ; preds = %99
  store i32 0, i32* %5, align 4
  br label %188

104:                                              ; preds = %99
  br label %105

105:                                              ; preds = %104, %76
  %106 = load i32, i32* @sscal_.m, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* @sscal_.mp1, align 4
  %108 = load i32*, i32** %6, align 8
  %109 = load i32, i32* %108, align 4
  store i32 %109, i32* %11, align 4
  %110 = load i32, i32* @sscal_.mp1, align 4
  store i32 %110, i32* @sscal_.i__, align 4
  br label %111

111:                                              ; preds = %184, %105
  %112 = load i32, i32* @sscal_.i__, align 4
  %113 = load i32, i32* %11, align 4
  %114 = icmp sle i32 %112, %113
  br i1 %114, label %115, label %187

115:                                              ; preds = %111
  %116 = load i32*, i32** %7, align 8
  %117 = load i32, i32* %116, align 4
  %118 = load i32*, i32** %8, align 8
  %119 = load i32, i32* @sscal_.i__, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i32, i32* %118, i64 %120
  %122 = load i32, i32* %121, align 4
  %123 = mul nsw i32 %117, %122
  %124 = load i32*, i32** %8, align 8
  %125 = load i32, i32* @sscal_.i__, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i32, i32* %124, i64 %126
  store i32 %123, i32* %127, align 4
  %128 = load i32*, i32** %7, align 8
  %129 = load i32, i32* %128, align 4
  %130 = load i32*, i32** %8, align 8
  %131 = load i32, i32* @sscal_.i__, align 4
  %132 = add nsw i32 %131, 1
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i32, i32* %130, i64 %133
  %135 = load i32, i32* %134, align 4
  %136 = mul nsw i32 %129, %135
  %137 = load i32*, i32** %8, align 8
  %138 = load i32, i32* @sscal_.i__, align 4
  %139 = add nsw i32 %138, 1
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i32, i32* %137, i64 %140
  store i32 %136, i32* %141, align 4
  %142 = load i32*, i32** %7, align 8
  %143 = load i32, i32* %142, align 4
  %144 = load i32*, i32** %8, align 8
  %145 = load i32, i32* @sscal_.i__, align 4
  %146 = add nsw i32 %145, 2
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i32, i32* %144, i64 %147
  %149 = load i32, i32* %148, align 4
  %150 = mul nsw i32 %143, %149
  %151 = load i32*, i32** %8, align 8
  %152 = load i32, i32* @sscal_.i__, align 4
  %153 = add nsw i32 %152, 2
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i32, i32* %151, i64 %154
  store i32 %150, i32* %155, align 4
  %156 = load i32*, i32** %7, align 8
  %157 = load i32, i32* %156, align 4
  %158 = load i32*, i32** %8, align 8
  %159 = load i32, i32* @sscal_.i__, align 4
  %160 = add nsw i32 %159, 3
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i32, i32* %158, i64 %161
  %163 = load i32, i32* %162, align 4
  %164 = mul nsw i32 %157, %163
  %165 = load i32*, i32** %8, align 8
  %166 = load i32, i32* @sscal_.i__, align 4
  %167 = add nsw i32 %166, 3
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i32, i32* %165, i64 %168
  store i32 %164, i32* %169, align 4
  %170 = load i32*, i32** %7, align 8
  %171 = load i32, i32* %170, align 4
  %172 = load i32*, i32** %8, align 8
  %173 = load i32, i32* @sscal_.i__, align 4
  %174 = add nsw i32 %173, 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i32, i32* %172, i64 %175
  %177 = load i32, i32* %176, align 4
  %178 = mul nsw i32 %171, %177
  %179 = load i32*, i32** %8, align 8
  %180 = load i32, i32* @sscal_.i__, align 4
  %181 = add nsw i32 %180, 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds i32, i32* %179, i64 %182
  store i32 %178, i32* %183, align 4
  br label %184

184:                                              ; preds = %115
  %185 = load i32, i32* @sscal_.i__, align 4
  %186 = add nsw i32 %185, 5
  store i32 %186, i32* @sscal_.i__, align 4
  br label %111

187:                                              ; preds = %111
  store i32 0, i32* %5, align 4
  br label %188

188:                                              ; preds = %187, %103, %69, %21
  %189 = load i32, i32* %5, align 4
  ret i32 %189
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
