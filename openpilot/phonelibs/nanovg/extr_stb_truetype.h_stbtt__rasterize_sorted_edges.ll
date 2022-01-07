; ModuleID = '/home/carl/AnghaBench/openpilot/phonelibs/nanovg/extr_stb_truetype.h_stbtt__rasterize_sorted_edges.c'
source_filename = "/home/carl/AnghaBench/openpilot/phonelibs/nanovg/extr_stb_truetype.h_stbtt__rasterize_sorted_edges.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, i32, i8*, i32 }
%struct.TYPE_15__ = type { float, float }
%struct.TYPE_14__ = type { i32, i32, i32 }
%struct.TYPE_17__ = type { float, i32, %struct.TYPE_17__*, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_16__*, %struct.TYPE_15__*, i32, i32, i32, i32, i8*)* @stbtt__rasterize_sorted_edges to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stbtt__rasterize_sorted_edges(%struct.TYPE_16__* %0, %struct.TYPE_15__* %1, i32 %2, i32 %3, i32 %4, i32 %5, i8* %6) #0 {
  %8 = alloca %struct.TYPE_16__*, align 8
  %9 = alloca %struct.TYPE_15__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca %struct.TYPE_14__, align 4
  %16 = alloca %struct.TYPE_17__*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca [129 x float], align 16
  %21 = alloca float*, align 8
  %22 = alloca float*, align 8
  %23 = alloca float, align 4
  %24 = alloca float, align 4
  %25 = alloca %struct.TYPE_17__**, align 8
  %26 = alloca %struct.TYPE_17__*, align 8
  %27 = alloca %struct.TYPE_17__*, align 8
  %28 = alloca float, align 4
  %29 = alloca float, align 4
  %30 = alloca i32, align 4
  %31 = alloca %struct.TYPE_17__*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %8, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i8* %6, i8** %14, align 8
  %32 = bitcast %struct.TYPE_14__* %15 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %32, i8 0, i64 12, i1 false)
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %16, align 8
  store i32 0, i32* %18, align 4
  %33 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp sgt i32 %35, 64
  br i1 %36, label %37, label %49

37:                                               ; preds = %7
  %38 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = mul nsw i32 %40, 2
  %42 = add nsw i32 %41, 1
  %43 = sext i32 %42 to i64
  %44 = mul i64 %43, 4
  %45 = trunc i64 %44 to i32
  %46 = load i8*, i8** %14, align 8
  %47 = call i64 @STBTT_malloc(i32 %45, i8* %46)
  %48 = inttoptr i64 %47 to float*
  store float* %48, float** %21, align 8
  br label %51

49:                                               ; preds = %7
  %50 = getelementptr inbounds [129 x float], [129 x float]* %20, i64 0, i64 0
  store float* %50, float** %21, align 8
  br label %51

51:                                               ; preds = %49, %37
  %52 = load float*, float** %21, align 8
  %53 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds float, float* %52, i64 %56
  store float* %57, float** %22, align 8
  %58 = load i32, i32* %13, align 4
  store i32 %58, i32* %17, align 4
  %59 = load i32, i32* %13, align 4
  %60 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = add nsw i32 %59, %62
  %64 = sitofp i32 %63 to float
  %65 = fadd float %64, 1.000000e+00
  %66 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %67 = load i32, i32* %10, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %69, i32 0, i32 0
  store float %65, float* %70, align 4
  br label %71

71:                                               ; preds = %253, %51
  %72 = load i32, i32* %18, align 4
  %73 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = icmp slt i32 %72, %75
  br i1 %76, label %77, label %258

