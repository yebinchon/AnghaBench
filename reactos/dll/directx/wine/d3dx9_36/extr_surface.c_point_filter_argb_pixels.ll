; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_surface.c_point_filter_argb_pixels.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_surface.c_point_filter_argb_pixels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.volume = type { i32, i32, i32 }
%struct.pixel_format_desc = type { i32, i64, i32 (%struct.vec4*, %struct.vec4*)*, i32 (%struct.vec4*, %struct.vec4*, i32*)* }
%struct.vec4 = type { float }
%struct.argb_conversion_info = type { i64* }

@D3DFMT_A8R8G8B8 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @point_filter_argb_pixels(i32* %0, i32 %1, i32 %2, %struct.volume* %3, %struct.pixel_format_desc* %4, i32* %5, i32 %6, i32 %7, %struct.volume* %8, %struct.pixel_format_desc* %9, i64 %10, i32* %11) #0 {
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.volume*, align 8
  %17 = alloca %struct.pixel_format_desc*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.volume*, align 8
  %22 = alloca %struct.pixel_format_desc*, align 8
  %23 = alloca i64, align 8
  %24 = alloca i32*, align 8
  %25 = alloca %struct.argb_conversion_info, align 8
  %26 = alloca %struct.argb_conversion_info, align 8
  %27 = alloca %struct.pixel_format_desc*, align 8
  %28 = alloca [4 x i64], align 16
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32*, align 8
  %33 = alloca i32*, align 8
  %34 = alloca i32*, align 8
  %35 = alloca i32*, align 8
  %36 = alloca i32*, align 8
  %37 = alloca i64, align 8
  %38 = alloca i64, align 8
  %39 = alloca %struct.vec4, align 4
  %40 = alloca %struct.vec4, align 4
  %41 = alloca i64, align 8
  store i32* %0, i32** %13, align 8
  store i32 %1, i32* %14, align 4
  store i32 %2, i32* %15, align 4
  store %struct.volume* %3, %struct.volume** %16, align 8
  store %struct.pixel_format_desc* %4, %struct.pixel_format_desc** %17, align 8
  store i32* %5, i32** %18, align 8
  store i32 %6, i32* %19, align 4
  store i32 %7, i32* %20, align 4
  store %struct.volume* %8, %struct.volume** %21, align 8
  store %struct.pixel_format_desc* %9, %struct.pixel_format_desc** %22, align 8
  store i64 %10, i64* %23, align 8
  store i32* %11, i32** %24, align 8
  store %struct.pixel_format_desc* null, %struct.pixel_format_desc** %27, align 8
  %42 = getelementptr inbounds [4 x i64], [4 x i64]* %28, i64 0, i64 0
  %43 = call i32 @ZeroMemory(i64* %42, i32 32)
  %44 = load %struct.pixel_format_desc*, %struct.pixel_format_desc** %17, align 8
  %45 = load %struct.pixel_format_desc*, %struct.pixel_format_desc** %22, align 8
  %46 = call i32 @init_argb_conversion_info(%struct.pixel_format_desc* %44, %struct.pixel_format_desc* %45, %struct.argb_conversion_info* %25)
  %47 = load i64, i64* %23, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %12
  %50 = load i32, i32* @D3DFMT_A8R8G8B8, align 4
  %51 = call %struct.pixel_format_desc* @get_format_info(i32 %50)
  store %struct.pixel_format_desc* %51, %struct.pixel_format_desc** %27, align 8
  %52 = load %struct.pixel_format_desc*, %struct.pixel_format_desc** %17, align 8
  %53 = load %struct.pixel_format_desc*, %struct.pixel_format_desc** %27, align 8
  %54 = call i32 @init_argb_conversion_info(%struct.pixel_format_desc* %52, %struct.pixel_format_desc* %53, %struct.argb_conversion_info* %26)
  br label %55

55:                                               ; preds = %49, %12
  store i32 0, i32* %31, align 4
  br label %56

56:                                               ; preds = %254, %55
  %57 = load i32, i32* %31, align 4
  %58 = load %struct.volume*, %struct.volume** %21, align 8
  %59 = getelementptr inbounds %struct.volume, %struct.volume* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = icmp slt i32 %57, %60
  br i1 %61, label %62, label %257

