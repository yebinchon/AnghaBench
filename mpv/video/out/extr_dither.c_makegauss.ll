; ModuleID = '/home/carl/AnghaBench/mpv/video/out/extr_dither.c_makegauss.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/extr_dither.c_makegauss.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctx = type { i32, i32, i32, i32, i64, i64*, i32 }

@MAX_SIZEB = common dso_local global i32 0, align 4
@UINT64_MAX = common dso_local global double 0.000000e+00, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ctx*, i32)* @makegauss to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @makegauss(%struct.ctx* %0, i32 %1) #0 {
  %3 = alloca %struct.ctx*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca double, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca double, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  store %struct.ctx* %0, %struct.ctx** %3, align 8
  store i32 %1, i32* %4, align 4
  %19 = load i32, i32* %4, align 4
  %20 = icmp uge i32 %19, 1
  br i1 %20, label %21, label %25

21:                                               ; preds = %2
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @MAX_SIZEB, align 4
  %24 = icmp ule i32 %22, %23
  br label %25

25:                                               ; preds = %21, %2
  %26 = phi i1 [ false, %2 ], [ %24, %21 ]
  %27 = zext i1 %26 to i32
  %28 = call i32 @assert(i32 %27)
  %29 = load %struct.ctx*, %struct.ctx** %3, align 8
  %30 = getelementptr inbounds %struct.ctx, %struct.ctx* %29, i32 0, i32 6
  %31 = call i32 @av_lfg_init(i32* %30, i32 123)
  %32 = load i32, i32* %4, align 4
  %33 = load %struct.ctx*, %struct.ctx** %3, align 8
  %34 = getelementptr inbounds %struct.ctx, %struct.ctx* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 8
  %35 = load %struct.ctx*, %struct.ctx** %3, align 8
  %36 = getelementptr inbounds %struct.ctx, %struct.ctx* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = shl i32 1, %37
  %39 = load %struct.ctx*, %struct.ctx** %3, align 8
  %40 = getelementptr inbounds %struct.ctx, %struct.ctx* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 4
  %41 = load %struct.ctx*, %struct.ctx** %3, align 8
  %42 = getelementptr inbounds %struct.ctx, %struct.ctx* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.ctx*, %struct.ctx** %3, align 8
  %45 = getelementptr inbounds %struct.ctx, %struct.ctx* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = mul nsw i32 %43, %46
  %48 = load %struct.ctx*, %struct.ctx** %3, align 8
  %49 = getelementptr inbounds %struct.ctx, %struct.ctx* %48, i32 0, i32 2
  store i32 %47, i32* %49, align 8
  %50 = load %struct.ctx*, %struct.ctx** %3, align 8
  %51 = getelementptr inbounds %struct.ctx, %struct.ctx* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = sdiv i32 %52, 2
  %54 = sub nsw i32 %53, 1
  %55 = load %struct.ctx*, %struct.ctx** %3, align 8
  %56 = getelementptr inbounds %struct.ctx, %struct.ctx* %55, i32 0, i32 3
  store i32 %54, i32* %56, align 4
  %57 = load %struct.ctx*, %struct.ctx** %3, align 8
  %58 = load %struct.ctx*, %struct.ctx** %3, align 8
  %59 = getelementptr inbounds %struct.ctx, %struct.ctx* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.ctx*, %struct.ctx** %3, align 8
  %62 = getelementptr inbounds %struct.ctx, %struct.ctx* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 4
  %64 = call i64 @XY(%struct.ctx* %57, i32 %60, i32 %63)
  %65 = load %struct.ctx*, %struct.ctx** %3, align 8
  %66 = getelementptr inbounds %struct.ctx, %struct.ctx* %65, i32 0, i32 4
  store i64 %64, i64* %66, align 8
  %67 = load %struct.ctx*, %struct.ctx** %3, align 8
  %68 = getelementptr inbounds %struct.ctx, %struct.ctx* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 4
  %70 = mul nsw i32 %69, 2
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %5, align 4
  %72 = load i32, i32* %5, align 4
  %73 = load i32, i32* %5, align 4
  %74 = mul i32 %72, %73
  store i32 %74, i32* %6, align 4
  store i64 0, i64* %7, align 8
  br label %75

75:                                               ; preds = %88, %25
  %76 = load i64, i64* %7, align 8
  %77 = load %struct.ctx*, %struct.ctx** %3, align 8
  %78 = getelementptr inbounds %struct.ctx, %struct.ctx* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = sext i32 %79 to i64
  %81 = icmp ult i64 %76, %80
  br i1 %81, label %82, label %91