77:                                               ; preds = %71
  %78 = load i32, i32* %17, align 4
  %79 = sitofp i32 %78 to float
  %80 = fadd float %79, 0.000000e+00
  store float %80, float* %23, align 4
  %81 = load i32, i32* %17, align 4
  %82 = sitofp i32 %81 to float
  %83 = fadd float %82, 1.000000e+00
  store float %83, float* %24, align 4
  store %struct.TYPE_17__** %16, %struct.TYPE_17__*** %25, align 8
  %84 = load float*, float** %21, align 8
  %85 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %86 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = sext i32 %87 to i64
  %89 = mul i64 %88, 4
  %90 = trunc i64 %89 to i32
  %91 = call i32 @STBTT_memset(float* %84, i32 0, i32 %90)
  %92 = load float*, float** %22, align 8
  %93 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %94 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = add nsw i32 %95, 1
  %97 = sext i32 %96 to i64
  %98 = mul i64 %97, 4
  %99 = trunc i64 %98 to i32
  %100 = call i32 @STBTT_memset(float* %92, i32 0, i32 %99)
  br label %101

101:                                              ; preds = %130, %77
  %102 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %25, align 8
  %103 = load %struct.TYPE_17__*, %struct.TYPE_17__** %102, align 8
  %104 = icmp ne %struct.TYPE_17__* %103, null
  br i1 %104, label %105, label %131

105:                                              ; preds = %101
  %106 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %25, align 8
  %107 = load %struct.TYPE_17__*, %struct.TYPE_17__** %106, align 8
  store %struct.TYPE_17__* %107, %struct.TYPE_17__** %26, align 8
  %108 = load %struct.TYPE_17__*, %struct.TYPE_17__** %26, align 8
  %109 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %108, i32 0, i32 0
  %110 = load float, float* %109, align 8
  %111 = load float, float* %23, align 4
  %112 = fcmp ole float %110, %111
  br i1 %112, label %113, label %126

113:                                              ; preds = %105
  %114 = load %struct.TYPE_17__*, %struct.TYPE_17__** %26, align 8
  %115 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %114, i32 0, i32 2
  %116 = load %struct.TYPE_17__*, %struct.TYPE_17__** %115, align 8
  %117 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %25, align 8
  store %struct.TYPE_17__* %116, %struct.TYPE_17__** %117, align 8
  %118 = load %struct.TYPE_17__*, %struct.TYPE_17__** %26, align 8
  %119 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @STBTT_assert(i32 %120)
  %122 = load %struct.TYPE_17__*, %struct.TYPE_17__** %26, align 8
  %123 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %122, i32 0, i32 1
  store i32 0, i32* %123, align 4
  %124 = load %struct.TYPE_17__*, %struct.TYPE_17__** %26, align 8
  %125 = call i32 @stbtt__hheap_free(%struct.TYPE_14__* %15, %struct.TYPE_17__* %124)
  br label %130

126:                                              ; preds = %105
  %127 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %25, align 8
  %128 = load %struct.TYPE_17__*, %struct.TYPE_17__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %128, i32 0, i32 2
  store %struct.TYPE_17__** %129, %struct.TYPE_17__*** %25, align 8
  br label %130

130:                                              ; preds = %126, %113
  br label %101

131:                                              ; preds = %101
  br label %132

132:                                              ; preds = %167, %131
  %133 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %134 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %133, i32 0, i32 0
  %135 = load float, float* %134, align 4
  %136 = load float, float* %24, align 4
  %137 = fcmp ole float %135, %136
  br i1 %137, label %138, label %170

138:                                              ; preds = %132
  %139 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %140 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %139, i32 0, i32 0
  %141 = load float, float* %140, align 4
  %142 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %143 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %142, i32 0, i32 1
  %144 = load float, float* %143, align 4
  %145 = fcmp une float %141, %144
  br i1 %145, label %146, label %167

