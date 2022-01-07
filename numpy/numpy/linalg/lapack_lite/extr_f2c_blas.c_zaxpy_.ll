; ModuleID = '/home/carl/AnghaBench/numpy/numpy/linalg/lapack_lite/extr_f2c_blas.c_zaxpy_.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/linalg/lapack_lite/extr_f2c_blas.c_zaxpy_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }

@zaxpy_.i__ = internal global i32 0, align 4
@zaxpy_.ix = internal global i32 0, align 4
@zaxpy_.iy = internal global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zaxpy_(i32* %0, %struct.TYPE_5__* %1, %struct.TYPE_5__* %2, i32* %3, %struct.TYPE_5__* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_5__*, align 8
  %10 = alloca %struct.TYPE_5__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_5__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_5__, align 4
  %19 = alloca %struct.TYPE_5__, align 4
  store i32* %0, i32** %8, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %9, align 8
  store %struct.TYPE_5__* %2, %struct.TYPE_5__** %10, align 8
  store i32* %3, i32** %11, align 8
  store %struct.TYPE_5__* %4, %struct.TYPE_5__** %12, align 8
  store i32* %5, i32** %13, align 8
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 -1
  store %struct.TYPE_5__* %21, %struct.TYPE_5__** %12, align 8
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 -1
  store %struct.TYPE_5__* %23, %struct.TYPE_5__** %10, align 8
  %24 = load i32*, i32** %8, align 8
  %25 = load i32, i32* %24, align 4
  %26 = icmp sle i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %6
  store i32 0, i32* %7, align 4
  br label %263

28:                                               ; preds = %6
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %30 = call i32 @dcabs1_(%struct.TYPE_5__* %29)
  %31 = sitofp i32 %30 to double
  %32 = fcmp oeq double %31, 0.000000e+00
  br i1 %32, label %33, label %34

33:                                               ; preds = %28
  store i32 0, i32* %7, align 4
  br label %263

34:                                               ; preds = %28
  %35 = load i32*, i32** %11, align 8
  %36 = load i32, i32* %35, align 4
  %37 = icmp eq i32 %36, 1
  br i1 %37, label %38, label %43

38:                                               ; preds = %34
  %39 = load i32*, i32** %13, align 8
  %40 = load i32, i32* %39, align 4
  %41 = icmp eq i32 %40, 1
  br i1 %41, label %42, label %43

42:                                               ; preds = %38
  br label %170

43:                                               ; preds = %38, %34
  store i32 1, i32* @zaxpy_.ix, align 4
  store i32 1, i32* @zaxpy_.iy, align 4
  %44 = load i32*, i32** %11, align 8
  %45 = load i32, i32* %44, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %56

47:                                               ; preds = %43
  %48 = load i32*, i32** %8, align 8
  %49 = load i32, i32* %48, align 4
  %50 = sub nsw i32 0, %49
  %51 = add nsw i32 %50, 1
  %52 = load i32*, i32** %11, align 8
  %53 = load i32, i32* %52, align 4
  %54 = mul nsw i32 %51, %53
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* @zaxpy_.ix, align 4
  br label %56

56:                                               ; preds = %47, %43
  %57 = load i32*, i32** %13, align 8
  %58 = load i32, i32* %57, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %69

60:                                               ; preds = %56
  %61 = load i32*, i32** %8, align 8
  %62 = load i32, i32* %61, align 4
  %63 = sub nsw i32 0, %62
  %64 = add nsw i32 %63, 1
  %65 = load i32*, i32** %13, align 8
  %66 = load i32, i32* %65, align 4
  %67 = mul nsw i32 %64, %66
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* @zaxpy_.iy, align 4
  br label %69

69:                                               ; preds = %60, %56
  %70 = load i32*, i32** %8, align 8
  %71 = load i32, i32* %70, align 4
  store i32 %71, i32* %14, align 4
  store i32 1, i32* @zaxpy_.i__, align 4
  br label %72

72:                                               ; preds = %166, %69
  %73 = load i32, i32* @zaxpy_.i__, align 4
  %74 = load i32, i32* %14, align 4
  %75 = icmp sle i32 %73, %74
  br i1 %75, label %76, label %169

76:                                               ; preds = %72
  %77 = load i32, i32* @zaxpy_.iy, align 4
  store i32 %77, i32* %15, align 4
  %78 = load i32, i32* @zaxpy_.iy, align 4
  store i32 %78, i32* %16, align 4
  %79 = load i32, i32* @zaxpy_.ix, align 4
  store i32 %79, i32* %17, align 4
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %84 = load i32, i32* %17, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = mul nsw i32 %82, %88
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %94 = load i32, i32* %17, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = mul nsw i32 %92, %98
  %100 = sub nsw i32 %89, %99
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  store i32 %100, i32* %101, align 4
  %102 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %106 = load i32, i32* %17, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = mul nsw i32 %104, %110
  %112 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %116 = load i32, i32* %17, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i64 %117
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = mul nsw i32 %114, %120
  %122 = add nsw i32 %111, %121
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 1
  store i32 %122, i32* %123, align 4
  %124 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %125 = load i32, i32* %16, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %124, i64 %126
  %128 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = add nsw i32 %129, %131
  %133 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  store i32 %132, i32* %133, align 4
  %134 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %135 = load i32, i32* %16, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %134, i64 %136
  %138 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = add nsw i32 %139, %141
  %143 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 1
  store i32 %142, i32* %143, align 4
  %144 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %147 = load i32, i32* %15, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %146, i64 %148
  %150 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %149, i32 0, i32 0
  store i32 %145, i32* %150, align 4
  %151 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %154 = load i32, i32* %15, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %153, i64 %155
  %157 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %156, i32 0, i32 1
  store i32 %152, i32* %157, align 4
  %158 = load i32*, i32** %11, align 8
  %159 = load i32, i32* %158, align 4
  %160 = load i32, i32* @zaxpy_.ix, align 4
  %161 = add nsw i32 %160, %159
  store i32 %161, i32* @zaxpy_.ix, align 4
  %162 = load i32*, i32** %13, align 8
  %163 = load i32, i32* %162, align 4
  %164 = load i32, i32* @zaxpy_.iy, align 4
  %165 = add nsw i32 %164, %163
  store i32 %165, i32* @zaxpy_.iy, align 4
  br label %166

166:                                              ; preds = %76
  %167 = load i32, i32* @zaxpy_.i__, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* @zaxpy_.i__, align 4
  br label %72

169:                                              ; preds = %72
  store i32 0, i32* %7, align 4
  br label %263

170:                                              ; preds = %42
  %171 = load i32*, i32** %8, align 8
  %172 = load i32, i32* %171, align 4
  store i32 %172, i32* %14, align 4
  store i32 1, i32* @zaxpy_.i__, align 4
  br label %173

173:                                              ; preds = %259, %170
  %174 = load i32, i32* @zaxpy_.i__, align 4
  %175 = load i32, i32* %14, align 4
  %176 = icmp sle i32 %174, %175
  br i1 %176, label %177, label %262

177:                                              ; preds = %173
  %178 = load i32, i32* @zaxpy_.i__, align 4
  store i32 %178, i32* %15, align 4
  %179 = load i32, i32* @zaxpy_.i__, align 4
  store i32 %179, i32* %16, align 4
  %180 = load i32, i32* @zaxpy_.i__, align 4
  store i32 %180, i32* %17, align 4
  %181 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %182 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 4
  %184 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %185 = load i32, i32* %17, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %184, i64 %186
  %188 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 4
  %190 = mul nsw i32 %183, %189
  %191 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %192 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %191, i32 0, i32 1
  %193 = load i32, i32* %192, align 4
  %194 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %195 = load i32, i32* %17, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %194, i64 %196
  %198 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %197, i32 0, i32 1
  %199 = load i32, i32* %198, align 4
  %200 = mul nsw i32 %193, %199
  %201 = sub nsw i32 %190, %200
  %202 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  store i32 %201, i32* %202, align 4
  %203 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %204 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 4
  %206 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %207 = load i32, i32* %17, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %206, i64 %208
  %210 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %209, i32 0, i32 1
  %211 = load i32, i32* %210, align 4
  %212 = mul nsw i32 %205, %211
  %213 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %214 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %213, i32 0, i32 1
  %215 = load i32, i32* %214, align 4
  %216 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %217 = load i32, i32* %17, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %216, i64 %218
  %220 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 4
  %222 = mul nsw i32 %215, %221
  %223 = add nsw i32 %212, %222
  %224 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 1
  store i32 %223, i32* %224, align 4
  %225 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %226 = load i32, i32* %16, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %225, i64 %227
  %229 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 4
  %231 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %232 = load i32, i32* %231, align 4
  %233 = add nsw i32 %230, %232
  %234 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  store i32 %233, i32* %234, align 4
  %235 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %236 = load i32, i32* %16, align 4
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %235, i64 %237
  %239 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %238, i32 0, i32 1
  %240 = load i32, i32* %239, align 4
  %241 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 1
  %242 = load i32, i32* %241, align 4
  %243 = add nsw i32 %240, %242
  %244 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 1
  store i32 %243, i32* %244, align 4
  %245 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %246 = load i32, i32* %245, align 4
  %247 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %248 = load i32, i32* %15, align 4
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %247, i64 %249
  %251 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %250, i32 0, i32 0
  store i32 %246, i32* %251, align 4
  %252 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 1
  %253 = load i32, i32* %252, align 4
  %254 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %255 = load i32, i32* %15, align 4
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %254, i64 %256
  %258 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %257, i32 0, i32 1
  store i32 %253, i32* %258, align 4
  br label %259

259:                                              ; preds = %177
  %260 = load i32, i32* @zaxpy_.i__, align 4
  %261 = add nsw i32 %260, 1
  store i32 %261, i32* @zaxpy_.i__, align 4
  br label %173

262:                                              ; preds = %173
  store i32 0, i32* %7, align 4
  br label %263

263:                                              ; preds = %262, %169, %33, %27
  %264 = load i32, i32* %7, align 4
  ret i32 %264
}

declare dso_local i32 @dcabs1_(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