82:                                               ; preds = %75
  %83 = load %struct.ctx*, %struct.ctx** %3, align 8
  %84 = getelementptr inbounds %struct.ctx, %struct.ctx* %83, i32 0, i32 5
  %85 = load i64*, i64** %84, align 8
  %86 = load i64, i64* %7, align 8
  %87 = getelementptr inbounds i64, i64* %85, i64 %86
  store i64 0, i64* %87, align 8
  br label %88

88:                                               ; preds = %82
  %89 = load i64, i64* %7, align 8
  %90 = add i64 %89, 1
  store i64 %90, i64* %7, align 8
  br label %75

91:                                               ; preds = %75
  %92 = load double, double* @UINT64_MAX, align 8
  %93 = fdiv double 1.500000e+00, %92
  %94 = load i32, i32* %6, align 4
  %95 = uitofp i32 %94 to double
  %96 = fmul double %93, %95
  %97 = call double @log(double %96) #3
  %98 = fneg double %97
  %99 = load %struct.ctx*, %struct.ctx** %3, align 8
  %100 = getelementptr inbounds %struct.ctx, %struct.ctx* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 4
  %102 = sitofp i32 %101 to double
  %103 = fdiv double %98, %102
  store double %103, double* %8, align 8
  store i64 0, i64* %9, align 8
  br label %104

104:                                              ; preds = %266, %91
  %105 = load i64, i64* %9, align 8
  %106 = load %struct.ctx*, %struct.ctx** %3, align 8
  %107 = getelementptr inbounds %struct.ctx, %struct.ctx* %106, i32 0, i32 3
  %108 = load i32, i32* %107, align 4
  %109 = sext i32 %108 to i64
  %110 = icmp ule i64 %105, %109
  br i1 %110, label %111, label %269

111:                                              ; preds = %104
  store i64 0, i64* %10, align 8
  br label %112

112:                                              ; preds = %262, %111
  %113 = load i64, i64* %10, align 8
  %114 = load i64, i64* %9, align 8
  %115 = icmp ule i64 %113, %114
  br i1 %115, label %116, label %265

