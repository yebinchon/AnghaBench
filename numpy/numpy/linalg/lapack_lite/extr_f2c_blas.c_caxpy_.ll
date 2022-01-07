; ModuleID = '/home/carl/AnghaBench/numpy/numpy/linalg/lapack_lite/extr_f2c_blas.c_caxpy_.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/linalg/lapack_lite/extr_f2c_blas.c_caxpy_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }

@caxpy_.i__ = internal global i32 0, align 4
@caxpy_.ix = internal global i32 0, align 4
@caxpy_.iy = internal global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @caxpy_(i32* %0, %struct.TYPE_5__* %1, %struct.TYPE_5__* %2, i32* %3, %struct.TYPE_5__* %4, i32* %5) #0 {
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
  br label %262

28:                                               ; preds = %6
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %30 = call float @scabs1_(%struct.TYPE_5__* %29)
  %31 = fcmp oeq float %30, 0.000000e+00
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  store i32 0, i32* %7, align 4
  br label %262

33:                                               ; preds = %28
  %34 = load i32*, i32** %11, align 8
  %35 = load i32, i32* %34, align 4
  %36 = icmp eq i32 %35, 1
  br i1 %36, label %37, label %42

37:                                               ; preds = %33
  %38 = load i32*, i32** %13, align 8
  %39 = load i32, i32* %38, align 4
  %40 = icmp eq i32 %39, 1
  br i1 %40, label %41, label %42

41:                                               ; preds = %37
  br label %169

42:                                               ; preds = %37, %33
  store i32 1, i32* @caxpy_.ix, align 4
  store i32 1, i32* @caxpy_.iy, align 4
  %43 = load i32*, i32** %11, align 8
  %44 = load i32, i32* %43, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %55

46:                                               ; preds = %42
  %47 = load i32*, i32** %8, align 8
  %48 = load i32, i32* %47, align 4
  %49 = sub nsw i32 0, %48
  %50 = add nsw i32 %49, 1
  %51 = load i32*, i32** %11, align 8
  %52 = load i32, i32* %51, align 4
  %53 = mul nsw i32 %50, %52
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* @caxpy_.ix, align 4
  br label %55

55:                                               ; preds = %46, %42
  %56 = load i32*, i32** %13, align 8
  %57 = load i32, i32* %56, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %68

59:                                               ; preds = %55
  %60 = load i32*, i32** %8, align 8
  %61 = load i32, i32* %60, align 4
  %62 = sub nsw i32 0, %61
  %63 = add nsw i32 %62, 1
  %64 = load i32*, i32** %13, align 8
  %65 = load i32, i32* %64, align 4
  %66 = mul nsw i32 %63, %65
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* @caxpy_.iy, align 4
  br label %68

68:                                               ; preds = %59, %55
  %69 = load i32*, i32** %8, align 8
  %70 = load i32, i32* %69, align 4
  store i32 %70, i32* %14, align 4
  store i32 1, i32* @caxpy_.i__, align 4
  br label %71

71:                                               ; preds = %165, %68
  %72 = load i32, i32* @caxpy_.i__, align 4
  %73 = load i32, i32* %14, align 4
  %74 = icmp sle i32 %72, %73
  br i1 %74, label %75, label %168

75:                                               ; preds = %71
  %76 = load i32, i32* @caxpy_.iy, align 4
  store i32 %76, i32* %15, align 4
  %77 = load i32, i32* @caxpy_.iy, align 4
  store i32 %77, i32* %16, align 4
  %78 = load i32, i32* @caxpy_.ix, align 4
  store i32 %78, i32* %17, align 4
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %83 = load i32, i32* %17, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = mul nsw i32 %81, %87
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %93 = load i32, i32* %17, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = mul nsw i32 %91, %97
  %99 = sub nsw i32 %88, %98
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  store i32 %99, i32* %100, align 4
  %101 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %105 = load i32, i32* %17, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i64 %106
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = mul nsw i32 %103, %109
  %111 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %115 = load i32, i32* %17, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i64 %116
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = mul nsw i32 %113, %119
  %121 = add nsw i32 %110, %120
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 1
  store i32 %121, i32* %122, align 4
  %123 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %124 = load i32, i32* %16, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %123, i64 %125
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = add nsw i32 %128, %130
  %132 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  store i32 %131, i32* %132, align 4
  %133 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %134 = load i32, i32* %16, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %133, i64 %135
  %137 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = add nsw i32 %138, %140
  %142 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 1
  store i32 %141, i32* %142, align 4
  %143 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %146 = load i32, i32* %15, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %145, i64 %147
  %149 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %148, i32 0, i32 0
  store i32 %144, i32* %149, align 4
  %150 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %153 = load i32, i32* %15, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %152, i64 %154
  %156 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %155, i32 0, i32 1
  store i32 %151, i32* %156, align 4
  %157 = load i32*, i32** %11, align 8
  %158 = load i32, i32* %157, align 4
  %159 = load i32, i32* @caxpy_.ix, align 4
  %160 = add nsw i32 %159, %158
  store i32 %160, i32* @caxpy_.ix, align 4
  %161 = load i32*, i32** %13, align 8
  %162 = load i32, i32* %161, align 4
  %163 = load i32, i32* @caxpy_.iy, align 4
  %164 = add nsw i32 %163, %162
  store i32 %164, i32* @caxpy_.iy, align 4
  br label %165

