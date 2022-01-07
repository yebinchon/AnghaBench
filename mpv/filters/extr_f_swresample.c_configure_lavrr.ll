; ModuleID = '/home/carl/AnghaBench/mpv/filters/extr_f_swresample.c_configure_lavrr.c'
source_filename = "/home/carl/AnghaBench/mpv/filters/extr_f_swresample.c_configure_lavrr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.priv = type { i32, i32, i32, %struct.TYPE_3__, i8*, i8*, i32, i8*, i8*, i8*, i32, %struct.mp_chmap, i32, %struct.mp_chmap, %struct.TYPE_4__*, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.mp_chmap = type { i64 }
%struct.TYPE_4__ = type { i32, i32, i32, double, i32, i32 }

@.str = private unnamed_addr constant [26 x i8] c"%dHz %s %s -> %dHz %s %s\0A\00", align 1
@AV_SAMPLE_FMT_NONE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"unsupported conversion: %s -> %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"filter_size\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"phase_shift\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"linear_interp\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"cutoff\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"normalize_mix_level\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"Remix: %s -> %s\0A\00", align 1
@.str.8 = private unnamed_addr constant [38 x i8] c"Unsupported input channel layout %s.\0A\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"in_channel_layout\00", align 1
@.str.10 = private unnamed_addr constant [19 x i8] c"out_channel_layout\00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"in_sample_rate\00", align 1
@.str.12 = private unnamed_addr constant [16 x i8] c"out_sample_rate\00", align 1
@.str.13 = private unnamed_addr constant [14 x i8] c"in_sample_fmt\00", align 1
@.str.14 = private unnamed_addr constant [15 x i8] c"out_sample_fmt\00", align 1
@.str.15 = private unnamed_addr constant [36 x i8] c"Cannot open Libavresample context.\0A\00", align 1
@.str.16 = private unnamed_addr constant [37 x i8] c"libswresample failed to initialize.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.priv*, i32)* @configure_lavrr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @configure_lavrr(%struct.priv* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca double, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.mp_chmap, align 8
  %12 = alloca %struct.mp_chmap, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.mp_chmap, align 8
  %16 = alloca %struct.mp_chmap, align 8
  %17 = alloca %struct.mp_chmap, align 8
  %18 = alloca %struct.mp_chmap, align 8
  %19 = alloca i32, align 4
  store %struct.priv* %0, %struct.priv** %4, align 8
  store i32 %1, i32* %5, align 4
  %20 = load %struct.priv*, %struct.priv** %4, align 8
  %21 = call i32 @close_lavrr(%struct.priv* %20)
  %22 = load %struct.priv*, %struct.priv** %4, align 8
  %23 = getelementptr inbounds %struct.priv, %struct.priv* %22, i32 0, i32 18
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.priv*, %struct.priv** %4, align 8
  %26 = getelementptr inbounds %struct.priv, %struct.priv* %25, i32 0, i32 17
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @rate_from_speed(i32 %24, i32 %27)
  %29 = load %struct.priv*, %struct.priv** %4, align 8
  %30 = getelementptr inbounds %struct.priv, %struct.priv* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 8
  %31 = load %struct.priv*, %struct.priv** %4, align 8
  %32 = load %struct.priv*, %struct.priv** %4, align 8
  %33 = getelementptr inbounds %struct.priv, %struct.priv* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.priv*, %struct.priv** %4, align 8
  %36 = getelementptr inbounds %struct.priv, %struct.priv* %35, i32 0, i32 13
  %37 = call i32 @mp_chmap_to_str(%struct.mp_chmap* %36)
  %38 = load %struct.priv*, %struct.priv** %4, align 8
  %39 = getelementptr inbounds %struct.priv, %struct.priv* %38, i32 0, i32 16
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @af_fmt_to_str(i32 %40)
  %42 = load %struct.priv*, %struct.priv** %4, align 8
  %43 = getelementptr inbounds %struct.priv, %struct.priv* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.priv*, %struct.priv** %4, align 8
  %46 = getelementptr inbounds %struct.priv, %struct.priv* %45, i32 0, i32 11
  %47 = call i32 @mp_chmap_to_str(%struct.mp_chmap* %46)
  %48 = load %struct.priv*, %struct.priv** %4, align 8
  %49 = getelementptr inbounds %struct.priv, %struct.priv* %48, i32 0, i32 10
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @af_fmt_to_str(i32 %50)
  %52 = call i32 (%struct.priv*, i8*, i32, i32, ...) @MP_VERBOSE(%struct.priv* %31, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %34, i32 %37, i32 %41, i32 %44, i32 %47, i32 %51)
  %53 = call i8* (...) @avresample_alloc_context()
  %54 = load %struct.priv*, %struct.priv** %4, align 8
  %55 = getelementptr inbounds %struct.priv, %struct.priv* %54, i32 0, i32 5
  store i8* %53, i8** %55, align 8
  %56 = call i8* (...) @avresample_alloc_context()
  %57 = load %struct.priv*, %struct.priv** %4, align 8
  %58 = getelementptr inbounds %struct.priv, %struct.priv* %57, i32 0, i32 4
  store i8* %56, i8** %58, align 8
  %59 = load %struct.priv*, %struct.priv** %4, align 8
  %60 = getelementptr inbounds %struct.priv, %struct.priv* %59, i32 0, i32 5
  %61 = load i8*, i8** %60, align 8
  %62 = icmp ne i8* %61, null
  br i1 %62, label %63, label %68