116:                                              ; preds = %112
  %117 = load i64, i64* %10, align 8
  %118 = trunc i64 %117 to i32
  %119 = load %struct.ctx*, %struct.ctx** %3, align 8
  %120 = getelementptr inbounds %struct.ctx, %struct.ctx* %119, i32 0, i32 3
  %121 = load i32, i32* %120, align 4
  %122 = sub nsw i32 %118, %121
  store i32 %122, i32* %11, align 4
  %123 = load i64, i64* %9, align 8
  %124 = trunc i64 %123 to i32
  %125 = load %struct.ctx*, %struct.ctx** %3, align 8
  %126 = getelementptr inbounds %struct.ctx, %struct.ctx* %125, i32 0, i32 3
  %127 = load i32, i32* %126, align 4
  %128 = sub nsw i32 %124, %127
  store i32 %128, i32* %12, align 4
  %129 = load i32, i32* %11, align 4
  %130 = load i32, i32* %11, align 4
  %131 = mul nsw i32 %129, %130
  %132 = load i32, i32* %12, align 4
  %133 = load i32, i32* %12, align 4
  %134 = mul nsw i32 %132, %133
  %135 = add nsw i32 %131, %134
  store i32 %135, i32* %13, align 4
  %136 = load i32, i32* %13, align 4
  %137 = call double @sqrt(i32 %136)
  %138 = fneg double %137
  %139 = load double, double* %8, align 8
  %140 = fmul double %138, %139
  %141 = call double @exp(double %140) #3
  store double %141, double* %14, align 8
  %142 = load double, double* %14, align 8
  %143 = load i32, i32* %6, align 4
  %144 = uitofp i32 %143 to double
  %145 = fdiv double %142, %144
  %146 = load double, double* @UINT64_MAX, align 8
  %147 = fmul double %145, %146
  %148 = fptosi double %147 to i64
  store i64 %148, i64* %15, align 8
  %149 = load i64, i64* %15, align 8
  %150 = load %struct.ctx*, %struct.ctx** %3, align 8
  %151 = getelementptr inbounds %struct.ctx, %struct.ctx* %150, i32 0, i32 5
  %152 = load i64*, i64** %151, align 8
  %153 = load %struct.ctx*, %struct.ctx** %3, align 8
  %154 = load i32, i32* %5, align 4
  %155 = sub i32 %154, 1
  %156 = zext i32 %155 to i64
  %157 = load i64, i64* %9, align 8
  %158 = sub i64 %156, %157
  %159 = trunc i64 %158 to i32
  %160 = load i32, i32* %5, align 4
  %161 = sub i32 %160, 1
  %162 = zext i32 %161 to i64
  %163 = load i64, i64* %10, align 8
  %164 = sub i64 %162, %163
  %165 = trunc i64 %164 to i32
  %166 = call i64 @XY(%struct.ctx* %153, i32 %159, i32 %165)
  %167 = getelementptr inbounds i64, i64* %152, i64 %166
  store i64 %149, i64* %167, align 8
  %168 = load %struct.ctx*, %struct.ctx** %3, align 8
  %169 = getelementptr inbounds %struct.ctx, %struct.ctx* %168, i32 0, i32 5
  %170 = load i64*, i64** %169, align 8
  %171 = load %struct.ctx*, %struct.ctx** %3, align 8
  %172 = load i32, i32* %5, align 4
  %173 = sub i32 %172, 1
  %174 = zext i32 %173 to i64
  %175 = load i64, i64* %10, align 8
  %176 = sub i64 %174, %175
  %177 = trunc i64 %176 to i32
  %178 = load i32, i32* %5, align 4
  %179 = sub i32 %178, 1
  %180 = zext i32 %179 to i64
  %181 = load i64, i64* %9, align 8
  %182 = sub i64 %180, %181
  %183 = trunc i64 %182 to i32
  %184 = call i64 @XY(%struct.ctx* %171, i32 %177, i32 %183)
  %185 = getelementptr inbounds i64, i64* %170, i64 %184
  store i64 %149, i64* %185, align 8
  %186 = load %struct.ctx*, %struct.ctx** %3, align 8
  %187 = getelementptr inbounds %struct.ctx, %struct.ctx* %186, i32 0, i32 5
  %188 = load i64*, i64** %187, align 8
  %189 = load %struct.ctx*, %struct.ctx** %3, align 8
  %190 = load i32, i32* %5, align 4
  %191 = sub i32 %190, 1
  %192 = zext i32 %191 to i64
  %193 = load i64, i64* %9, align 8
  %194 = sub i64 %192, %193
  %195 = trunc i64 %194 to i32
  %196 = load i64, i64* %10, align 8
  %197 = trunc i64 %196 to i32
  %198 = call i64 @XY(%struct.ctx* %189, i32 %195, i32 %197)
  %199 = getelementptr inbounds i64, i64* %188, i64 %198
  store i64 %149, i64* %199, align 8
  %200 = load %struct.ctx*, %struct.ctx** %3, align 8
  %201 = getelementptr inbounds %struct.ctx, %struct.ctx* %200, i32 0, i32 5
  %202 = load i64*, i64** %201, align 8
  %203 = load %struct.ctx*, %struct.ctx** %3, align 8
  %204 = load i32, i32* %5, align 4
  %205 = sub i32 %204, 1
  %206 = zext i32 %205 to i64
  %207 = load i64, i64* %10, align 8
  %208 = sub i64 %206, %207
  %209 = trunc i64 %208 to i32
  %210 = load i64, i64* %9, align 8
  %211 = trunc i64 %210 to i32
  %212 = call i64 @XY(%struct.ctx* %203, i32 %209, i32 %211)
  %213 = getelementptr inbounds i64, i64* %202, i64 %212
  store i64 %149, i64* %213, align 8
  %214 = load %struct.ctx*, %struct.ctx** %3, align 8
  %215 = getelementptr inbounds %struct.ctx, %struct.ctx* %214, i32 0, i32 5
  %216 = load i64*, i64** %215, align 8
  %217 = load %struct.ctx*, %struct.ctx** %3, align 8
  %218 = load i64, i64* %9, align 8
  %219 = trunc i64 %218 to i32
  %220 = load i32, i32* %5, align 4
  %221 = sub i32 %220, 1
  %222 = zext i32 %221 to i64
  %223 = load i64, i64* %10, align 8
  %224 = sub i64 %222, %223
  %225 = trunc i64 %224 to i32
  %226 = call i64 @XY(%struct.ctx* %217, i32 %219, i32 %225)
  %227 = getelementptr inbounds i64, i64* %216, i64 %226
  store i64 %149, i64* %227, align 8
  %228 = load %struct.ctx*, %struct.ctx** %3, align 8
  %229 = getelementptr inbounds %struct.ctx, %struct.ctx* %228, i32 0, i32 5
  %230 = load i64*, i64** %229, align 8
  %231 = load %struct.ctx*, %struct.ctx** %3, align 8
  %232 = load i64, i64* %10, align 8
  %233 = trunc i64 %232 to i32
  %234 = load i32, i32* %5, align 4
  %235 = sub i32 %234, 1
  %236 = zext i32 %235 to i64
  %237 = load i64, i64* %9, align 8
  %238 = sub i64 %236, %237
  %239 = trunc i64 %238 to i32
  %240 = call i64 @XY(%struct.ctx* %231, i32 %233, i32 %239)
  %241 = getelementptr inbounds i64, i64* %230, i64 %240
  store i64 %149, i64* %241, align 8
  %242 = load %struct.ctx*, %struct.ctx** %3, align 8
  %243 = getelementptr inbounds %struct.ctx, %struct.ctx* %242, i32 0, i32 5
  %244 = load i64*, i64** %243, align 8
  %245 = load %struct.ctx*, %struct.ctx** %3, align 8
  %246 = load i64, i64* %9, align 8
  %247 = trunc i64 %246 to i32
  %248 = load i64, i64* %10, align 8
  %249 = trunc i64 %248 to i32
  %250 = call i64 @XY(%struct.ctx* %245, i32 %247, i32 %249)
  %251 = getelementptr inbounds i64, i64* %244, i64 %250
  store i64 %149, i64* %251, align 8
  %252 = load %struct.ctx*, %struct.ctx** %3, align 8
  %253 = getelementptr inbounds %struct.ctx, %struct.ctx* %252, i32 0, i32 5
  %254 = load i64*, i64** %253, align 8
  %255 = load %struct.ctx*, %struct.ctx** %3, align 8
  %256 = load i64, i64* %10, align 8
  %257 = trunc i64 %256 to i32
  %258 = load i64, i64* %9, align 8
  %259 = trunc i64 %258 to i32
  %260 = call i64 @XY(%struct.ctx* %255, i32 %257, i32 %259)
  %261 = getelementptr inbounds i64, i64* %254, i64 %260
  store i64 %149, i64* %261, align 8
  br label %262

