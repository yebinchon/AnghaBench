; ModuleID = '/home/carl/AnghaBench/mpv/filters/extr_f_swresample.c_filter_resample_output.c'
source_filename = "/home/carl/AnghaBench/mpv/filters/extr_f_swresample.c_filter_resample_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_frame = type { i32 }
%struct.priv = type { i32, i64, %struct.TYPE_4__, i32, %struct.mp_aframe*, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.mp_aframe = type { i32 }
%struct.mp_chmap = type { i32 }

@INT_MAX = common dso_local global i32 0, align 4
@MP_NOPTS_VALUE = common dso_local global i64 0, align 8
@MP_FRAME_AUDIO = common dso_local global i32 0, align 4
@MP_NO_FRAME = common dso_local global %struct.mp_frame zeroinitializer, align 4
@.str = private unnamed_addr constant [22 x i8] c"Error on resampling.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.priv*, %struct.mp_aframe*)* @filter_resample_output to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @filter_resample_output(%struct.priv* %0, %struct.mp_aframe* %1) #0 {
  %3 = alloca %struct.mp_frame, align 4
  %4 = alloca %struct.priv*, align 8
  %5 = alloca %struct.mp_aframe*, align 8
  %6 = alloca %struct.mp_aframe*, align 8
  %7 = alloca double, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.mp_chmap, align 4
  %13 = alloca %struct.mp_aframe*, align 8
  %14 = alloca i32, align 4
  %15 = alloca double, align 8
  store %struct.priv* %0, %struct.priv** %4, align 8
  store %struct.mp_aframe* %1, %struct.mp_aframe** %5, align 8
  store %struct.mp_aframe* null, %struct.mp_aframe** %6, align 8
  %16 = load %struct.priv*, %struct.priv** %4, align 8
  %17 = getelementptr inbounds %struct.priv, %struct.priv* %16, i32 0, i32 10
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %2
  br label %221

21:                                               ; preds = %2
  %22 = load %struct.priv*, %struct.priv** %4, align 8
  %23 = getelementptr inbounds %struct.priv, %struct.priv* %22, i32 0, i32 12
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = sdiv i32 %26, 1000
  %28 = load %struct.priv*, %struct.priv** %4, align 8
  %29 = getelementptr inbounds %struct.priv, %struct.priv* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = mul nsw i32 %27, %30
  %32 = sitofp i32 %31 to double
  store double %32, double* %7, align 8
  %33 = load double, double* %7, align 8
  %34 = load i32, i32* @INT_MAX, align 4
  %35 = call i32 @MPCLAMP(double %33, i32 128, i32 %34)
  %36 = call i32 @lrint(i32 %35)
  store i32 %36, i32* %8, align 4
  %37 = load %struct.mp_aframe*, %struct.mp_aframe** %5, align 8
  %38 = icmp ne %struct.mp_aframe* %37, null
  br i1 %38, label %39, label %42

39:                                               ; preds = %21
  %40 = load %struct.mp_aframe*, %struct.mp_aframe** %5, align 8
  %41 = call i32 @mp_aframe_get_size(%struct.mp_aframe* %40)
  br label %43

42:                                               ; preds = %21
  br label %43

43:                                               ; preds = %42, %39
  %44 = phi i32 [ %41, %39 ], [ 0, %42 ]
  store i32 %44, i32* %9, align 4
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* %8, align 4
  %47 = call i32 @MPMIN(i32 %45, i32 %46)
  store i32 %47, i32* %9, align 4
  %48 = load %struct.priv*, %struct.priv** %4, align 8
  %49 = load i32, i32* %9, align 4
  %50 = call i32 @get_out_samples(%struct.priv* %48, i32 %49)
  store i32 %50, i32* %10, align 4
  %51 = call %struct.mp_aframe* (...) @mp_aframe_create()
  store %struct.mp_aframe* %51, %struct.mp_aframe** %6, align 8
  %52 = load %struct.mp_aframe*, %struct.mp_aframe** %6, align 8
  %53 = load %struct.priv*, %struct.priv** %4, align 8
  %54 = getelementptr inbounds %struct.priv, %struct.priv* %53, i32 0, i32 9
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @mp_aframe_config_copy(%struct.mp_aframe* %52, i32 %55)
  %57 = load %struct.priv*, %struct.priv** %4, align 8
  %58 = getelementptr inbounds %struct.priv, %struct.priv* %57, i32 0, i32 11
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.mp_aframe*, %struct.mp_aframe** %6, align 8
  %61 = load i32, i32* %10, align 4
  %62 = call i64 @mp_aframe_pool_allocate(i32 %59, %struct.mp_aframe* %60, i32 %61)
  %63 = icmp slt i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %43
  br label %221

65:                                               ; preds = %43
  store i32 0, i32* %11, align 4
  %66 = load i32, i32* %10, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %87

68:                                               ; preds = %65
  %69 = load %struct.priv*, %struct.priv** %4, align 8
  %70 = getelementptr inbounds %struct.priv, %struct.priv* %69, i32 0, i32 10
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.mp_aframe*, %struct.mp_aframe** %6, align 8
  %73 = load %struct.mp_aframe*, %struct.mp_aframe** %5, align 8
  %74 = load i32, i32* %9, align 4
  %75 = call i32 @resample_frame(i32 %71, %struct.mp_aframe* %72, %struct.mp_aframe* %73, i32 %74)
  store i32 %75, i32* %11, align 4
  %76 = load i32, i32* %11, align 4
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %82, label %78

78:                                               ; preds = %68
  %79 = load i32, i32* %11, align 4
  %80 = load i32, i32* %10, align 4
  %81 = icmp sgt i32 %79, %80
  br i1 %81, label %82, label %83

82:                                               ; preds = %78, %68
  br label %221

83:                                               ; preds = %78
  %84 = load %struct.mp_aframe*, %struct.mp_aframe** %6, align 8
  %85 = load i32, i32* %11, align 4
  %86 = call i32 @mp_aframe_set_size(%struct.mp_aframe* %84, i32 %85)
  br label %87

87:                                               ; preds = %83, %65
  %88 = load %struct.priv*, %struct.priv** %4, align 8
  %89 = getelementptr inbounds %struct.priv, %struct.priv* %88, i32 0, i32 9
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @mp_aframe_get_chmap(i32 %90, %struct.mp_chmap* %12)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %94, label %93

93:                                               ; preds = %87
  br label %221

94:                                               ; preds = %87
  %95 = load %struct.mp_aframe*, %struct.mp_aframe** %6, align 8
  %96 = load %struct.priv*, %struct.priv** %4, align 8
  %97 = getelementptr inbounds %struct.priv, %struct.priv* %96, i32 0, i32 8
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @reorder_planes(%struct.mp_aframe* %95, i32 %98, %struct.mp_chmap* %12)
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %102, label %101

101:                                              ; preds = %94
  br label %221

102:                                              ; preds = %94
  %103 = load %struct.mp_aframe*, %struct.mp_aframe** %6, align 8
  %104 = load %struct.priv*, %struct.priv** %4, align 8
  %105 = getelementptr inbounds %struct.priv, %struct.priv* %104, i32 0, i32 7
  %106 = load i32, i32* %105, align 8
  %107 = call i32 @mp_aframe_config_equals(%struct.mp_aframe* %103, i32 %106)
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %146, label %109

109:                                              ; preds = %102
  %110 = call %struct.mp_aframe* (...) @mp_aframe_create()
  store %struct.mp_aframe* %110, %struct.mp_aframe** %13, align 8
  %111 = load %struct.mp_aframe*, %struct.mp_aframe** %13, align 8
  %112 = load %struct.priv*, %struct.priv** %4, align 8
  %113 = getelementptr inbounds %struct.priv, %struct.priv* %112, i32 0, i32 7
  %114 = load i32, i32* %113, align 8
  %115 = call i32 @mp_aframe_config_copy(%struct.mp_aframe* %111, i32 %114)
  %116 = load %struct.priv*, %struct.priv** %4, align 8
  %117 = getelementptr inbounds %struct.priv, %struct.priv* %116, i32 0, i32 6
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.mp_aframe*, %struct.mp_aframe** %13, align 8
  %120 = load i32, i32* %11, align 4
  %121 = call i64 @mp_aframe_pool_allocate(i32 %118, %struct.mp_aframe* %119, i32 %120)
  %122 = icmp slt i64 %121, 0
  br i1 %122, label %123, label %126

123:                                              ; preds = %109
  %124 = load %struct.mp_aframe*, %struct.mp_aframe** %13, align 8
  %125 = call i32 @talloc_free(%struct.mp_aframe* %124)
  br label %221

126:                                              ; preds = %109
  store i32 0, i32* %14, align 4
  %127 = load i32, i32* %11, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %137

129:                                              ; preds = %126
  %130 = load %struct.priv*, %struct.priv** %4, align 8
  %131 = getelementptr inbounds %struct.priv, %struct.priv* %130, i32 0, i32 5
  %132 = load i32, i32* %131, align 8
  %133 = load %struct.mp_aframe*, %struct.mp_aframe** %13, align 8
  %134 = load %struct.mp_aframe*, %struct.mp_aframe** %6, align 8
  %135 = load i32, i32* %11, align 4
  %136 = call i32 @resample_frame(i32 %132, %struct.mp_aframe* %133, %struct.mp_aframe* %134, i32 %135)
  store i32 %136, i32* %14, align 4
  br label %137

137:                                              ; preds = %129, %126
  %138 = load %struct.mp_aframe*, %struct.mp_aframe** %6, align 8
  %139 = call i32 @talloc_free(%struct.mp_aframe* %138)
  %140 = load %struct.mp_aframe*, %struct.mp_aframe** %13, align 8
  store %struct.mp_aframe* %140, %struct.mp_aframe** %6, align 8
  %141 = load i32, i32* %14, align 4
  %142 = load i32, i32* %11, align 4
  %143 = icmp ne i32 %141, %142
  br i1 %143, label %144, label %145

144:                                              ; preds = %137
  br label %221

145:                                              ; preds = %137
  br label %146

146:                                              ; preds = %145, %102
  %147 = load %struct.mp_aframe*, %struct.mp_aframe** %6, align 8
  %148 = call i32 @extra_output_conversion(%struct.mp_aframe* %147)
  %149 = load %struct.mp_aframe*, %struct.mp_aframe** %5, align 8
  %150 = icmp ne %struct.mp_aframe* %149, null
  br i1 %150, label %151, label %162

151:                                              ; preds = %146
  %152 = load %struct.mp_aframe*, %struct.mp_aframe** %6, align 8
  %153 = load %struct.mp_aframe*, %struct.mp_aframe** %5, align 8
  %154 = call i32 @mp_aframe_copy_attributes(%struct.mp_aframe* %152, %struct.mp_aframe* %153)
  %155 = load %struct.mp_aframe*, %struct.mp_aframe** %5, align 8
  %156 = call i64 @mp_aframe_end_pts(%struct.mp_aframe* %155)
  %157 = load %struct.priv*, %struct.priv** %4, align 8
  %158 = getelementptr inbounds %struct.priv, %struct.priv* %157, i32 0, i32 1
  store i64 %156, i64* %158, align 8
  %159 = load %struct.mp_aframe*, %struct.mp_aframe** %5, align 8
  %160 = load i32, i32* %9, align 4
  %161 = call i32 @mp_aframe_skip_samples(%struct.mp_aframe* %159, i32 %160)
  br label %162

162:                                              ; preds = %151, %146
  %163 = load i32, i32* %11, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %208

165:                                              ; preds = %162
  %166 = load %struct.priv*, %struct.priv** %4, align 8
  %167 = getelementptr inbounds %struct.priv, %struct.priv* %166, i32 0, i32 1
  %168 = load i64, i64* %167, align 8
  %169 = load i64, i64* @MP_NOPTS_VALUE, align 8
  %170 = icmp ne i64 %168, %169
  br i1 %170, label %171, label %207

171:                                              ; preds = %165
  %172 = load %struct.priv*, %struct.priv** %4, align 8
  %173 = call double @get_delay(%struct.priv* %172)
  %174 = load %struct.mp_aframe*, %struct.mp_aframe** %6, align 8
  %175 = call double @mp_aframe_get_speed(%struct.mp_aframe* %174)
  %176 = fmul double %173, %175
  %177 = load %struct.mp_aframe*, %struct.mp_aframe** %6, align 8
  %178 = call double @mp_aframe_duration(%struct.mp_aframe* %177)
  %179 = fadd double %176, %178
  %180 = load %struct.priv*, %struct.priv** %4, align 8
  %181 = getelementptr inbounds %struct.priv, %struct.priv* %180, i32 0, i32 4
  %182 = load %struct.mp_aframe*, %struct.mp_aframe** %181, align 8
  %183 = icmp ne %struct.mp_aframe* %182, null
  br i1 %183, label %184, label %189

184:                                              ; preds = %171
  %185 = load %struct.priv*, %struct.priv** %4, align 8
  %186 = getelementptr inbounds %struct.priv, %struct.priv* %185, i32 0, i32 4
  %187 = load %struct.mp_aframe*, %struct.mp_aframe** %186, align 8
  %188 = call double @mp_aframe_duration(%struct.mp_aframe* %187)
  br label %190

189:                                              ; preds = %171
  br label %190

190:                                              ; preds = %189, %184
  %191 = phi double [ %188, %184 ], [ 0.000000e+00, %189 ]
  %192 = fadd double %179, %191
  store double %192, double* %15, align 8
  %193 = load %struct.mp_aframe*, %struct.mp_aframe** %6, align 8
  %194 = load %struct.priv*, %struct.priv** %4, align 8
  %195 = getelementptr inbounds %struct.priv, %struct.priv* %194, i32 0, i32 1
  %196 = load i64, i64* %195, align 8
  %197 = sitofp i64 %196 to double
  %198 = load double, double* %15, align 8
  %199 = fsub double %197, %198
  %200 = fptosi double %199 to i64
  %201 = call i32 @mp_aframe_set_pts(%struct.mp_aframe* %193, i64 %200)
  %202 = load %struct.mp_aframe*, %struct.mp_aframe** %6, align 8
  %203 = load %struct.priv*, %struct.priv** %4, align 8
  %204 = getelementptr inbounds %struct.priv, %struct.priv* %203, i32 0, i32 3
  %205 = load i32, i32* %204, align 4
  %206 = call i32 @mp_aframe_mul_speed(%struct.mp_aframe* %202, i32 %205)
  br label %207

207:                                              ; preds = %190, %165
  br label %210

208:                                              ; preds = %162
  %209 = call i32 @TA_FREEP(%struct.mp_aframe** %6)
  br label %210

210:                                              ; preds = %208, %207
  %211 = load %struct.mp_aframe*, %struct.mp_aframe** %6, align 8
  %212 = icmp ne %struct.mp_aframe* %211, null
  br i1 %212, label %213, label %218

213:                                              ; preds = %210
  %214 = load i32, i32* @MP_FRAME_AUDIO, align 4
  %215 = load %struct.mp_aframe*, %struct.mp_aframe** %6, align 8
  %216 = call i32 @MAKE_FRAME(i32 %214, %struct.mp_aframe* %215)
  %217 = getelementptr inbounds %struct.mp_frame, %struct.mp_frame* %3, i32 0, i32 0
  store i32 %216, i32* %217, align 4
  br label %220

218:                                              ; preds = %210
  %219 = bitcast %struct.mp_frame* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %219, i8* align 4 bitcast (%struct.mp_frame* @MP_NO_FRAME to i8*), i64 4, i1 false)
  br label %220