63:                                               ; preds = %2
  %64 = load %struct.priv*, %struct.priv** %4, align 8
  %65 = getelementptr inbounds %struct.priv, %struct.priv* %64, i32 0, i32 4
  %66 = load i8*, i8** %65, align 8
  %67 = icmp ne i8* %66, null
  br i1 %67, label %69, label %68

68:                                               ; preds = %63, %2
  br label %435

69:                                               ; preds = %63
  %70 = load %struct.priv*, %struct.priv** %4, align 8
  %71 = getelementptr inbounds %struct.priv, %struct.priv* %70, i32 0, i32 16
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @af_to_avformat(i32 %72)
  store i32 %73, i32* %6, align 4
  %74 = load %struct.priv*, %struct.priv** %4, align 8
  %75 = getelementptr inbounds %struct.priv, %struct.priv* %74, i32 0, i32 10
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @af_to_avformat(i32 %76)
  store i32 %77, i32* %7, align 4
  %78 = load i32, i32* %7, align 4
  %79 = call i32 @av_get_planar_sample_fmt(i32 %78)
  store i32 %79, i32* %8, align 4
  %80 = load i32, i32* %6, align 4
  %81 = load i32, i32* @AV_SAMPLE_FMT_NONE, align 4
  %82 = icmp eq i32 %80, %81
  br i1 %82, label %91, label %83

83:                                               ; preds = %69
  %84 = load i32, i32* %7, align 4
  %85 = load i32, i32* @AV_SAMPLE_FMT_NONE, align 4
  %86 = icmp eq i32 %84, %85
  br i1 %86, label %91, label %87

87:                                               ; preds = %83
  %88 = load i32, i32* %8, align 4
  %89 = load i32, i32* @AV_SAMPLE_FMT_NONE, align 4
  %90 = icmp eq i32 %88, %89
  br i1 %90, label %91, label %102

91:                                               ; preds = %87, %83, %69
  %92 = load %struct.priv*, %struct.priv** %4, align 8
  %93 = load %struct.priv*, %struct.priv** %4, align 8
  %94 = getelementptr inbounds %struct.priv, %struct.priv* %93, i32 0, i32 16
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @af_fmt_to_str(i32 %95)
  %97 = load %struct.priv*, %struct.priv** %4, align 8
  %98 = getelementptr inbounds %struct.priv, %struct.priv* %97, i32 0, i32 10
  %99 = load i32, i32* %98, align 8
  %100 = call i32 @af_fmt_to_str(i32 %99)
  %101 = call i32 (%struct.priv*, i8*, ...) @MP_ERR(%struct.priv* %92, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %96, i32 %100)
  br label %435

102:                                              ; preds = %87
  %103 = load %struct.priv*, %struct.priv** %4, align 8
  %104 = getelementptr inbounds %struct.priv, %struct.priv* %103, i32 0, i32 5
  %105 = load i8*, i8** %104, align 8
  %106 = load %struct.priv*, %struct.priv** %4, align 8
  %107 = getelementptr inbounds %struct.priv, %struct.priv* %106, i32 0, i32 14
  %108 = load %struct.TYPE_4__*, %struct.TYPE_4__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = call i32 @av_opt_set_int(i8* %105, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 %110, i32 0)
  %112 = load %struct.priv*, %struct.priv** %4, align 8
  %113 = getelementptr inbounds %struct.priv, %struct.priv* %112, i32 0, i32 5
  %114 = load i8*, i8** %113, align 8
  %115 = load %struct.priv*, %struct.priv** %4, align 8
  %116 = getelementptr inbounds %struct.priv, %struct.priv* %115, i32 0, i32 14
  %117 = load %struct.TYPE_4__*, %struct.TYPE_4__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @av_opt_set_int(i8* %114, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 %119, i32 0)
  %121 = load %struct.priv*, %struct.priv** %4, align 8
  %122 = getelementptr inbounds %struct.priv, %struct.priv* %121, i32 0, i32 5
  %123 = load i8*, i8** %122, align 8
  %124 = load %struct.priv*, %struct.priv** %4, align 8
  %125 = getelementptr inbounds %struct.priv, %struct.priv* %124, i32 0, i32 14
  %126 = load %struct.TYPE_4__*, %struct.TYPE_4__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 8
  %129 = call i32 @av_opt_set_int(i8* %123, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i32 %128, i32 0)
  %130 = load %struct.priv*, %struct.priv** %4, align 8
  %131 = getelementptr inbounds %struct.priv, %struct.priv* %130, i32 0, i32 14
  %132 = load %struct.TYPE_4__*, %struct.TYPE_4__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 3
  %134 = load double, double* %133, align 8
  store double %134, double* %9, align 8
  %135 = load double, double* %9, align 8
  %136 = fcmp ole double %135, 0.000000e+00
  br i1 %136, label %137, label %148

