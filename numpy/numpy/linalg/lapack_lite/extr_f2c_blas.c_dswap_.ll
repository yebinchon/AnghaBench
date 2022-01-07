; ModuleID = '/home/carl/AnghaBench/numpy/numpy/linalg/lapack_lite/extr_f2c_blas.c_dswap_.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/linalg/lapack_lite/extr_f2c_blas.c_dswap_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@dswap_.i__ = internal global i32 0, align 4
@dswap_.m = internal global i32 0, align 4
@dswap_.ix = internal global i32 0, align 4
@dswap_.iy = internal global i32 0, align 4
@dswap_.mp1 = internal global i32 0, align 4
@dswap_.dtemp = internal global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dswap_(i32* %0, i32* %1, i32* %2, i32* %3, i32* %4) #0 {
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
  br label %217

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
  br label %95

30:                                               ; preds = %25, %21
  store i32 1, i32* @dswap_.ix, align 4
  store i32 1, i32* @dswap_.iy, align 4
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
  store i32 %42, i32* @dswap_.ix, align 4
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
  store i32 %55, i32* @dswap_.iy, align 4
  br label %56

56:                                               ; preds = %47, %43
  %57 = load i32*, i32** %7, align 8
  %58 = load i32, i32* %57, align 4
  store i32 %58, i32* %12, align 4
  store i32 1, i32* @dswap_.i__, align 4
  br label %59

59:                                               ; preds = %91, %56
  %60 = load i32, i32* @dswap_.i__, align 4
  %61 = load i32, i32* %12, align 4
  %62 = icmp sle i32 %60, %61
  br i1 %62, label %63, label %94

63:                                               ; preds = %59
  %64 = load i32*, i32** %8, align 8
  %65 = load i32, i32* @dswap_.ix, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  %68 = load i32, i32* %67, align 4
  store i32 %68, i32* @dswap_.dtemp, align 4
  %69 = load i32*, i32** %10, align 8
  %70 = load i32, i32* @dswap_.iy, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = load i32*, i32** %8, align 8
  %75 = load i32, i32* @dswap_.ix, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  store i32 %73, i32* %77, align 4
  %78 = load i32, i32* @dswap_.dtemp, align 4
  %79 = load i32*, i32** %10, align 8
  %80 = load i32, i32* @dswap_.iy, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %79, i64 %81
  store i32 %78, i32* %82, align 4
  %83 = load i32*, i32** %9, align 8
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @dswap_.ix, align 4
  %86 = add nsw i32 %85, %84
  store i32 %86, i32* @dswap_.ix, align 4
  %87 = load i32*, i32** %11, align 8
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @dswap_.iy, align 4
  %90 = add nsw i32 %89, %88
  store i32 %90, i32* @dswap_.iy, align 4
  br label %91

91:                                               ; preds = %63
  %92 = load i32, i32* @dswap_.i__, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* @dswap_.i__, align 4
  br label %59

94:                                               ; preds = %59
  store i32 0, i32* %6, align 4
  br label %217

95:                                               ; preds = %29
  %96 = load i32*, i32** %7, align 8
  %97 = load i32, i32* %96, align 4
  %98 = srem i32 %97, 3
  store i32 %98, i32* @dswap_.m, align 4
  %99 = load i32, i32* @dswap_.m, align 4
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %95
  br label %137

102:                                              ; preds = %95
  %103 = load i32, i32* @dswap_.m, align 4
  store i32 %103, i32* %12, align 4
  store i32 1, i32* @dswap_.i__, align 4
  br label %104

104:                                              ; preds = %128, %102
  %105 = load i32, i32* @dswap_.i__, align 4
  %106 = load i32, i32* %12, align 4
  %107 = icmp sle i32 %105, %106
  br i1 %107, label %108, label %131

108:                                              ; preds = %104
  %109 = load i32*, i32** %8, align 8
  %110 = load i32, i32* @dswap_.i__, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %109, i64 %111
  %113 = load i32, i32* %112, align 4
  store i32 %113, i32* @dswap_.dtemp, align 4
  %114 = load i32*, i32** %10, align 8
  %115 = load i32, i32* @dswap_.i__, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %114, i64 %116
  %118 = load i32, i32* %117, align 4
  %119 = load i32*, i32** %8, align 8
  %120 = load i32, i32* @dswap_.i__, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i32, i32* %119, i64 %121
  store i32 %118, i32* %122, align 4
  %123 = load i32, i32* @dswap_.dtemp, align 4
  %124 = load i32*, i32** %10, align 8
  %125 = load i32, i32* @dswap_.i__, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i32, i32* %124, i64 %126
  store i32 %123, i32* %127, align 4
  br label %128