146:                                              ; preds = %138
  %147 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %148 = load i32, i32* %12, align 4
  %149 = load float, float* %23, align 4
  %150 = load i8*, i8** %14, align 8
  %151 = call %struct.TYPE_17__* @stbtt__new_active(%struct.TYPE_14__* %15, %struct.TYPE_15__* %147, i32 %148, float %149, i8* %150)
  store %struct.TYPE_17__* %151, %struct.TYPE_17__** %27, align 8
  %152 = load %struct.TYPE_17__*, %struct.TYPE_17__** %27, align 8
  %153 = icmp ne %struct.TYPE_17__* %152, null
  br i1 %153, label %154, label %166

154:                                              ; preds = %146
  %155 = load %struct.TYPE_17__*, %struct.TYPE_17__** %27, align 8
  %156 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %155, i32 0, i32 0
  %157 = load float, float* %156, align 8
  %158 = load float, float* %23, align 4
  %159 = fcmp oge float %157, %158
  %160 = zext i1 %159 to i32
  %161 = call i32 @STBTT_assert(i32 %160)
  %162 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %163 = load %struct.TYPE_17__*, %struct.TYPE_17__** %27, align 8
  %164 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %163, i32 0, i32 2
  store %struct.TYPE_17__* %162, %struct.TYPE_17__** %164, align 8
  %165 = load %struct.TYPE_17__*, %struct.TYPE_17__** %27, align 8
  store %struct.TYPE_17__* %165, %struct.TYPE_17__** %16, align 8
  br label %166

166:                                              ; preds = %154, %146
  br label %167

167:                                              ; preds = %166, %138
  %168 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %169 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %168, i32 1
  store %struct.TYPE_15__* %169, %struct.TYPE_15__** %9, align 8
  br label %132

170:                                              ; preds = %132
  %171 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %172 = icmp ne %struct.TYPE_17__* %171, null
  br i1 %172, label %173, label %183

173:                                              ; preds = %170
  %174 = load float*, float** %21, align 8
  %175 = load float*, float** %22, align 8
  %176 = getelementptr inbounds float, float* %175, i64 1
  %177 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %178 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  %180 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %181 = load float, float* %23, align 4
  %182 = call i32 @stbtt__fill_active_edges_new(float* %174, float* %176, i32 %179, %struct.TYPE_17__* %180, float %181)
  br label %183

183:                                              ; preds = %173, %170
  store float 0.000000e+00, float* %28, align 4
  store i32 0, i32* %19, align 4
  br label %184

184:                                              ; preds = %230, %183
  %185 = load i32, i32* %19, align 4
  %186 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %187 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = icmp slt i32 %185, %188
  br i1 %189, label %190, label %233

190:                                              ; preds = %184
  %191 = load float*, float** %22, align 8
  %192 = load i32, i32* %19, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds float, float* %191, i64 %193
  %195 = load float, float* %194, align 4
  %196 = load float, float* %28, align 4
  %197 = fadd float %196, %195
  store float %197, float* %28, align 4
  %198 = load float*, float** %21, align 8
  %199 = load i32, i32* %19, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds float, float* %198, i64 %200
  %202 = load float, float* %201, align 4
  %203 = load float, float* %28, align 4
  %204 = fadd float %202, %203
  store float %204, float* %29, align 4
  %205 = load float, float* %29, align 4
  %206 = call i64 @fabs(float %205)
  %207 = sitofp i64 %206 to float
  %208 = fmul float %207, 2.550000e+02
  %209 = fadd float %208, 5.000000e-01
  store float %209, float* %29, align 4
  %210 = load float, float* %29, align 4
  %211 = fptosi float %210 to i32
  store i32 %211, i32* %30, align 4
  %212 = load i32, i32* %30, align 4
  %213 = icmp sgt i32 %212, 255
  br i1 %213, label %214, label %215

214:                                              ; preds = %190
  store i32 255, i32* %30, align 4
  br label %215