165:                                              ; preds = %75
  %166 = load i32, i32* @caxpy_.i__, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* @caxpy_.i__, align 4
  br label %71

168:                                              ; preds = %71
  store i32 0, i32* %7, align 4
  br label %262

169:                                              ; preds = %41
  %170 = load i32*, i32** %8, align 8
  %171 = load i32, i32* %170, align 4
  store i32 %171, i32* %14, align 4
  store i32 1, i32* @caxpy_.i__, align 4
  br label %172

172:                                              ; preds = %258, %169
  %173 = load i32, i32* @caxpy_.i__, align 4
  %174 = load i32, i32* %14, align 4
  %175 = icmp sle i32 %173, %174
  br i1 %175, label %176, label %261

176:                                              ; preds = %172
  %177 = load i32, i32* @caxpy_.i__, align 4
  store i32 %177, i32* %15, align 4
  %178 = load i32, i32* @caxpy_.i__, align 4
  store i32 %178, i32* %16, align 4
  %179 = load i32, i32* @caxpy_.i__, align 4
  store i32 %179, i32* %17, align 4
  %180 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %181 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 4
  %183 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %184 = load i32, i32* %17, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %183, i64 %185
  %187 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 4
  %189 = mul nsw i32 %182, %188
  %190 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %191 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 4
  %193 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %194 = load i32, i32* %17, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %193, i64 %195
  %197 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %196, i32 0, i32 1
  %198 = load i32, i32* %197, align 4
  %199 = mul nsw i32 %192, %198
  %200 = sub nsw i32 %189, %199
  %201 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  store i32 %200, i32* %201, align 4
  %202 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %203 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 4
  %205 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %206 = load i32, i32* %17, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %205, i64 %207
  %209 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %208, i32 0, i32 1
  %210 = load i32, i32* %209, align 4
  %211 = mul nsw i32 %204, %210
  %212 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %213 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %212, i32 0, i32 1
  %214 = load i32, i32* %213, align 4
  %215 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %216 = load i32, i32* %17, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %215, i64 %217
  %219 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 4
  %221 = mul nsw i32 %214, %220
  %222 = add nsw i32 %211, %221
  %223 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 1
  store i32 %222, i32* %223, align 4
  %224 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %225 = load i32, i32* %16, align 4
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %224, i64 %226
  %228 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 4
  %230 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %231 = load i32, i32* %230, align 4
  %232 = add nsw i32 %229, %231
  %233 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  store i32 %232, i32* %233, align 4
  %234 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %235 = load i32, i32* %16, align 4
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %234, i64 %236
  %238 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %237, i32 0, i32 1
  %239 = load i32, i32* %238, align 4
  %240 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 1
  %241 = load i32, i32* %240, align 4
  %242 = add nsw i32 %239, %241
  %243 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 1
  store i32 %242, i32* %243, align 4
  %244 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %245 = load i32, i32* %244, align 4
  %246 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %247 = load i32, i32* %15, align 4
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %246, i64 %248
  %250 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %249, i32 0, i32 0
  store i32 %245, i32* %250, align 4
  %251 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 1
  %252 = load i32, i32* %251, align 4
  %253 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %254 = load i32, i32* %15, align 4
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %253, i64 %255
  %257 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %256, i32 0, i32 1
  store i32 %252, i32* %257, align 4
  br label %258

258:                                              ; preds = %176
  %259 = load i32, i32* @caxpy_.i__, align 4
  %260 = add nsw i32 %259, 1
  store i32 %260, i32* @caxpy_.i__, align 4
  br label %172

261:                                              ; preds = %172
  store i32 0, i32* %7, align 4
  br label %262

262:                                              ; preds = %261, %168, %32, %27
  %263 = load i32, i32* %7, align 4
  ret i32 %263
}

declare dso_local float @scabs1_(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
