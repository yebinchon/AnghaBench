; ModuleID = '/home/carl/AnghaBench/mpv/video/extr_mp_image.c_mp_image_to_av_frame.c'
source_filename = "/home/carl/AnghaBench/mpv/video/extr_mp_image.c_mp_image_to_av_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.AVFrame = type { i64, i32, i32, i32, %struct.TYPE_9__*, i32, i32, i32, i32, i32, i32, i32*, i32*, i32*, %struct.TYPE_6__, i32, i32, i32*, i32** }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.mp_image = type { i32, i32, %struct.mp_ff_side_data*, %struct.mp_image_params, i32*, i32, i32*, i32*, i32, i32, i32, i32*, i32** }
%struct.mp_ff_side_data = type { i32*, i32 }
%struct.mp_image_params = type { %struct.TYPE_7__, i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32 }

@MP_MAX_PLANES = common dso_local global i32 0, align 4
@MP_IMGFIELD_INTERLACED = common dso_local global i32 0, align 4
@MP_IMGFIELD_TOP_FIRST = common dso_local global i32 0, align 4
@MP_IMGFIELD_REPEAT_FIRST = common dso_local global i32 0, align 4
@AV_PIX_FMT_NONE = common dso_local global i64 0, align 8
@AV_FRAME_DATA_ICC_PROFILE = common dso_local global i32 0, align 4
@MP_REF_WHITE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.AVFrame* @mp_image_to_av_frame(%struct.mp_image* %0) #0 {
  %2 = alloca %struct.AVFrame*, align 8
  %3 = alloca %struct.mp_image*, align 8
  %4 = alloca %struct.mp_image*, align 8
  %5 = alloca %struct.AVFrame*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.mp_image* %0, %struct.mp_image** %3, align 8
  %8 = load %struct.mp_image*, %struct.mp_image** %3, align 8
  %9 = call %struct.mp_image* @mp_image_new_ref(%struct.mp_image* %8)
  store %struct.mp_image* %9, %struct.mp_image** %4, align 8
  %10 = call %struct.AVFrame* (...) @av_frame_alloc()
  store %struct.AVFrame* %10, %struct.AVFrame** %5, align 8
  %11 = load %struct.AVFrame*, %struct.AVFrame** %5, align 8
  %12 = icmp ne %struct.AVFrame* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load %struct.mp_image*, %struct.mp_image** %4, align 8
  %15 = icmp ne %struct.mp_image* %14, null
  br i1 %15, label %20, label %16

16:                                               ; preds = %13, %1
  %17 = load %struct.mp_image*, %struct.mp_image** %4, align 8
  %18 = call i32 @talloc_free(%struct.mp_image* %17)
  %19 = call i32 @av_frame_free(%struct.AVFrame** %5)
  store %struct.AVFrame* null, %struct.AVFrame** %2, align 8
  br label %230

20:                                               ; preds = %13
  store i32 0, i32* %6, align 4
  br label %21

21:                                               ; preds = %45, %20
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* @MP_MAX_PLANES, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %48

25:                                               ; preds = %21
  %26 = load %struct.mp_image*, %struct.mp_image** %4, align 8
  %27 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %26, i32 0, i32 12
  %28 = load i32**, i32*** %27, align 8
  %29 = load i32, i32* %6, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32*, i32** %28, i64 %30
  %32 = load i32*, i32** %31, align 8
  %33 = load %struct.AVFrame*, %struct.AVFrame** %5, align 8
  %34 = getelementptr inbounds %struct.AVFrame, %struct.AVFrame* %33, i32 0, i32 18
  %35 = load i32**, i32*** %34, align 8
  %36 = load i32, i32* %6, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32*, i32** %35, i64 %37
  store i32* %32, i32** %38, align 8
  %39 = load %struct.mp_image*, %struct.mp_image** %4, align 8
  %40 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %39, i32 0, i32 12
  %41 = load i32**, i32*** %40, align 8
  %42 = load i32, i32* %6, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32*, i32** %41, i64 %43
  store i32* null, i32** %44, align 8
  br label %45

45:                                               ; preds = %25
  %46 = load i32, i32* %6, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %6, align 4
  br label %21