128:                                              ; preds = %108
  %129 = load i32, i32* @dswap_.i__, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* @dswap_.i__, align 4
  br label %104

131:                                              ; preds = %104
  %132 = load i32*, i32** %7, align 8
  %133 = load i32, i32* %132, align 4
  %134 = icmp slt i32 %133, 3
  br i1 %134, label %135, label %136

135:                                              ; preds = %131
  store i32 0, i32* %6, align 4
  br label %217

136:                                              ; preds = %131
  br label %137

137:                                              ; preds = %136, %101
  %138 = load i32, i32* @dswap_.m, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* @dswap_.mp1, align 4
  %140 = load i32*, i32** %7, align 8
  %141 = load i32, i32* %140, align 4
  store i32 %141, i32* %12, align 4
  %142 = load i32, i32* @dswap_.mp1, align 4
  store i32 %142, i32* @dswap_.i__, align 4
  br label %143

143:                                              ; preds = %213, %137
  %144 = load i32, i32* @dswap_.i__, align 4
  %145 = load i32, i32* %12, align 4
  %146 = icmp sle i32 %144, %145
  br i1 %146, label %147, label %216

147:                                              ; preds = %143
  %148 = load i32*, i32** %8, align 8
  %149 = load i32, i32* @dswap_.i__, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i32, i32* %148, i64 %150
  %152 = load i32, i32* %151, align 4
  store i32 %152, i32* @dswap_.dtemp, align 4
  %153 = load i32*, i32** %10, align 8
  %154 = load i32, i32* @dswap_.i__, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i32, i32* %153, i64 %155
  %157 = load i32, i32* %156, align 4
  %158 = load i32*, i32** %8, align 8
  %159 = load i32, i32* @dswap_.i__, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i32, i32* %158, i64 %160
  store i32 %157, i32* %161, align 4
  %162 = load i32, i32* @dswap_.dtemp, align 4
  %163 = load i32*, i32** %10, align 8
  %164 = load i32, i32* @dswap_.i__, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i32, i32* %163, i64 %165
  store i32 %162, i32* %166, align 4
  %167 = load i32*, i32** %8, align 8
  %168 = load i32, i32* @dswap_.i__, align 4
  %169 = add nsw i32 %168, 1
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i32, i32* %167, i64 %170
  %172 = load i32, i32* %171, align 4
  store i32 %172, i32* @dswap_.dtemp, align 4
  %173 = load i32*, i32** %10, align 8
  %174 = load i32, i32* @dswap_.i__, align 4
  %175 = add nsw i32 %174, 1
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds i32, i32* %173, i64 %176
  %178 = load i32, i32* %177, align 4
  %179 = load i32*, i32** %8, align 8
  %180 = load i32, i32* @dswap_.i__, align 4
  %181 = add nsw i32 %180, 1
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds i32, i32* %179, i64 %182
  store i32 %178, i32* %183, align 4
  %184 = load i32, i32* @dswap_.dtemp, align 4
  %185 = load i32*, i32** %10, align 8
  %186 = load i32, i32* @dswap_.i__, align 4
  %187 = add nsw i32 %186, 1
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds i32, i32* %185, i64 %188
  store i32 %184, i32* %189, align 4
  %190 = load i32*, i32** %8, align 8
  %191 = load i32, i32* @dswap_.i__, align 4
  %192 = add nsw i32 %191, 2
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds i32, i32* %190, i64 %193
  %195 = load i32, i32* %194, align 4
  store i32 %195, i32* @dswap_.dtemp, align 4
  %196 = load i32*, i32** %10, align 8
  %197 = load i32, i32* @dswap_.i__, align 4
  %198 = add nsw i32 %197, 2
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds i32, i32* %196, i64 %199
  %201 = load i32, i32* %200, align 4
  %202 = load i32*, i32** %8, align 8
  %203 = load i32, i32* @dswap_.i__, align 4
  %204 = add nsw i32 %203, 2
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds i32, i32* %202, i64 %205
  store i32 %201, i32* %206, align 4
  %207 = load i32, i32* @dswap_.dtemp, align 4
  %208 = load i32*, i32** %10, align 8
  %209 = load i32, i32* @dswap_.i__, align 4
  %210 = add nsw i32 %209, 2
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds i32, i32* %208, i64 %211
  store i32 %207, i32* %212, align 4
  br label %213

213:                                              ; preds = %147
  %214 = load i32, i32* @dswap_.i__, align 4
  %215 = add nsw i32 %214, 3
  store i32 %215, i32* @dswap_.i__, align 4
  br label %143

216:                                              ; preds = %143
  store i32 0, i32* %6, align 4
  br label %217

217:                                              ; preds = %216, %135, %94, %20
  %218 = load i32, i32* %6, align 4
  ret i32 %218
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