137:                                              ; preds = %102
  %138 = load %struct.priv*, %struct.priv** %4, align 8
  %139 = getelementptr inbounds %struct.priv, %struct.priv* %138, i32 0, i32 14
  %140 = load %struct.TYPE_4__*, %struct.TYPE_4__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = add nsw i32 %142, 8
  %144 = sitofp i32 %143 to double
  %145 = fdiv double 6.500000e+00, %144
  %146 = fsub double 1.000000e+00, %145
  %147 = call double @MPMAX(double %146, double 8.000000e-01)
  store double %147, double* %9, align 8
  br label %148

148:                                              ; preds = %137, %102
  %149 = load %struct.priv*, %struct.priv** %4, align 8
  %150 = getelementptr inbounds %struct.priv, %struct.priv* %149, i32 0, i32 5
  %151 = load i8*, i8** %150, align 8
  %152 = load double, double* %9, align 8
  %153 = fptosi double %152 to i32
  %154 = call i32 @av_opt_set_double(i8* %151, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i32 %153, i32 0)
  %155 = load %struct.priv*, %struct.priv** %4, align 8
  %156 = getelementptr inbounds %struct.priv, %struct.priv* %155, i32 0, i32 14
  %157 = load %struct.TYPE_4__*, %struct.TYPE_4__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %157, i32 0, i32 4
  %159 = load i32, i32* %158, align 8
  store i32 %159, i32* %10, align 4
  %160 = load %struct.priv*, %struct.priv** %4, align 8
  %161 = getelementptr inbounds %struct.priv, %struct.priv* %160, i32 0, i32 5
  %162 = load i8*, i8** %161, align 8
  %163 = load i32, i32* %10, align 4
  %164 = icmp ne i32 %163, 0
  %165 = xor i1 %164, true
  %166 = xor i1 %165, true
  %167 = zext i1 %166 to i32
  %168 = call i32 @av_opt_set_int(i8* %162, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0), i32 %167, i32 0)
  %169 = load %struct.priv*, %struct.priv** %4, align 8
  %170 = getelementptr inbounds %struct.priv, %struct.priv* %169, i32 0, i32 15
  %171 = load i32, i32* %170, align 8
  %172 = load %struct.priv*, %struct.priv** %4, align 8
  %173 = getelementptr inbounds %struct.priv, %struct.priv* %172, i32 0, i32 5
  %174 = load i8*, i8** %173, align 8
  %175 = load %struct.priv*, %struct.priv** %4, align 8
  %176 = getelementptr inbounds %struct.priv, %struct.priv* %175, i32 0, i32 14
  %177 = load %struct.TYPE_4__*, %struct.TYPE_4__** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %177, i32 0, i32 5
  %179 = load i32, i32* %178, align 4
  %180 = call i64 @mp_set_avopts(i32 %171, i8* %174, i32 %179)
  %181 = icmp slt i64 %180, 0
  br i1 %181, label %182, label %183

182:                                              ; preds = %148
  br label %435

183:                                              ; preds = %148
  %184 = load %struct.priv*, %struct.priv** %4, align 8
  %185 = getelementptr inbounds %struct.priv, %struct.priv* %184, i32 0, i32 13
  %186 = bitcast %struct.mp_chmap* %11 to i8*
  %187 = bitcast %struct.mp_chmap* %185 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %186, i8* align 8 %187, i64 8, i1 false)
  %188 = load %struct.priv*, %struct.priv** %4, align 8
  %189 = getelementptr inbounds %struct.priv, %struct.priv* %188, i32 0, i32 11
  %190 = bitcast %struct.mp_chmap* %12 to i8*
  %191 = bitcast %struct.mp_chmap* %189 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %190, i8* align 8 %191, i64 8, i1 false)
  %192 = call i64 @mp_chmap_is_unknown(%struct.mp_chmap* %11)
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %200, label %194

