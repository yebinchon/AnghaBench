; ModuleID = '/home/carl/AnghaBench/openpilot/phonelibs/nanovg/extr_fontstash.h_fonsDrawDebug.c'
source_filename = "/home/carl/AnghaBench/openpilot/phonelibs/nanovg/extr_fontstash.h_fonsDrawDebug.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, %struct.TYPE_9__*, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { float, float, float }
%struct.TYPE_8__ = type { i32, i32 }

@FONS_VERTEX_COUNT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fonsDrawDebug(%struct.TYPE_10__* %0, float %1, float %2) #0 {
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store float %1, float* %5, align 4
  store float %2, float* %6, align 4
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %8, align 4
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %8, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %3
  br label %28

24:                                               ; preds = %3
  %25 = load i32, i32* %8, align 4
  %26 = sitofp i32 %25 to float
  %27 = fdiv float 1.000000e+00, %26
  br label %28

28:                                               ; preds = %24, %23
  %29 = phi float [ 0.000000e+00, %23 ], [ %27, %24 ]
  store float %29, float* %10, align 4
  %30 = load i32, i32* %9, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  br label %37

33:                                               ; preds = %28
  %34 = load i32, i32* %9, align 4
  %35 = sitofp i32 %34 to float
  %36 = fdiv float 1.000000e+00, %35
  br label %37

37:                                               ; preds = %33, %32
  %38 = phi float [ 0.000000e+00, %32 ], [ %36, %33 ]
  store float %38, float* %11, align 4
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = add nsw i64 %41, 6
  %43 = add nsw i64 %42, 6
  %44 = load i64, i64* @FONS_VERTEX_COUNT, align 8
  %45 = icmp sgt i64 %43, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %37
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %48 = call i32 @fons__flush(%struct.TYPE_10__* %47)
  br label %49