48:                                               ; preds = %21
  %49 = load %struct.mp_image*, %struct.mp_image** %4, align 8
  %50 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %49, i32 0, i32 11
  %51 = load i32*, i32** %50, align 8
  %52 = load %struct.AVFrame*, %struct.AVFrame** %5, align 8
  %53 = getelementptr inbounds %struct.AVFrame, %struct.AVFrame* %52, i32 0, i32 17
  store i32* %51, i32** %53, align 8
  %54 = load %struct.mp_image*, %struct.mp_image** %4, align 8
  %55 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %54, i32 0, i32 11
  store i32* null, i32** %55, align 8
  %56 = load %struct.mp_image*, %struct.mp_image** %3, align 8
  %57 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %56, i32 0, i32 10
  %58 = load i32, i32* %57, align 8
  %59 = call i64 @imgfmt2pixfmt(i32 %58)
  %60 = load %struct.AVFrame*, %struct.AVFrame** %5, align 8
  %61 = getelementptr inbounds %struct.AVFrame, %struct.AVFrame* %60, i32 0, i32 0
  store i64 %59, i64* %61, align 8
  %62 = load %struct.mp_image*, %struct.mp_image** %3, align 8
  %63 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %62, i32 0, i32 9
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.AVFrame*, %struct.AVFrame** %5, align 8
  %66 = getelementptr inbounds %struct.AVFrame, %struct.AVFrame* %65, i32 0, i32 16
  store i32 %64, i32* %66, align 4
  %67 = load %struct.mp_image*, %struct.mp_image** %3, align 8
  %68 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %67, i32 0, i32 8
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.AVFrame*, %struct.AVFrame** %5, align 8
  %71 = getelementptr inbounds %struct.AVFrame, %struct.AVFrame* %70, i32 0, i32 15
  store i32 %69, i32* %71, align 8
  %72 = load %struct.mp_image*, %struct.mp_image** %3, align 8
  %73 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %72, i32 0, i32 3
  %74 = getelementptr inbounds %struct.mp_image_params, %struct.mp_image_params* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.AVFrame*, %struct.AVFrame** %5, align 8
  %77 = getelementptr inbounds %struct.AVFrame, %struct.AVFrame* %76, i32 0, i32 14
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 1
  store i32 %75, i32* %78, align 4
  %79 = load %struct.mp_image*, %struct.mp_image** %3, align 8
  %80 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %79, i32 0, i32 3
  %81 = getelementptr inbounds %struct.mp_image_params, %struct.mp_image_params* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.AVFrame*, %struct.AVFrame** %5, align 8
  %84 = getelementptr inbounds %struct.AVFrame, %struct.AVFrame* %83, i32 0, i32 14
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 0
  store i32 %82, i32* %85, align 8
  store i32 0, i32* %7, align 4
  br label %86

86:                                               ; preds = %116, %48
  %87 = load i32, i32* %7, align 4
  %88 = icmp slt i32 %87, 4
  br i1 %88, label %89, label %119

89:                                               ; preds = %86
  %90 = load %struct.mp_image*, %struct.mp_image** %3, align 8
  %91 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %90, i32 0, i32 7
  %92 = load i32*, i32** %91, align 8
  %93 = load i32, i32* %7, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %92, i64 %94
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.AVFrame*, %struct.AVFrame** %5, align 8
  %98 = getelementptr inbounds %struct.AVFrame, %struct.AVFrame* %97, i32 0, i32 11
  %99 = load i32*, i32** %98, align 8
  %100 = load i32, i32* %7, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %99, i64 %101
  store i32 %96, i32* %102, align 4
  %103 = load %struct.mp_image*, %struct.mp_image** %3, align 8
  %104 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %103, i32 0, i32 6
  %105 = load i32*, i32** %104, align 8
  %106 = load i32, i32* %7, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %105, i64 %107
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.AVFrame*, %struct.AVFrame** %5, align 8
  %111 = getelementptr inbounds %struct.AVFrame, %struct.AVFrame* %110, i32 0, i32 13
  %112 = load i32*, i32** %111, align 8
  %113 = load i32, i32* %7, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %112, i64 %114
  store i32 %109, i32* %115, align 4
  br label %116

116:                                              ; preds = %89
  %117 = load i32, i32* %7, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %7, align 4
  br label %86