220:                                              ; preds = %218, %213
  br label %232

221:                                              ; preds = %144, %123, %101, %93, %82, %64, %20
  %222 = load %struct.mp_aframe*, %struct.mp_aframe** %6, align 8
  %223 = call i32 @talloc_free(%struct.mp_aframe* %222)
  %224 = load %struct.priv*, %struct.priv** %4, align 8
  %225 = call i32 @MP_ERR(%struct.priv* %224, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %226 = load %struct.priv*, %struct.priv** %4, align 8
  %227 = getelementptr inbounds %struct.priv, %struct.priv* %226, i32 0, i32 2
  %228 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 8
  %230 = call i32 @mp_filter_internal_mark_failed(i32 %229)
  %231 = bitcast %struct.mp_frame* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %231, i8* align 4 bitcast (%struct.mp_frame* @MP_NO_FRAME to i8*), i64 4, i1 false)
  br label %232

232:                                              ; preds = %221, %220
  %233 = getelementptr inbounds %struct.mp_frame, %struct.mp_frame* %3, i32 0, i32 0
  %234 = load i32, i32* %233, align 4
  ret i32 %234
}

declare dso_local i32 @lrint(i32) #1

declare dso_local i32 @MPCLAMP(double, i32, i32) #1

declare dso_local i32 @mp_aframe_get_size(%struct.mp_aframe*) #1