194:                                              ; preds = %183
  %195 = call i64 @mp_chmap_is_unknown(%struct.mp_chmap* %12)
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %200, label %197

197:                                              ; preds = %194
  %198 = call i64 @mp_chmap_equals(%struct.mp_chmap* %11, %struct.mp_chmap* %12)
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %200, label %207

200:                                              ; preds = %197, %194, %183
  %201 = getelementptr inbounds %struct.mp_chmap, %struct.mp_chmap* %11, i32 0, i32 0
  %202 = load i64, i64* %201, align 8
  %203 = call i32 @mp_chmap_set_unknown(%struct.mp_chmap* %11, i64 %202)
  %204 = getelementptr inbounds %struct.mp_chmap, %struct.mp_chmap* %12, i32 0, i32 0
  %205 = load i64, i64* %204, align 8
  %206 = call i32 @mp_chmap_set_unknown(%struct.mp_chmap* %12, i64 %205)
  br label %207

207:                                              ; preds = %200, %197
  %208 = call i32 @mp_chmap_to_lavc_unchecked(%struct.mp_chmap* %11)
  store i32 %208, i32* %13, align 4
  %209 = call i32 @mp_chmap_to_lavc_unchecked(%struct.mp_chmap* %12)
  store i32 %209, i32* %14, align 4
  %210 = load i32, i32* %13, align 4
  %211 = call i32 @mp_chmap_from_lavc(%struct.mp_chmap* %15, i32 %210)
  %212 = load i32, i32* %14, align 4
  %213 = call i32 @mp_chmap_from_lavc(%struct.mp_chmap* %16, i32 %212)
  %214 = load i32, i32* %5, align 4
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %224

216:                                              ; preds = %207
  %217 = call i64 @mp_chmap_equals(%struct.mp_chmap* %15, %struct.mp_chmap* %16)
  %218 = icmp ne i64 %217, 0
  br i1 %218, label %224, label %219

219:                                              ; preds = %216
  %220 = load %struct.priv*, %struct.priv** %4, align 8
  %221 = call i32 @mp_chmap_to_str(%struct.mp_chmap* %15)
  %222 = call i32 @mp_chmap_to_str(%struct.mp_chmap* %16)
  %223 = call i32 (%struct.priv*, i8*, i32, i32, ...) @MP_VERBOSE(%struct.priv* %220, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0), i32 %221, i32 %222)
  br label %224

224:                                              ; preds = %219, %216, %207
  %225 = getelementptr inbounds %struct.mp_chmap, %struct.mp_chmap* %15, i32 0, i32 0
  %226 = load i64, i64* %225, align 8
  %227 = getelementptr inbounds %struct.mp_chmap, %struct.mp_chmap* %11, i32 0, i32 0
  %228 = load i64, i64* %227, align 8
  %229 = icmp ne i64 %226, %228
  br i1 %229, label %230, label %234

230:                                              ; preds = %224
  %231 = load %struct.priv*, %struct.priv** %4, align 8
  %232 = call i32 @mp_chmap_to_str(%struct.mp_chmap* %11)
  %233 = call i32 (%struct.priv*, i8*, ...) @MP_FATAL(%struct.priv* %231, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.8, i64 0, i64 0), i32 %232)
  br label %435

234:                                              ; preds = %224
  %235 = load %struct.priv*, %struct.priv** %4, align 8
  %236 = getelementptr inbounds %struct.priv, %struct.priv* %235, i32 0, i32 6
  %237 = load i32, i32* %236, align 8
  %238 = call i32 @mp_chmap_get_reorder(i32 %237, %struct.mp_chmap* %11, %struct.mp_chmap* %15)
  %239 = load %struct.priv*, %struct.priv** %4, align 8
  %240 = getelementptr inbounds %struct.priv, %struct.priv* %239, i32 0, i32 6
  %241 = load i32, i32* %240, align 8
  %242 = getelementptr inbounds %struct.mp_chmap, %struct.mp_chmap* %11, i32 0, i32 0
  %243 = load i64, i64* %242, align 8
  %244 = call i32 @transpose_order(i32 %241, i64 %243)
  %245 = call i64 @mp_chmap_equals(%struct.mp_chmap* %16, %struct.mp_chmap* %12)
  %246 = icmp ne i64 %245, 0
  br i1 %246, label %247, label %249