49:                                               ; preds = %46, %37
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %51 = load float, float* %5, align 4
  %52 = fadd float %51, 0.000000e+00
  %53 = load float, float* %6, align 4
  %54 = fadd float %53, 0.000000e+00
  %55 = load float, float* %10, align 4
  %56 = load float, float* %11, align 4
  %57 = call i32 @fons__vertex(%struct.TYPE_10__* %50, float %52, float %54, float %55, float %56, i32 268435455)
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %59 = load float, float* %5, align 4
  %60 = load i32, i32* %8, align 4
  %61 = sitofp i32 %60 to float
  %62 = fadd float %59, %61
  %63 = load float, float* %6, align 4
  %64 = load i32, i32* %9, align 4
  %65 = sitofp i32 %64 to float
  %66 = fadd float %63, %65
  %67 = load float, float* %10, align 4
  %68 = load float, float* %11, align 4
  %69 = call i32 @fons__vertex(%struct.TYPE_10__* %58, float %62, float %66, float %67, float %68, i32 268435455)
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %71 = load float, float* %5, align 4
  %72 = load i32, i32* %8, align 4
  %73 = sitofp i32 %72 to float
  %74 = fadd float %71, %73
  %75 = load float, float* %6, align 4
  %76 = fadd float %75, 0.000000e+00
  %77 = load float, float* %10, align 4
  %78 = load float, float* %11, align 4
  %79 = call i32 @fons__vertex(%struct.TYPE_10__* %70, float %74, float %76, float %77, float %78, i32 268435455)
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %81 = load float, float* %5, align 4
  %82 = fadd float %81, 0.000000e+00
  %83 = load float, float* %6, align 4
  %84 = fadd float %83, 0.000000e+00
  %85 = load float, float* %10, align 4
  %86 = load float, float* %11, align 4
  %87 = call i32 @fons__vertex(%struct.TYPE_10__* %80, float %82, float %84, float %85, float %86, i32 268435455)
  %88 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %89 = load float, float* %5, align 4
  %90 = fadd float %89, 0.000000e+00
  %91 = load float, float* %6, align 4
  %92 = load i32, i32* %9, align 4
  %93 = sitofp i32 %92 to float
  %94 = fadd float %91, %93
  %95 = load float, float* %10, align 4
  %96 = load float, float* %11, align 4
  %97 = call i32 @fons__vertex(%struct.TYPE_10__* %88, float %90, float %94, float %95, float %96, i32 268435455)
  %98 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %99 = load float, float* %5, align 4
  %100 = load i32, i32* %8, align 4
  %101 = sitofp i32 %100 to float
  %102 = fadd float %99, %101
  %103 = load float, float* %6, align 4
  %104 = load i32, i32* %9, align 4
  %105 = sitofp i32 %104 to float
  %106 = fadd float %103, %105
  %107 = load float, float* %10, align 4
  %108 = load float, float* %11, align 4
  %109 = call i32 @fons__vertex(%struct.TYPE_10__* %98, float %102, float %106, float %107, float %108, i32 268435455)
  %110 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %111 = load float, float* %5, align 4
  %112 = fadd float %111, 0.000000e+00
  %113 = load float, float* %6, align 4
  %114 = fadd float %113, 0.000000e+00
  %115 = call i32 @fons__vertex(%struct.TYPE_10__* %110, float %112, float %114, float 0.000000e+00, float 0.000000e+00, i32 -1)
  %116 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %117 = load float, float* %5, align 4
  %118 = load i32, i32* %8, align 4
  %119 = sitofp i32 %118 to float
  %120 = fadd float %117, %119
  %121 = load float, float* %6, align 4
  %122 = load i32, i32* %9, align 4
  %123 = sitofp i32 %122 to float
  %124 = fadd float %121, %123
  %125 = call i32 @fons__vertex(%struct.TYPE_10__* %116, float %120, float %124, float 1.000000e+00, float 1.000000e+00, i32 -1)
  %126 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %127 = load float, float* %5, align 4
  %128 = load i32, i32* %8, align 4
  %129 = sitofp i32 %128 to float
  %130 = fadd float %127, %129
  %131 = load float, float* %6, align 4
  %132 = fadd float %131, 0.000000e+00
  %133 = call i32 @fons__vertex(%struct.TYPE_10__* %126, float %130, float %132, float 1.000000e+00, float 0.000000e+00, i32 -1)
  %134 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %135 = load float, float* %5, align 4
  %136 = fadd float %135, 0.000000e+00
  %137 = load float, float* %6, align 4
  %138 = fadd float %137, 0.000000e+00
  %139 = call i32 @fons__vertex(%struct.TYPE_10__* %134, float %136, float %138, float 0.000000e+00, float 0.000000e+00, i32 -1)
  %140 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %141 = load float, float* %5, align 4
  %142 = fadd float %141, 0.000000e+00
  %143 = load float, float* %6, align 4
  %144 = load i32, i32* %9, align 4
  %145 = sitofp i32 %144 to float
  %146 = fadd float %143, %145
  %147 = call i32 @fons__vertex(%struct.TYPE_10__* %140, float %142, float %146, float 0.000000e+00, float 1.000000e+00, i32 -1)
  %148 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %149 = load float, float* %5, align 4
  %150 = load i32, i32* %8, align 4
  %151 = sitofp i32 %150 to float
  %152 = fadd float %149, %151
  %153 = load float, float* %6, align 4
  %154 = load i32, i32* %9, align 4
  %155 = sitofp i32 %154 to float
  %156 = fadd float %153, %155
  %157 = call i32 @fons__vertex(%struct.TYPE_10__* %148, float %152, float %156, float 1.000000e+00, float 1.000000e+00, i32 -1)
  store i32 0, i32* %7, align 4
  br label %158

158:                                              ; preds = %290, %49
  %159 = load i32, i32* %7, align 4
  %160 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %161 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %160, i32 0, i32 1
  %162 = load %struct.TYPE_9__*, %struct.TYPE_9__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = icmp slt i32 %159, %164
  br i1 %165, label %166, label %293

166:                                              ; preds = %158
  %167 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %168 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %167, i32 0, i32 1
  %169 = load %struct.TYPE_9__*, %struct.TYPE_9__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %169, i32 0, i32 1
  %171 = load %struct.TYPE_11__*, %struct.TYPE_11__** %170, align 8
  %172 = load i32, i32* %7, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %171, i64 %173
  store %struct.TYPE_11__* %174, %struct.TYPE_11__** %12, align 8
  %175 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %176 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %175, i32 0, i32 0
  %177 = load i64, i64* %176, align 8
  %178 = add nsw i64 %177, 6
  %179 = load i64, i64* @FONS_VERTEX_COUNT, align 8
  %180 = icmp sgt i64 %178, %179
  br i1 %180, label %181, label %184

181:                                              ; preds = %166
  %182 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %183 = call i32 @fons__flush(%struct.TYPE_10__* %182)
  br label %184