declare dso_local i32 @MPMIN(i32, i32) #1

declare dso_local i32 @get_out_samples(%struct.priv*, i32) #1

declare dso_local %struct.mp_aframe* @mp_aframe_create(...) #1

declare dso_local i32 @mp_aframe_config_copy(%struct.mp_aframe*, i32) #1

declare dso_local i64 @mp_aframe_pool_allocate(i32, %struct.mp_aframe*, i32) #1

declare dso_local i32 @resample_frame(i32, %struct.mp_aframe*, %struct.mp_aframe*, i32) #1

declare dso_local i32 @mp_aframe_set_size(%struct.mp_aframe*, i32) #1

declare dso_local i32 @mp_aframe_get_chmap(i32, %struct.mp_chmap*) #1

declare dso_local i32 @reorder_planes(%struct.mp_aframe*, i32, %struct.mp_chmap*) #1

declare dso_local i32 @mp_aframe_config_equals(%struct.mp_aframe*, i32) #1

declare dso_local i32 @talloc_free(%struct.mp_aframe*) #1

declare dso_local i32 @extra_output_conversion(%struct.mp_aframe*) #1

declare dso_local i32 @mp_aframe_copy_attributes(%struct.mp_aframe*, %struct.mp_aframe*) #1

declare dso_local i64 @mp_aframe_end_pts(%struct.mp_aframe*) #1

declare dso_local i32 @mp_aframe_skip_samples(%struct.mp_aframe*, i32) #1

declare dso_local double @get_delay(%struct.priv*) #1

declare dso_local double @mp_aframe_get_speed(%struct.mp_aframe*) #1

declare dso_local double @mp_aframe_duration(%struct.mp_aframe*) #1

declare dso_local i32 @mp_aframe_set_pts(%struct.mp_aframe*, i64) #1

declare dso_local i32 @mp_aframe_mul_speed(%struct.mp_aframe*, i32) #1

declare dso_local i32 @TA_FREEP(%struct.mp_aframe**) #1

declare dso_local i32 @MAKE_FRAME(i32, %struct.mp_aframe*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @MP_ERR(%struct.priv*, i8*) #1

declare dso_local i32 @mp_filter_internal_mark_failed(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