62:                                               ; preds = %56
  %63 = load i32*, i32** %18, align 8
  %64 = load i32, i32* %31, align 4
  %65 = load i32, i32* %20, align 4
  %66 = mul nsw i32 %64, %65
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %63, i64 %67
  store i32* %68, i32** %32, align 8
  %69 = load i32*, i32** %13, align 8
  %70 = load i32, i32* %15, align 4
  %71 = load i32, i32* %31, align 4
  %72 = load %struct.volume*, %struct.volume** %16, align 8
  %73 = getelementptr inbounds %struct.volume, %struct.volume* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = mul nsw i32 %71, %74
  %76 = load %struct.volume*, %struct.volume** %21, align 8
  %77 = getelementptr inbounds %struct.volume, %struct.volume* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = sdiv i32 %75, %78
  %80 = mul nsw i32 %70, %79
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %69, i64 %81
  store i32* %82, i32** %33, align 8
  store i32 0, i32* %30, align 4
  br label %83

83:                                               ; preds = %250, %62
  %84 = load i32, i32* %30, align 4
  %85 = load %struct.volume*, %struct.volume** %21, align 8
  %86 = getelementptr inbounds %struct.volume, %struct.volume* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = icmp slt i32 %84, %87
  br i1 %88, label %89, label %253

89:                                               ; preds = %83
  %90 = load i32*, i32** %32, align 8
  %91 = load i32, i32* %30, align 4
  %92 = load i32, i32* %19, align 4
  %93 = mul nsw i32 %91, %92
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %90, i64 %94
  store i32* %95, i32** %34, align 8
  %96 = load i32*, i32** %33, align 8
  %97 = load i32, i32* %14, align 4
  %98 = load i32, i32* %30, align 4
  %99 = load %struct.volume*, %struct.volume** %16, align 8
  %100 = getelementptr inbounds %struct.volume, %struct.volume* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = mul nsw i32 %98, %101
  %103 = load %struct.volume*, %struct.volume** %21, align 8
  %104 = getelementptr inbounds %struct.volume, %struct.volume* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = sdiv i32 %102, %105
  %107 = mul nsw i32 %97, %106
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %96, i64 %108
  store i32* %109, i32** %35, align 8
  store i32 0, i32* %29, align 4
  br label %110

110:                                              ; preds = %246, %89
  %111 = load i32, i32* %29, align 4
  %112 = load %struct.volume*, %struct.volume** %21, align 8
  %113 = getelementptr inbounds %struct.volume, %struct.volume* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 4
  %115 = icmp slt i32 %111, %114
  br i1 %115, label %116, label %249

116:                                              ; preds = %110
  %117 = load i32*, i32** %35, align 8
  %118 = load i32, i32* %29, align 4
  %119 = load %struct.volume*, %struct.volume** %16, align 8
  %120 = getelementptr inbounds %struct.volume, %struct.volume* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 4
  %122 = mul nsw i32 %118, %121
  %123 = load %struct.volume*, %struct.volume** %21, align 8
  %124 = getelementptr inbounds %struct.volume, %struct.volume* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 4
  %126 = sdiv i32 %122, %125
  %127 = load %struct.pixel_format_desc*, %struct.pixel_format_desc** %17, align 8
  %128 = getelementptr inbounds %struct.pixel_format_desc, %struct.pixel_format_desc* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = mul nsw i32 %126, %129
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i32, i32* %117, i64 %131
  store i32* %132, i32** %36, align 8
  %133 = load %struct.pixel_format_desc*, %struct.pixel_format_desc** %17, align 8
  %134 = getelementptr inbounds %struct.pixel_format_desc, %struct.pixel_format_desc* %133, i32 0, i32 3
  %135 = load i32 (%struct.vec4*, %struct.vec4*, i32*)*, i32 (%struct.vec4*, %struct.vec4*, i32*)** %134, align 8
  %136 = icmp ne i32 (%struct.vec4*, %struct.vec4*, i32*)* %135, null
  br i1 %136, label %192, label %137

137:                                              ; preds = %116
  %138 = load %struct.pixel_format_desc*, %struct.pixel_format_desc** %22, align 8
  %139 = getelementptr inbounds %struct.pixel_format_desc, %struct.pixel_format_desc* %138, i32 0, i32 2
  %140 = load i32 (%struct.vec4*, %struct.vec4*)*, i32 (%struct.vec4*, %struct.vec4*)** %139, align 8
  %141 = icmp ne i32 (%struct.vec4*, %struct.vec4*)* %140, null
  br i1 %141, label %192, label %142

142:                                              ; preds = %137
  %143 = load %struct.pixel_format_desc*, %struct.pixel_format_desc** %17, align 8
  %144 = getelementptr inbounds %struct.pixel_format_desc, %struct.pixel_format_desc* %143, i32 0, i32 1
  %145 = load i64, i64* %144, align 8
  %146 = load %struct.pixel_format_desc*, %struct.pixel_format_desc** %22, align 8
  %147 = getelementptr inbounds %struct.pixel_format_desc, %struct.pixel_format_desc* %146, i32 0, i32 1
  %148 = load i64, i64* %147, align 8
  %149 = icmp eq i64 %145, %148
  br i1 %149, label %150, label %192