184:                                              ; preds = %181, %166
  %185 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %186 = load float, float* %5, align 4
  %187 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %188 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %187, i32 0, i32 0
  %189 = load float, float* %188, align 4
  %190 = fadd float %186, %189
  %191 = fadd float %190, 0.000000e+00
  %192 = load float, float* %6, align 4
  %193 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %194 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %193, i32 0, i32 1
  %195 = load float, float* %194, align 4
  %196 = fadd float %192, %195
  %197 = fadd float %196, 0.000000e+00
  %198 = load float, float* %10, align 4
  %199 = load float, float* %11, align 4
  %200 = call i32 @fons__vertex(%struct.TYPE_10__* %185, float %191, float %197, float %198, float %199, i32 -1073741569)
  %201 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %202 = load float, float* %5, align 4
  %203 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %204 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %203, i32 0, i32 0
  %205 = load float, float* %204, align 4
  %206 = fadd float %202, %205
  %207 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %208 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %207, i32 0, i32 2
  %209 = load float, float* %208, align 4
  %210 = fadd float %206, %209
  %211 = load float, float* %6, align 4
  %212 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %213 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %212, i32 0, i32 1
  %214 = load float, float* %213, align 4
  %215 = fadd float %211, %214
  %216 = fadd float %215, 1.000000e+00
  %217 = load float, float* %10, align 4
  %218 = load float, float* %11, align 4
  %219 = call i32 @fons__vertex(%struct.TYPE_10__* %201, float %210, float %216, float %217, float %218, i32 -1073741569)
  %220 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %221 = load float, float* %5, align 4
  %222 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %223 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %222, i32 0, i32 0
  %224 = load float, float* %223, align 4
  %225 = fadd float %221, %224
  %226 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %227 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %226, i32 0, i32 2
  %228 = load float, float* %227, align 4
  %229 = fadd float %225, %228
  %230 = load float, float* %6, align 4
  %231 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %232 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %231, i32 0, i32 1
  %233 = load float, float* %232, align 4
  %234 = fadd float %230, %233
  %235 = fadd float %234, 0.000000e+00
  %236 = load float, float* %10, align 4
  %237 = load float, float* %11, align 4
  %238 = call i32 @fons__vertex(%struct.TYPE_10__* %220, float %229, float %235, float %236, float %237, i32 -1073741569)
  %239 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %240 = load float, float* %5, align 4
  %241 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %242 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %241, i32 0, i32 0
  %243 = load float, float* %242, align 4
  %244 = fadd float %240, %243
  %245 = fadd float %244, 0.000000e+00
  %246 = load float, float* %6, align 4
  %247 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %248 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %247, i32 0, i32 1
  %249 = load float, float* %248, align 4
  %250 = fadd float %246, %249
  %251 = fadd float %250, 0.000000e+00
  %252 = load float, float* %10, align 4
  %253 = load float, float* %11, align 4
  %254 = call i32 @fons__vertex(%struct.TYPE_10__* %239, float %245, float %251, float %252, float %253, i32 -1073741569)
  %255 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %256 = load float, float* %5, align 4
  %257 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %258 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %257, i32 0, i32 0
  %259 = load float, float* %258, align 4
  %260 = fadd float %256, %259
  %261 = fadd float %260, 0.000000e+00
  %262 = load float, float* %6, align 4
  %263 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %264 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %263, i32 0, i32 1
  %265 = load float, float* %264, align 4
  %266 = fadd float %262, %265
  %267 = fadd float %266, 1.000000e+00
  %268 = load float, float* %10, align 4
  %269 = load float, float* %11, align 4
  %270 = call i32 @fons__vertex(%struct.TYPE_10__* %255, float %261, float %267, float %268, float %269, i32 -1073741569)
  %271 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %272 = load float, float* %5, align 4
  %273 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %274 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %273, i32 0, i32 0
  %275 = load float, float* %274, align 4
  %276 = fadd float %272, %275
  %277 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %278 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %277, i32 0, i32 2
  %279 = load float, float* %278, align 4
  %280 = fadd float %276, %279
  %281 = load float, float* %6, align 4
  %282 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %283 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %282, i32 0, i32 1
  %284 = load float, float* %283, align 4
  %285 = fadd float %281, %284
  %286 = fadd float %285, 1.000000e+00
  %287 = load float, float* %10, align 4
  %288 = load float, float* %11, align 4
  %289 = call i32 @fons__vertex(%struct.TYPE_10__* %271, float %280, float %286, float %287, float %288, i32 -1073741569)
  br label %290

290:                                              ; preds = %184
  %291 = load i32, i32* %7, align 4
  %292 = add nsw i32 %291, 1
  store i32 %292, i32* %7, align 4
  br label %158

293:                                              ; preds = %158
  %294 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %295 = call i32 @fons__flush(%struct.TYPE_10__* %294)
  ret void
}

declare dso_local i32 @fons__flush(%struct.TYPE_10__*) #1

declare dso_local i32 @fons__vertex(%struct.TYPE_10__*, float, float, float, float, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