215:                                              ; preds = %214, %190
  %216 = load i32, i32* %30, align 4
  %217 = trunc i32 %216 to i8
  %218 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %219 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %218, i32 0, i32 2
  %220 = load i8*, i8** %219, align 8
  %221 = load i32, i32* %18, align 4
  %222 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %223 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %222, i32 0, i32 3
  %224 = load i32, i32* %223, align 8
  %225 = mul nsw i32 %221, %224
  %226 = load i32, i32* %19, align 4
  %227 = add nsw i32 %225, %226
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds i8, i8* %220, i64 %228
  store i8 %217, i8* %229, align 1
  br label %230

230:                                              ; preds = %215
  %231 = load i32, i32* %19, align 4
  %232 = add nsw i32 %231, 1
  store i32 %232, i32* %19, align 4
  br label %184

233:                                              ; preds = %184
  store %struct.TYPE_17__** %16, %struct.TYPE_17__*** %25, align 8
  br label %234

234:                                              ; preds = %238, %233
  %235 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %25, align 8
  %236 = load %struct.TYPE_17__*, %struct.TYPE_17__** %235, align 8
  %237 = icmp ne %struct.TYPE_17__* %236, null
  br i1 %237, label %238, label %253

238:                                              ; preds = %234
  %239 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %25, align 8
  %240 = load %struct.TYPE_17__*, %struct.TYPE_17__** %239, align 8
  store %struct.TYPE_17__* %240, %struct.TYPE_17__** %31, align 8
  %241 = load %struct.TYPE_17__*, %struct.TYPE_17__** %31, align 8
  %242 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %241, i32 0, i32 3
  %243 = load i64, i64* %242, align 8
  %244 = load %struct.TYPE_17__*, %struct.TYPE_17__** %31, align 8
  %245 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %244, i32 0, i32 4
  %246 = load i32, i32* %245, align 8
  %247 = sext i32 %246 to i64
  %248 = add nsw i64 %247, %243
  %249 = trunc i64 %248 to i32
  store i32 %249, i32* %245, align 8
  %250 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %25, align 8
  %251 = load %struct.TYPE_17__*, %struct.TYPE_17__** %250, align 8
  %252 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %251, i32 0, i32 2
  store %struct.TYPE_17__** %252, %struct.TYPE_17__*** %25, align 8
  br label %234

253:                                              ; preds = %234
  %254 = load i32, i32* %17, align 4
  %255 = add nsw i32 %254, 1
  store i32 %255, i32* %17, align 4
  %256 = load i32, i32* %18, align 4
  %257 = add nsw i32 %256, 1
  store i32 %257, i32* %18, align 4
  br label %71

258:                                              ; preds = %71
  %259 = load i8*, i8** %14, align 8
  %260 = call i32 @stbtt__hheap_cleanup(%struct.TYPE_14__* %15, i8* %259)
  %261 = load float*, float** %21, align 8
  %262 = getelementptr inbounds [129 x float], [129 x float]* %20, i64 0, i64 0
  %263 = icmp ne float* %261, %262
  br i1 %263, label %264, label %268

264:                                              ; preds = %258
  %265 = load float*, float** %21, align 8
  %266 = load i8*, i8** %14, align 8
  %267 = call i32 @STBTT_free(float* %265, i8* %266)
  br label %268

268:                                              ; preds = %264, %258
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @STBTT_malloc(i32, i8*) #2

declare dso_local i32 @STBTT_memset(float*, i32, i32) #2

declare dso_local i32 @STBTT_assert(i32) #2

declare dso_local i32 @stbtt__hheap_free(%struct.TYPE_14__*, %struct.TYPE_17__*) #2

declare dso_local %struct.TYPE_17__* @stbtt__new_active(%struct.TYPE_14__*, %struct.TYPE_15__*, i32, float, i8*) #2

declare dso_local i32 @stbtt__fill_active_edges_new(float*, float*, i32, %struct.TYPE_17__*, float) #2

declare dso_local i64 @fabs(float) #2

declare dso_local i32 @stbtt__hheap_cleanup(%struct.TYPE_14__*, i8*) #2

declare dso_local i32 @STBTT_free(float*, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