150:                                              ; preds = %142
  %151 = load %struct.pixel_format_desc*, %struct.pixel_format_desc** %17, align 8
  %152 = getelementptr inbounds %struct.pixel_format_desc, %struct.pixel_format_desc* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = icmp sle i32 %153, 4
  br i1 %154, label %155, label %192

155:                                              ; preds = %150
  %156 = load %struct.pixel_format_desc*, %struct.pixel_format_desc** %22, align 8
  %157 = getelementptr inbounds %struct.pixel_format_desc, %struct.pixel_format_desc* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = icmp sle i32 %158, 4
  br i1 %159, label %160, label %192

160:                                              ; preds = %155
  %161 = load i32*, i32** %36, align 8
  %162 = getelementptr inbounds [4 x i64], [4 x i64]* %28, i64 0, i64 0
  %163 = call i32 @get_relevant_argb_components(%struct.argb_conversion_info* %25, i32* %161, i64* %162)
  %164 = getelementptr inbounds [4 x i64], [4 x i64]* %28, i64 0, i64 0
  %165 = call i64 @make_argb_color(%struct.argb_conversion_info* %25, i64* %164)
  store i64 %165, i64* %37, align 8
  %166 = load i64, i64* %23, align 8
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %186

168:                                              ; preds = %160
  %169 = load i32*, i32** %36, align 8
  %170 = getelementptr inbounds [4 x i64], [4 x i64]* %28, i64 0, i64 0
  %171 = call i32 @get_relevant_argb_components(%struct.argb_conversion_info* %26, i32* %169, i64* %170)
  %172 = getelementptr inbounds [4 x i64], [4 x i64]* %28, i64 0, i64 0
  %173 = call i64 @make_argb_color(%struct.argb_conversion_info* %26, i64* %172)
  store i64 %173, i64* %38, align 8
  %174 = load i64, i64* %38, align 8
  %175 = load i64, i64* %23, align 8
  %176 = icmp eq i64 %174, %175
  br i1 %176, label %177, label %185

177:                                              ; preds = %168
  %178 = getelementptr inbounds %struct.argb_conversion_info, %struct.argb_conversion_info* %25, i32 0, i32 0
  %179 = load i64*, i64** %178, align 8
  %180 = getelementptr inbounds i64, i64* %179, i64 0
  %181 = load i64, i64* %180, align 8
  %182 = xor i64 %181, -1
  %183 = load i64, i64* %37, align 8
  %184 = and i64 %183, %182
  store i64 %184, i64* %37, align 8
  br label %185

185:                                              ; preds = %177, %168
  br label %186

186:                                              ; preds = %185, %160
  %187 = load i32*, i32** %34, align 8
  %188 = load %struct.pixel_format_desc*, %struct.pixel_format_desc** %22, align 8
  %189 = getelementptr inbounds %struct.pixel_format_desc, %struct.pixel_format_desc* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 8
  %191 = call i32 @memcpy(i32* %187, i64* %37, i32 %190)
  br label %239

192:                                              ; preds = %155, %150, %142, %137, %116
  %193 = load %struct.pixel_format_desc*, %struct.pixel_format_desc** %17, align 8
  %194 = load i32*, i32** %36, align 8
  %195 = call i32 @format_to_vec4(%struct.pixel_format_desc* %193, i32* %194, %struct.vec4* %39)
  %196 = load %struct.pixel_format_desc*, %struct.pixel_format_desc** %17, align 8
  %197 = getelementptr inbounds %struct.pixel_format_desc, %struct.pixel_format_desc* %196, i32 0, i32 3
  %198 = load i32 (%struct.vec4*, %struct.vec4*, i32*)*, i32 (%struct.vec4*, %struct.vec4*, i32*)** %197, align 8
  %199 = icmp ne i32 (%struct.vec4*, %struct.vec4*, i32*)* %198, null
  br i1 %199, label %200, label %206

200:                                              ; preds = %192
  %201 = load %struct.pixel_format_desc*, %struct.pixel_format_desc** %17, align 8
  %202 = getelementptr inbounds %struct.pixel_format_desc, %struct.pixel_format_desc* %201, i32 0, i32 3
  %203 = load i32 (%struct.vec4*, %struct.vec4*, i32*)*, i32 (%struct.vec4*, %struct.vec4*, i32*)** %202, align 8
  %204 = load i32*, i32** %24, align 8
  %205 = call i32 %203(%struct.vec4* %39, %struct.vec4* %40, i32* %204)
  br label %209

206:                                              ; preds = %192
  %207 = bitcast %struct.vec4* %40 to i8*
  %208 = bitcast %struct.vec4* %39 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %207, i8* align 4 %208, i64 4, i1 false)
  br label %209