247:                                              ; preds = %234
  %248 = load i32, i32* %7, align 4
  store i32 %248, i32* %8, align 4
  br label %262

249:                                              ; preds = %234
  %250 = bitcast %struct.mp_chmap* %17 to i8*
  %251 = bitcast %struct.mp_chmap* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %250, i8* align 8 %251, i64 8, i1 false)
  %252 = getelementptr inbounds %struct.mp_chmap, %struct.mp_chmap* %12, i32 0, i32 0
  %253 = load i64, i64* %252, align 8
  %254 = call i32 @mp_chmap_fill_na(%struct.mp_chmap* %17, i64 %253)
  %255 = getelementptr inbounds %struct.mp_chmap, %struct.mp_chmap* %17, i32 0, i32 0
  %256 = load i64, i64* %255, align 8
  %257 = getelementptr inbounds %struct.mp_chmap, %struct.mp_chmap* %12, i32 0, i32 0
  %258 = load i64, i64* %257, align 8
  %259 = icmp ne i64 %256, %258
  br i1 %259, label %260, label %261

260:                                              ; preds = %249
  br label %435

261:                                              ; preds = %249
  br label %262

262:                                              ; preds = %261, %247
  %263 = load %struct.priv*, %struct.priv** %4, align 8
  %264 = getelementptr inbounds %struct.priv, %struct.priv* %263, i32 0, i32 12
  %265 = load i32, i32* %264, align 8
  %266 = call i32 @mp_chmap_get_reorder(i32 %265, %struct.mp_chmap* %16, %struct.mp_chmap* %12)
  %267 = call i8* (...) @mp_aframe_create()
  %268 = load %struct.priv*, %struct.priv** %4, align 8
  %269 = getelementptr inbounds %struct.priv, %struct.priv* %268, i32 0, i32 9
  store i8* %267, i8** %269, align 8
  %270 = load %struct.priv*, %struct.priv** %4, align 8
  %271 = getelementptr inbounds %struct.priv, %struct.priv* %270, i32 0, i32 9
  %272 = load i8*, i8** %271, align 8
  %273 = load %struct.priv*, %struct.priv** %4, align 8
  %274 = getelementptr inbounds %struct.priv, %struct.priv* %273, i32 0, i32 1
  %275 = load i32, i32* %274, align 4
  %276 = call i32 @mp_aframe_set_rate(i8* %272, i32 %275)
  %277 = load %struct.priv*, %struct.priv** %4, align 8
  %278 = getelementptr inbounds %struct.priv, %struct.priv* %277, i32 0, i32 9
  %279 = load i8*, i8** %278, align 8
  %280 = load %struct.priv*, %struct.priv** %4, align 8
  %281 = getelementptr inbounds %struct.priv, %struct.priv* %280, i32 0, i32 11
  %282 = call i32 @mp_aframe_set_chmap(i8* %279, %struct.mp_chmap* %281)
  %283 = load %struct.priv*, %struct.priv** %4, align 8
  %284 = getelementptr inbounds %struct.priv, %struct.priv* %283, i32 0, i32 9
  %285 = load i8*, i8** %284, align 8
  %286 = load %struct.priv*, %struct.priv** %4, align 8
  %287 = getelementptr inbounds %struct.priv, %struct.priv* %286, i32 0, i32 10
  %288 = load i32, i32* %287, align 8
  %289 = call i32 @mp_aframe_set_format(i8* %285, i32 %288)
  %290 = call i8* (...) @mp_aframe_create()
  %291 = load %struct.priv*, %struct.priv** %4, align 8
  %292 = getelementptr inbounds %struct.priv, %struct.priv* %291, i32 0, i32 8
  store i8* %290, i8** %292, align 8
  %293 = load %struct.priv*, %struct.priv** %4, align 8
  %294 = getelementptr inbounds %struct.priv, %struct.priv* %293, i32 0, i32 8
  %295 = load i8*, i8** %294, align 8
  %296 = load %struct.priv*, %struct.priv** %4, align 8
  %297 = getelementptr inbounds %struct.priv, %struct.priv* %296, i32 0, i32 9
  %298 = load i8*, i8** %297, align 8
  %299 = call i32 @mp_aframe_config_copy(i8* %295, i8* %298)
  %300 = load %struct.priv*, %struct.priv** %4, align 8
  %301 = getelementptr inbounds %struct.priv, %struct.priv* %300, i32 0, i32 8
  %302 = load i8*, i8** %301, align 8
  %303 = call i32 @mp_aframe_set_chmap(i8* %302, %struct.mp_chmap* %16)
  %304 = load %struct.priv*, %struct.priv** %4, align 8
  %305 = getelementptr inbounds %struct.priv, %struct.priv* %304, i32 0, i32 8
  %306 = load i8*, i8** %305, align 8
  %307 = load i32, i32* %8, align 4
  %308 = call i32 @af_from_avformat(i32 %307)
  %309 = call i32 @mp_aframe_set_format(i8* %306, i32 %308)
  %310 = call i8* (...) @mp_aframe_create()
  %311 = load %struct.priv*, %struct.priv** %4, align 8
  %312 = getelementptr inbounds %struct.priv, %struct.priv* %311, i32 0, i32 7
  store i8* %310, i8** %312, align 8
  %313 = load %struct.priv*, %struct.priv** %4, align 8
  %314 = getelementptr inbounds %struct.priv, %struct.priv* %313, i32 0, i32 7
  %315 = load i8*, i8** %314, align 8
  %316 = load %struct.priv*, %struct.priv** %4, align 8
  %317 = getelementptr inbounds %struct.priv, %struct.priv* %316, i32 0, i32 8
  %318 = load i8*, i8** %317, align 8
  %319 = call i32 @mp_aframe_config_copy(i8* %315, i8* %318)
  %320 = getelementptr inbounds %struct.mp_chmap, %struct.mp_chmap* %12, i32 0, i32 0
  %321 = load i64, i64* %320, align 8
  %322 = getelementptr inbounds %struct.mp_chmap, %struct.mp_chmap* %16, i32 0, i32 0
  %323 = load i64, i64* %322, align 8
  %324 = icmp sgt i64 %321, %323
  br i1 %324, label %325, label %330