262:                                              ; preds = %116
  %263 = load i64, i64* %10, align 8
  %264 = add i64 %263, 1
  store i64 %264, i64* %10, align 8
  br label %112

265:                                              ; preds = %112
  br label %266

266:                                              ; preds = %265
  %267 = load i64, i64* %9, align 8
  %268 = add i64 %267, 1
  store i64 %268, i64* %9, align 8
  br label %104

269:                                              ; preds = %104
  store i64 0, i64* %16, align 8
  store i64 0, i64* %17, align 8
  br label %270

270:                                              ; preds = %292, %269
  %271 = load i64, i64* %17, align 8
  %272 = load %struct.ctx*, %struct.ctx** %3, align 8
  %273 = getelementptr inbounds %struct.ctx, %struct.ctx* %272, i32 0, i32 2
  %274 = load i32, i32* %273, align 8
  %275 = sext i32 %274 to i64
  %276 = icmp ult i64 %271, %275
  br i1 %276, label %277, label %295

277:                                              ; preds = %270
  %278 = load i64, i64* %16, align 8
  store i64 %278, i64* %18, align 8
  %279 = load %struct.ctx*, %struct.ctx** %3, align 8
  %280 = getelementptr inbounds %struct.ctx, %struct.ctx* %279, i32 0, i32 5
  %281 = load i64*, i64** %280, align 8
  %282 = load i64, i64* %17, align 8
  %283 = getelementptr inbounds i64, i64* %281, i64 %282
  %284 = load i64, i64* %283, align 8
  %285 = load i64, i64* %16, align 8
  %286 = add nsw i64 %285, %284
  store i64 %286, i64* %16, align 8
  %287 = load i64, i64* %16, align 8
  %288 = load i64, i64* %18, align 8
  %289 = icmp sge i64 %287, %288
  %290 = zext i1 %289 to i32
  %291 = call i32 @assert(i32 %290)
  br label %292

292:                                              ; preds = %277
  %293 = load i64, i64* %17, align 8
  %294 = add i64 %293, 1
  store i64 %294, i64* %17, align 8
  br label %270

295:                                              ; preds = %270
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @av_lfg_init(i32*, i32) #1

declare dso_local i64 @XY(%struct.ctx*, i32, i32) #1

; Function Attrs: nounwind
declare dso_local double @log(double) #2

; Function Attrs: nounwind
declare dso_local double @exp(double) #2

declare dso_local double @sqrt(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