119:                                              ; preds = %86
  %120 = load %struct.AVFrame*, %struct.AVFrame** %5, align 8
  %121 = getelementptr inbounds %struct.AVFrame, %struct.AVFrame* %120, i32 0, i32 11
  %122 = load i32*, i32** %121, align 8
  %123 = load %struct.AVFrame*, %struct.AVFrame** %5, align 8
  %124 = getelementptr inbounds %struct.AVFrame, %struct.AVFrame* %123, i32 0, i32 12
  store i32* %122, i32** %124, align 8
  %125 = load %struct.mp_image*, %struct.mp_image** %3, align 8
  %126 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %125, i32 0, i32 5
  %127 = load i32, i32* %126, align 8
  %128 = load %struct.AVFrame*, %struct.AVFrame** %5, align 8
  %129 = getelementptr inbounds %struct.AVFrame, %struct.AVFrame* %128, i32 0, i32 10
  store i32 %127, i32* %129, align 4
  %130 = load %struct.mp_image*, %struct.mp_image** %3, align 8
  %131 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = load i32, i32* @MP_IMGFIELD_INTERLACED, align 4
  %134 = and i32 %132, %133
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %139

136:                                              ; preds = %119
  %137 = load %struct.AVFrame*, %struct.AVFrame** %5, align 8
  %138 = getelementptr inbounds %struct.AVFrame, %struct.AVFrame* %137, i32 0, i32 1
  store i32 1, i32* %138, align 8
  br label %139

139:                                              ; preds = %136, %119
  %140 = load %struct.mp_image*, %struct.mp_image** %3, align 8
  %141 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = load i32, i32* @MP_IMGFIELD_TOP_FIRST, align 4
  %144 = and i32 %142, %143
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %149

146:                                              ; preds = %139
  %147 = load %struct.AVFrame*, %struct.AVFrame** %5, align 8
  %148 = getelementptr inbounds %struct.AVFrame, %struct.AVFrame* %147, i32 0, i32 2
  store i32 1, i32* %148, align 4
  br label %149

149:                                              ; preds = %146, %139
  %150 = load %struct.mp_image*, %struct.mp_image** %3, align 8
  %151 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = load i32, i32* @MP_IMGFIELD_REPEAT_FIRST, align 4
  %154 = and i32 %152, %153
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %159

156:                                              ; preds = %149
  %157 = load %struct.AVFrame*, %struct.AVFrame** %5, align 8
  %158 = getelementptr inbounds %struct.AVFrame, %struct.AVFrame* %157, i32 0, i32 3
  store i32 1, i32* %158, align 8
  br label %159

159:                                              ; preds = %156, %149
  %160 = load %struct.mp_image*, %struct.mp_image** %3, align 8
  %161 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %160, i32 0, i32 3
  %162 = getelementptr inbounds %struct.mp_image_params, %struct.mp_image_params* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %162, i32 0, i32 4
  %164 = load i32, i32* %163, align 8
  %165 = call i32 @mp_csp_to_avcol_spc(i32 %164)
  %166 = load %struct.AVFrame*, %struct.AVFrame** %5, align 8
  %167 = getelementptr inbounds %struct.AVFrame, %struct.AVFrame* %166, i32 0, i32 9
  store i32 %165, i32* %167, align 8
  %168 = load %struct.mp_image*, %struct.mp_image** %3, align 8
  %169 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %168, i32 0, i32 3
  %170 = getelementptr inbounds %struct.mp_image_params, %struct.mp_image_params* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %170, i32 0, i32 3
  %172 = load i32, i32* %171, align 4
  %173 = call i32 @mp_csp_levels_to_avcol_range(i32 %172)
  %174 = load %struct.AVFrame*, %struct.AVFrame** %5, align 8
  %175 = getelementptr inbounds %struct.AVFrame, %struct.AVFrame* %174, i32 0, i32 8
  store i32 %173, i32* %175, align 4
  %176 = load %struct.mp_image*, %struct.mp_image** %3, align 8
  %177 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %176, i32 0, i32 3
  %178 = getelementptr inbounds %struct.mp_image_params, %struct.mp_image_params* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %178, i32 0, i32 2
  %180 = load i32, i32* %179, align 8
  %181 = call i32 @mp_csp_prim_to_avcol_pri(i32 %180)
  %182 = load %struct.AVFrame*, %struct.AVFrame** %5, align 8
  %183 = getelementptr inbounds %struct.AVFrame, %struct.AVFrame* %182, i32 0, i32 7
  store i32 %181, i32* %183, align 8
  %184 = load %struct.mp_image*, %struct.mp_image** %3, align 8
  %185 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %184, i32 0, i32 3
  %186 = getelementptr inbounds %struct.mp_image_params, %struct.mp_image_params* %185, i32 0, i32 0
  %187 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 4
  %189 = call i32 @mp_csp_trc_to_avcol_trc(i32 %188)
  %190 = load %struct.AVFrame*, %struct.AVFrame** %5, align 8
  %191 = getelementptr inbounds %struct.AVFrame, %struct.AVFrame* %190, i32 0, i32 6
  store i32 %189, i32* %191, align 4
  %192 = load %struct.mp_image*, %struct.mp_image** %3, align 8
  %193 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %192, i32 0, i32 3
  %194 = getelementptr inbounds %struct.mp_image_params, %struct.mp_image_params* %193, i32 0, i32 1
  %195 = load i32, i32* %194, align 4
  %196 = call i32 @mp_chroma_location_to_av(i32 %195)
  %197 = load %struct.AVFrame*, %struct.AVFrame** %5, align 8
  %198 = getelementptr inbounds %struct.AVFrame, %struct.AVFrame* %197, i32 0, i32 5
  store i32 %196, i32* %198, align 8
  %199 = call %struct.TYPE_9__* @av_buffer_alloc(i32 32)
  %200 = load %struct.AVFrame*, %struct.AVFrame** %5, align 8
  %201 = getelementptr inbounds %struct.AVFrame, %struct.AVFrame* %200, i32 0, i32 4
  store %struct.TYPE_9__* %199, %struct.TYPE_9__** %201, align 8
  %202 = load %struct.AVFrame*, %struct.AVFrame** %5, align 8
  %203 = getelementptr inbounds %struct.AVFrame, %struct.AVFrame* %202, i32 0, i32 4
  %204 = load %struct.TYPE_9__*, %struct.TYPE_9__** %203, align 8
  %205 = icmp ne %struct.TYPE_9__* %204, null
  br i1 %205, label %208, label %206