325:                                              ; preds = %262
  %326 = load %struct.priv*, %struct.priv** %4, align 8
  %327 = getelementptr inbounds %struct.priv, %struct.priv* %326, i32 0, i32 7
  %328 = load i8*, i8** %327, align 8
  %329 = call i32 @mp_aframe_set_chmap(i8* %328, %struct.mp_chmap* %12)
  br label %330

330:                                              ; preds = %325, %262
  %331 = load %struct.priv*, %struct.priv** %4, align 8
  %332 = load i32, i32* %13, align 4
  %333 = load i32, i32* %14, align 4
  %334 = call i32 @fudge_layout_conversion(%struct.priv* %331, i32 %332, i32 %333)
  store i32 %334, i32* %14, align 4
  %335 = load %struct.priv*, %struct.priv** %4, align 8
  %336 = getelementptr inbounds %struct.priv, %struct.priv* %335, i32 0, i32 5
  %337 = load i8*, i8** %336, align 8
  %338 = load i32, i32* %13, align 4
  %339 = call i32 @av_opt_set_int(i8* %337, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i64 0, i64 0), i32 %338, i32 0)
  %340 = load %struct.priv*, %struct.priv** %4, align 8
  %341 = getelementptr inbounds %struct.priv, %struct.priv* %340, i32 0, i32 5
  %342 = load i8*, i8** %341, align 8
  %343 = load i32, i32* %14, align 4
  %344 = call i32 @av_opt_set_int(i8* %342, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i64 0, i64 0), i32 %343, i32 0)
  %345 = load %struct.priv*, %struct.priv** %4, align 8
  %346 = getelementptr inbounds %struct.priv, %struct.priv* %345, i32 0, i32 5
  %347 = load i8*, i8** %346, align 8
  %348 = load %struct.priv*, %struct.priv** %4, align 8
  %349 = getelementptr inbounds %struct.priv, %struct.priv* %348, i32 0, i32 0
  %350 = load i32, i32* %349, align 8
  %351 = call i32 @av_opt_set_int(i8* %347, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i64 0, i64 0), i32 %350, i32 0)
  %352 = load %struct.priv*, %struct.priv** %4, align 8
  %353 = getelementptr inbounds %struct.priv, %struct.priv* %352, i32 0, i32 5
  %354 = load i8*, i8** %353, align 8
  %355 = load %struct.priv*, %struct.priv** %4, align 8
  %356 = getelementptr inbounds %struct.priv, %struct.priv* %355, i32 0, i32 1
  %357 = load i32, i32* %356, align 4
  %358 = call i32 @av_opt_set_int(i8* %354, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i64 0, i64 0), i32 %357, i32 0)
  %359 = load %struct.priv*, %struct.priv** %4, align 8
  %360 = getelementptr inbounds %struct.priv, %struct.priv* %359, i32 0, i32 5
  %361 = load i8*, i8** %360, align 8
  %362 = load i32, i32* %6, align 4
  %363 = call i32 @av_opt_set_int(i8* %361, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0), i32 %362, i32 0)
  %364 = load %struct.priv*, %struct.priv** %4, align 8
  %365 = getelementptr inbounds %struct.priv, %struct.priv* %364, i32 0, i32 5
  %366 = load i8*, i8** %365, align 8
  %367 = load i32, i32* %8, align 4
  %368 = call i32 @av_opt_set_int(i8* %366, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i64 0, i64 0), i32 %367, i32 0)
  %369 = getelementptr inbounds %struct.mp_chmap, %struct.mp_chmap* %12, i32 0, i32 0
  %370 = load i64, i64* %369, align 8
  %371 = call i32 @mp_chmap_set_unknown(%struct.mp_chmap* %18, i64 %370)
  %372 = call i32 @mp_chmap_to_lavc_unchecked(%struct.mp_chmap* %18)
  store i32 %372, i32* %19, align 4
  %373 = load i32, i32* %19, align 4
  %374 = icmp ne i32 %373, 0
  br i1 %374, label %376, label %375