209:                                              ; preds = %206, %200
  %210 = load %struct.pixel_format_desc*, %struct.pixel_format_desc** %27, align 8
  %211 = icmp ne %struct.pixel_format_desc* %210, null
  br i1 %211, label %212, label %222

212:                                              ; preds = %209
  %213 = load %struct.pixel_format_desc*, %struct.pixel_format_desc** %27, align 8
  %214 = bitcast i64* %41 to i32*
  %215 = call i32 @format_from_vec4(%struct.pixel_format_desc* %213, %struct.vec4* %40, i32* %214)
  %216 = load i64, i64* %41, align 8
  %217 = load i64, i64* %23, align 8
  %218 = icmp eq i64 %216, %217
  br i1 %218, label %219, label %221

219:                                              ; preds = %212
  %220 = getelementptr inbounds %struct.vec4, %struct.vec4* %40, i32 0, i32 0
  store float 0.000000e+00, float* %220, align 4
  br label %221

221:                                              ; preds = %219, %212
  br label %222

222:                                              ; preds = %221, %209
  %223 = load %struct.pixel_format_desc*, %struct.pixel_format_desc** %22, align 8
  %224 = getelementptr inbounds %struct.pixel_format_desc, %struct.pixel_format_desc* %223, i32 0, i32 2
  %225 = load i32 (%struct.vec4*, %struct.vec4*)*, i32 (%struct.vec4*, %struct.vec4*)** %224, align 8
  %226 = icmp ne i32 (%struct.vec4*, %struct.vec4*)* %225, null
  br i1 %226, label %227, label %232

227:                                              ; preds = %222
  %228 = load %struct.pixel_format_desc*, %struct.pixel_format_desc** %22, align 8
  %229 = getelementptr inbounds %struct.pixel_format_desc, %struct.pixel_format_desc* %228, i32 0, i32 2
  %230 = load i32 (%struct.vec4*, %struct.vec4*)*, i32 (%struct.vec4*, %struct.vec4*)** %229, align 8
  %231 = call i32 %230(%struct.vec4* %40, %struct.vec4* %39)
  br label %235

232:                                              ; preds = %222
  %233 = bitcast %struct.vec4* %39 to i8*
  %234 = bitcast %struct.vec4* %40 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %233, i8* align 4 %234, i64 4, i1 false)
  br label %235

235:                                              ; preds = %232, %227
  %236 = load %struct.pixel_format_desc*, %struct.pixel_format_desc** %22, align 8
  %237 = load i32*, i32** %34, align 8
  %238 = call i32 @format_from_vec4(%struct.pixel_format_desc* %236, %struct.vec4* %39, i32* %237)
  br label %239

239:                                              ; preds = %235, %186
  %240 = load %struct.pixel_format_desc*, %struct.pixel_format_desc** %22, align 8
  %241 = getelementptr inbounds %struct.pixel_format_desc, %struct.pixel_format_desc* %240, i32 0, i32 0
  %242 = load i32, i32* %241, align 8
  %243 = load i32*, i32** %34, align 8
  %244 = sext i32 %242 to i64
  %245 = getelementptr inbounds i32, i32* %243, i64 %244
  store i32* %245, i32** %34, align 8
  br label %246

246:                                              ; preds = %239
  %247 = load i32, i32* %29, align 4
  %248 = add nsw i32 %247, 1
  store i32 %248, i32* %29, align 4
  br label %110

249:                                              ; preds = %110
  br label %250

250:                                              ; preds = %249
  %251 = load i32, i32* %30, align 4
  %252 = add nsw i32 %251, 1
  store i32 %252, i32* %30, align 4
  br label %83

253:                                              ; preds = %83
  br label %254

254:                                              ; preds = %253
  %255 = load i32, i32* %31, align 4
  %256 = add nsw i32 %255, 1
  store i32 %256, i32* %31, align 4
  br label %56

257:                                              ; preds = %56
  ret void
}

declare dso_local i32 @ZeroMemory(i64*, i32) #1

declare dso_local i32 @init_argb_conversion_info(%struct.pixel_format_desc*, %struct.pixel_format_desc*, %struct.argb_conversion_info*) #1

declare dso_local %struct.pixel_format_desc* @get_format_info(i32) #1

declare dso_local i32 @get_relevant_argb_components(%struct.argb_conversion_info*, i32*, i64*) #1

declare dso_local i64 @make_argb_color(%struct.argb_conversion_info*, i64*) #1

declare dso_local i32 @memcpy(i32*, i64*, i32) #1

declare dso_local i32 @format_to_vec4(%struct.pixel_format_desc*, i32*, %struct.vec4*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @format_from_vec4(%struct.pixel_format_desc*, %struct.vec4*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