206:                                              ; preds = %159
  %207 = call i32 (...) @abort() #4
  unreachable

208:                                              ; preds = %159
  %209 = load %struct.AVFrame*, %struct.AVFrame** %5, align 8
  %210 = getelementptr inbounds %struct.AVFrame, %struct.AVFrame* %209, i32 0, i32 4
  %211 = load %struct.TYPE_9__*, %struct.TYPE_9__** %210, align 8
  %212 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %211, i32 0, i32 0
  %213 = load i64, i64* %212, align 8
  %214 = inttoptr i64 %213 to %struct.mp_image_params*
  %215 = load %struct.mp_image*, %struct.mp_image** %3, align 8
  %216 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %215, i32 0, i32 3
  %217 = bitcast %struct.mp_image_params* %214 to i8*
  %218 = bitcast %struct.mp_image_params* %216 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %217, i8* align 8 %218, i64 32, i1 false)
  %219 = load %struct.mp_image*, %struct.mp_image** %4, align 8
  %220 = call i32 @talloc_free(%struct.mp_image* %219)
  %221 = load %struct.AVFrame*, %struct.AVFrame** %5, align 8
  %222 = getelementptr inbounds %struct.AVFrame, %struct.AVFrame* %221, i32 0, i32 0
  %223 = load i64, i64* %222, align 8
  %224 = load i64, i64* @AV_PIX_FMT_NONE, align 8
  %225 = icmp eq i64 %223, %224
  br i1 %225, label %226, label %228

226:                                              ; preds = %208
  %227 = call i32 @av_frame_free(%struct.AVFrame** %5)
  br label %228

228:                                              ; preds = %226, %208
  %229 = load %struct.AVFrame*, %struct.AVFrame** %5, align 8
  store %struct.AVFrame* %229, %struct.AVFrame** %2, align 8
  br label %230

230:                                              ; preds = %228, %16
  %231 = load %struct.AVFrame*, %struct.AVFrame** %2, align 8
  ret %struct.AVFrame* %231
}

declare dso_local %struct.mp_image* @mp_image_new_ref(%struct.mp_image*) #1

declare dso_local %struct.AVFrame* @av_frame_alloc(...) #1

declare dso_local i32 @talloc_free(%struct.mp_image*) #1

declare dso_local i32 @av_frame_free(%struct.AVFrame**) #1

declare dso_local i64 @imgfmt2pixfmt(i32) #1

declare dso_local i32 @mp_csp_to_avcol_spc(i32) #1

declare dso_local i32 @mp_csp_levels_to_avcol_range(i32) #1

declare dso_local i32 @mp_csp_prim_to_avcol_pri(i32) #1

declare dso_local i32 @mp_csp_trc_to_avcol_trc(i32) #1

declare dso_local i32 @mp_chroma_location_to_av(i32) #1

declare dso_local %struct.TYPE_9__* @av_buffer_alloc(i32) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