375:                                              ; preds = %330
  br label %435

376:                                              ; preds = %330
  %377 = load %struct.priv*, %struct.priv** %4, align 8
  %378 = getelementptr inbounds %struct.priv, %struct.priv* %377, i32 0, i32 4
  %379 = load i8*, i8** %378, align 8
  %380 = load i32, i32* %19, align 4
  %381 = call i32 @av_opt_set_int(i8* %379, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i64 0, i64 0), i32 %380, i32 0)
  %382 = load %struct.priv*, %struct.priv** %4, align 8
  %383 = getelementptr inbounds %struct.priv, %struct.priv* %382, i32 0, i32 4
  %384 = load i8*, i8** %383, align 8
  %385 = load i32, i32* %19, align 4
  %386 = call i32 @av_opt_set_int(i8* %384, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i64 0, i64 0), i32 %385, i32 0)
  %387 = load %struct.priv*, %struct.priv** %4, align 8
  %388 = getelementptr inbounds %struct.priv, %struct.priv* %387, i32 0, i32 4
  %389 = load i8*, i8** %388, align 8
  %390 = load i32, i32* %8, align 4
  %391 = call i32 @av_opt_set_int(i8* %389, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0), i32 %390, i32 0)
  %392 = load %struct.priv*, %struct.priv** %4, align 8
  %393 = getelementptr inbounds %struct.priv, %struct.priv* %392, i32 0, i32 4
  %394 = load i8*, i8** %393, align 8
  %395 = load i32, i32* %7, align 4
  %396 = call i32 @av_opt_set_int(i8* %394, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i64 0, i64 0), i32 %395, i32 0)
  %397 = load %struct.priv*, %struct.priv** %4, align 8
  %398 = getelementptr inbounds %struct.priv, %struct.priv* %397, i32 0, i32 4
  %399 = load i8*, i8** %398, align 8
  %400 = load %struct.priv*, %struct.priv** %4, align 8
  %401 = getelementptr inbounds %struct.priv, %struct.priv* %400, i32 0, i32 1
  %402 = load i32, i32* %401, align 4
  %403 = call i32 @av_opt_set_int(i8* %399, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i64 0, i64 0), i32 %402, i32 0)
  %404 = load %struct.priv*, %struct.priv** %4, align 8
  %405 = getelementptr inbounds %struct.priv, %struct.priv* %404, i32 0, i32 4
  %406 = load i8*, i8** %405, align 8
  %407 = load %struct.priv*, %struct.priv** %4, align 8
  %408 = getelementptr inbounds %struct.priv, %struct.priv* %407, i32 0, i32 1
  %409 = load i32, i32* %408, align 4
  %410 = call i32 @av_opt_set_int(i8* %406, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i64 0, i64 0), i32 %409, i32 0)
  %411 = load %struct.priv*, %struct.priv** %4, align 8
  %412 = getelementptr inbounds %struct.priv, %struct.priv* %411, i32 0, i32 5
  %413 = load i8*, i8** %412, align 8
  %414 = load %struct.priv*, %struct.priv** %4, align 8
  %415 = getelementptr inbounds %struct.priv, %struct.priv* %414, i32 0, i32 6
  %416 = load i32, i32* %415, align 8
  %417 = call i32 @avresample_set_channel_mapping(i8* %413, i32 %416)
  %418 = load %struct.priv*, %struct.priv** %4, align 8
  %419 = getelementptr inbounds %struct.priv, %struct.priv* %418, i32 0, i32 2
  store i32 0, i32* %419, align 8
  %420 = load %struct.priv*, %struct.priv** %4, align 8
  %421 = getelementptr inbounds %struct.priv, %struct.priv* %420, i32 0, i32 5
  %422 = load i8*, i8** %421, align 8
  %423 = call i64 @avresample_open(i8* %422)
  %424 = icmp slt i64 %423, 0
  br i1 %424, label %431, label %425

425:                                              ; preds = %376
  %426 = load %struct.priv*, %struct.priv** %4, align 8
  %427 = getelementptr inbounds %struct.priv, %struct.priv* %426, i32 0, i32 4
  %428 = load i8*, i8** %427, align 8
  %429 = call i64 @avresample_open(i8* %428)
  %430 = icmp slt i64 %429, 0
  br i1 %430, label %431, label %434

431:                                              ; preds = %425, %376
  %432 = load %struct.priv*, %struct.priv** %4, align 8
  %433 = call i32 (%struct.priv*, i8*, ...) @MP_ERR(%struct.priv* %432, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.15, i64 0, i64 0))
  br label %435

434:                                              ; preds = %425
  store i32 1, i32* %3, align 4
  br label %445

435:                                              ; preds = %431, %375, %260, %230, %182, %91, %68
  %436 = load %struct.priv*, %struct.priv** %4, align 8
  %437 = call i32 @close_lavrr(%struct.priv* %436)
  %438 = load %struct.priv*, %struct.priv** %4, align 8
  %439 = getelementptr inbounds %struct.priv, %struct.priv* %438, i32 0, i32 3
  %440 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %439, i32 0, i32 0
  %441 = load i32, i32* %440, align 4
  %442 = call i32 @mp_filter_internal_mark_failed(i32 %441)
  %443 = load %struct.priv*, %struct.priv** %4, align 8
  %444 = call i32 (%struct.priv*, i8*, ...) @MP_FATAL(%struct.priv* %443, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.16, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %445

445:                                              ; preds = %435, %434
  %446 = load i32, i32* %3, align 4
  ret i32 %446
}

declare dso_local i32 @close_lavrr(%struct.priv*) #1

declare dso_local i32 @rate_from_speed(i32, i32) #1

declare dso_local i32 @MP_VERBOSE(%struct.priv*, i8*, i32, i32, ...) #1

declare dso_local i32 @mp_chmap_to_str(%struct.mp_chmap*) #1

declare dso_local i32 @af_fmt_to_str(i32) #1

declare dso_local i8* @avresample_alloc_context(...) #1

declare dso_local i32 @af_to_avformat(i32) #1

declare dso_local i32 @av_get_planar_sample_fmt(i32) #1

declare dso_local i32 @MP_ERR(%struct.priv*, i8*, ...) #1

declare dso_local i32 @av_opt_set_int(i8*, i8*, i32, i32) #1

declare dso_local double @MPMAX(double, double) #1

declare dso_local i32 @av_opt_set_double(i8*, i8*, i32, i32) #1

declare dso_local i64 @mp_set_avopts(i32, i8*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @mp_chmap_is_unknown(%struct.mp_chmap*) #1

declare dso_local i64 @mp_chmap_equals(%struct.mp_chmap*, %struct.mp_chmap*) #1

declare dso_local i32 @mp_chmap_set_unknown(%struct.mp_chmap*, i64) #1

declare dso_local i32 @mp_chmap_to_lavc_unchecked(%struct.mp_chmap*) #1

declare dso_local i32 @mp_chmap_from_lavc(%struct.mp_chmap*, i32) #1

declare dso_local i32 @MP_FATAL(%struct.priv*, i8*, ...) #1

declare dso_local i32 @mp_chmap_get_reorder(i32, %struct.mp_chmap*, %struct.mp_chmap*) #1

declare dso_local i32 @transpose_order(i32, i64) #1

declare dso_local i32 @mp_chmap_fill_na(%struct.mp_chmap*, i64) #1

declare dso_local i8* @mp_aframe_create(...) #1

declare dso_local i32 @mp_aframe_set_rate(i8*, i32) #1

declare dso_local i32 @mp_aframe_set_chmap(i8*, %struct.mp_chmap*) #1

declare dso_local i32 @mp_aframe_set_format(i8*, i32) #1

declare dso_local i32 @mp_aframe_config_copy(i8*, i8*) #1

declare dso_local i32 @af_from_avformat(i32) #1

declare dso_local i32 @fudge_layout_conversion(%struct.priv*, i32, i32) #1

declare dso_local i32 @avresample_set_channel_mapping(i8*, i32) #1

declare dso_local i64 @avresample_open(i8*) #1

declare dso_local i32 @mp_filter_internal_mark_failed(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
