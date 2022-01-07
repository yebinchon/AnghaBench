; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_playloop.c_mp_seek.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_playloop.c_mp_seek.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { double, i32, i32, i32, double, i32, i32, double, i64, %struct.seek_params, i32, %struct.track**, %struct.track*, i64, %struct.TYPE_16__*, %struct.MPOpts* }
%struct.seek_params = type { i64, double, i64, i32 }
%struct.track = type { i64, %struct.mp_decoder_wrapper*, %struct.TYPE_16__*, i32, %struct.TYPE_17__*, i64, i64 }
%struct.mp_decoder_wrapper = type { i32 }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_16__ = type { i32, i64 }
%struct.MPOpts = type { i32, double, i64, i32, i64 }

@MP_NOPTS_VALUE = common dso_local global double 0.000000e+00, align 8
@MPSEEK_VERY_EXACT = common dso_local global i64 0, align 8
@SEEK_FORWARD = common dso_local global i32 0, align 4
@MPSEEK_KEYFRAME = common dso_local global i64 0, align 8
@MPSEEK_EXACT = common dso_local global i64 0, align 8
@SEEK_FACTOR = common dso_local global i32 0, align 4
@SEEK_SATAN = common dso_local global i32 0, align 4
@SEEK_HR = common dso_local global i32 0, align 4
@SEEK_CACHED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Cannot seek in this stream.\0A\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"You can force it with '--force-seekable=yes'.\0A\00", align 1
@STREAM_AUDIO = common dso_local global i64 0, align 8
@STREAM_VIDEO = common dso_local global i64 0, align 8
@MPSEEK_FLAG_NOFLUSH = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"delayed seek for aid=%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"hr-seek, skipping to %f%s%s\0A\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [16 x i8] c" (no framedrop)\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c" (backstep)\00", align 1
@AT_END_OF_FILE = common dso_local global i64 0, align 8
@KEEP_PLAYING = common dso_local global i64 0, align 8
@MPV_EVENT_SEEK = common dso_local global i32 0, align 4
@MPV_EVENT_TICK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_18__*, %struct.seek_params*)* @mp_seek to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mp_seek(%struct.TYPE_18__* %0, %struct.seek_params* byval(%struct.seek_params) align 8 %1) #0 {
  %3 = alloca %struct.TYPE_18__*, align 8
  %4 = alloca %struct.MPOpts*, align 8
  %5 = alloca i32, align 4
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca i32, align 4
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca double, align 8
  %14 = alloca i32, align 4
  %15 = alloca double, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.track*, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.track*, align 8
  %20 = alloca double, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca %struct.track*, align 8
  %24 = alloca %struct.mp_decoder_wrapper*, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %3, align 8
  %25 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %25, i32 0, i32 15
  %27 = load %struct.MPOpts*, %struct.MPOpts** %26, align 8
  store %struct.MPOpts* %27, %struct.MPOpts** %4, align 8
  %28 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %28, i32 0, i32 14
  %30 = load %struct.TYPE_16__*, %struct.TYPE_16__** %29, align 8
  %31 = icmp ne %struct.TYPE_16__* %30, null
  br i1 %31, label %32, label %41

32:                                               ; preds = %2
  %33 = getelementptr inbounds %struct.seek_params, %struct.seek_params* %1, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.seek_params, %struct.seek_params* %1, i32 0, i32 1
  %38 = load double, double* %37, align 8
  %39 = load double, double* @MP_NOPTS_VALUE, align 8
  %40 = fcmp oeq double %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %36, %32, %2
  br label %564

42:                                               ; preds = %36
  %43 = getelementptr inbounds %struct.seek_params, %struct.seek_params* %1, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @MPSEEK_VERY_EXACT, align 8
  %46 = icmp eq i64 %44, %45
  %47 = zext i1 %46 to i32
  store i32 %47, i32* %5, align 4
  %48 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %49 = call double @get_current_time(%struct.TYPE_18__* %48)
  store double %49, double* %6, align 8
  %50 = load double, double* %6, align 8
  %51 = load double, double* @MP_NOPTS_VALUE, align 8
  %52 = fcmp oeq double %50, %51
  br i1 %52, label %53, label %58

53:                                               ; preds = %42
  %54 = getelementptr inbounds %struct.seek_params, %struct.seek_params* %1, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp eq i64 %55, 128
  br i1 %56, label %57, label %58

57:                                               ; preds = %53
  br label %564

58:                                               ; preds = %53, %42
  %59 = load double, double* %6, align 8
  %60 = load double, double* @MP_NOPTS_VALUE, align 8
  %61 = fcmp oeq double %59, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %58
  store double 0.000000e+00, double* %6, align 8
  br label %63

63:                                               ; preds = %62, %58
  %64 = load double, double* @MP_NOPTS_VALUE, align 8
  store double %64, double* %7, align 8
  store i32 0, i32* %8, align 4
  %65 = getelementptr inbounds %struct.seek_params, %struct.seek_params* %1, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  switch i64 %66, label %96 [
    i64 131, label %67
    i64 130, label %70
    i64 128, label %72
    i64 129, label %85
  ]

67:                                               ; preds = %63
  %68 = getelementptr inbounds %struct.seek_params, %struct.seek_params* %1, i32 0, i32 1
  %69 = load double, double* %68, align 8
  store double %69, double* %7, align 8
  br label %98

70:                                               ; preds = %63
  %71 = load double, double* %6, align 8
  store double %71, double* %7, align 8
  store i32 1, i32* %5, align 4
  br label %98

72:                                               ; preds = %63
  %73 = getelementptr inbounds %struct.seek_params, %struct.seek_params* %1, i32 0, i32 1
  %74 = load double, double* %73, align 8
  %75 = fcmp ogt double %74, 0.000000e+00
  br i1 %75, label %76, label %78

76:                                               ; preds = %72
  %77 = load i32, i32* @SEEK_FORWARD, align 4
  br label %79

78:                                               ; preds = %72
  br label %79

79:                                               ; preds = %78, %76
  %80 = phi i32 [ %77, %76 ], [ 0, %78 ]
  store i32 %80, i32* %8, align 4
  %81 = load double, double* %6, align 8
  %82 = getelementptr inbounds %struct.seek_params, %struct.seek_params* %1, i32 0, i32 1
  %83 = load double, double* %82, align 8
  %84 = fadd double %81, %83
  store double %84, double* %7, align 8
  br label %98

85:                                               ; preds = %63
  %86 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %87 = call double @get_time_length(%struct.TYPE_18__* %86)
  store double %87, double* %9, align 8
  %88 = load double, double* %9, align 8
  %89 = fcmp oge double %88, 0.000000e+00
  br i1 %89, label %90, label %95

90:                                               ; preds = %85
  %91 = getelementptr inbounds %struct.seek_params, %struct.seek_params* %1, i32 0, i32 1
  %92 = load double, double* %91, align 8
  %93 = load double, double* %9, align 8
  %94 = fmul double %92, %93
  store double %94, double* %7, align 8
  br label %95

95:                                               ; preds = %90, %85
  br label %98

96:                                               ; preds = %63
  %97 = call i32 (...) @abort() #4
  unreachable

98:                                               ; preds = %95, %79, %70, %67
  %99 = load double, double* %7, align 8
  store double %99, double* %10, align 8
  %100 = load %struct.MPOpts*, %struct.MPOpts** %4, align 8
  %101 = getelementptr inbounds %struct.MPOpts, %struct.MPOpts* %100, i32 0, i32 4
  %102 = load i64, i64* %101, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %132

104:                                              ; preds = %98
  %105 = getelementptr inbounds %struct.seek_params, %struct.seek_params* %1, i32 0, i32 2
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* @MPSEEK_KEYFRAME, align 8
  %108 = icmp ne i64 %106, %107
  br i1 %108, label %109, label %132

109:                                              ; preds = %104
  %110 = load %struct.MPOpts*, %struct.MPOpts** %4, align 8
  %111 = getelementptr inbounds %struct.MPOpts, %struct.MPOpts* %110, i32 0, i32 3
  %112 = load i32, i32* %111, align 8
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %118

114:                                              ; preds = %109
  %115 = getelementptr inbounds %struct.seek_params, %struct.seek_params* %1, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = icmp eq i64 %116, 131
  br i1 %117, label %128, label %118

118:                                              ; preds = %114, %109
  %119 = load %struct.MPOpts*, %struct.MPOpts** %4, align 8
  %120 = getelementptr inbounds %struct.MPOpts, %struct.MPOpts* %119, i32 0, i32 3
  %121 = load i32, i32* %120, align 8
  %122 = icmp sgt i32 %121, 0
  br i1 %122, label %128, label %123

123:                                              ; preds = %118
  %124 = getelementptr inbounds %struct.seek_params, %struct.seek_params* %1, i32 0, i32 2
  %125 = load i64, i64* %124, align 8
  %126 = load i64, i64* @MPSEEK_EXACT, align 8
  %127 = icmp sge i64 %125, %126
  br i1 %127, label %128, label %132

128:                                              ; preds = %123, %118, %114
  %129 = load double, double* %7, align 8
  %130 = load double, double* @MP_NOPTS_VALUE, align 8
  %131 = fcmp une double %129, %130
  br label %132

132:                                              ; preds = %128, %123, %104, %98
  %133 = phi i1 [ false, %123 ], [ false, %104 ], [ false, %98 ], [ %131, %128 ]
  %134 = zext i1 %133 to i32
  store i32 %134, i32* %11, align 4
  %135 = getelementptr inbounds %struct.seek_params, %struct.seek_params* %1, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = icmp eq i64 %136, 129
  br i1 %137, label %153, label %138

138:                                              ; preds = %132
  %139 = getelementptr inbounds %struct.seek_params, %struct.seek_params* %1, i32 0, i32 1
  %140 = load double, double* %139, align 8
  %141 = fcmp olt double %140, 0.000000e+00
  br i1 %141, label %153, label %142

142:                                              ; preds = %138
  %143 = getelementptr inbounds %struct.seek_params, %struct.seek_params* %1, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = icmp eq i64 %144, 131
  br i1 %145, label %146, label %156

146:                                              ; preds = %142
  %147 = getelementptr inbounds %struct.seek_params, %struct.seek_params* %1, i32 0, i32 1
  %148 = load double, double* %147, align 8
  %149 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %150 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %149, i32 0, i32 0
  %151 = load double, double* %150, align 8
  %152 = fcmp olt double %148, %151
  br i1 %152, label %153, label %156

153:                                              ; preds = %146, %138, %132
  %154 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %155 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %154, i32 0, i32 1
  store i32 -2, i32* %155, align 8
  br label %156

156:                                              ; preds = %153, %146, %142
  %157 = getelementptr inbounds %struct.seek_params, %struct.seek_params* %1, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = icmp eq i64 %158, 129
  br i1 %159, label %160, label %180

160:                                              ; preds = %156
  %161 = load i32, i32* %11, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %180, label %163

163:                                              ; preds = %160
  %164 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %165 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %164, i32 0, i32 14
  %166 = load %struct.TYPE_16__*, %struct.TYPE_16__** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %166, i32 0, i32 1
  %168 = load i64, i64* %167, align 8
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %174, label %170

170:                                              ; preds = %163
  %171 = load double, double* %7, align 8
  %172 = load double, double* @MP_NOPTS_VALUE, align 8
  %173 = fcmp oeq double %171, %172
  br i1 %173, label %174, label %180

174:                                              ; preds = %170, %163
  %175 = getelementptr inbounds %struct.seek_params, %struct.seek_params* %1, i32 0, i32 1
  %176 = load double, double* %175, align 8
  store double %176, double* %10, align 8
  %177 = load i32, i32* @SEEK_FACTOR, align 4
  %178 = load i32, i32* %8, align 4
  %179 = or i32 %178, %177
  store i32 %179, i32* %8, align 4
  br label %180

180:                                              ; preds = %174, %170, %160, %156
  %181 = load %struct.MPOpts*, %struct.MPOpts** %4, align 8
  %182 = getelementptr inbounds %struct.MPOpts, %struct.MPOpts* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 8
  store i32 %183, i32* %12, align 4
  %184 = load i32, i32* %12, align 4
  %185 = icmp slt i32 %184, 0
  br i1 %185, label %186, label %190

186:                                              ; preds = %180
  %187 = load i32, i32* @SEEK_SATAN, align 4
  %188 = load i32, i32* %8, align 4
  %189 = or i32 %188, %187
  store i32 %189, i32* %8, align 4
  br label %190

190:                                              ; preds = %186, %180
  %191 = load i32, i32* %11, align 4
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %261

193:                                              ; preds = %190
  %194 = load %struct.MPOpts*, %struct.MPOpts** %4, align 8
  %195 = getelementptr inbounds %struct.MPOpts, %struct.MPOpts* %194, i32 0, i32 1
  %196 = load double, double* %195, align 8
  store double %196, double* %13, align 8
  %197 = load i32, i32* %5, align 4
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %202

199:                                              ; preds = %193
  %200 = load double, double* %13, align 8
  %201 = call double @MPMAX(double %200, double 5.000000e-01)
  store double %201, double* %13, align 8
  br label %202

202:                                              ; preds = %199, %193
  store i32 0, i32* %14, align 4
  br label %203

203:                                              ; preds = %238, %202
  %204 = load i32, i32* %14, align 4
  %205 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %206 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %205, i32 0, i32 2
  %207 = load i32, i32* %206, align 4
  %208 = icmp slt i32 %204, %207
  br i1 %208, label %209, label %241

209:                                              ; preds = %203
  store double 0.000000e+00, double* %15, align 8
  %210 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %211 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %210, i32 0, i32 11
  %212 = load %struct.track**, %struct.track*** %211, align 8
  %213 = load i32, i32* %14, align 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds %struct.track*, %struct.track** %212, i64 %214
  %216 = load %struct.track*, %struct.track** %215, align 8
  %217 = getelementptr inbounds %struct.track, %struct.track* %216, i32 0, i32 5
  %218 = load i64, i64* %217, align 8
  %219 = icmp ne i64 %218, 0
  br i1 %219, label %233, label %220

220:                                              ; preds = %209
  %221 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %222 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %223 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %222, i32 0, i32 11
  %224 = load %struct.track**, %struct.track*** %223, align 8
  %225 = load i32, i32* %14, align 4
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds %struct.track*, %struct.track** %224, i64 %226
  %228 = load %struct.track*, %struct.track** %227, align 8
  %229 = call i64 @get_track_seek_offset(%struct.TYPE_18__* %221, %struct.track* %228)
  %230 = sitofp i64 %229 to double
  %231 = load double, double* %15, align 8
  %232 = fadd double %231, %230
  store double %232, double* %15, align 8
  br label %233

233:                                              ; preds = %220, %209
  %234 = load double, double* %13, align 8
  %235 = load double, double* %15, align 8
  %236 = fneg double %235
  %237 = call double @MPMAX(double %234, double %236)
  store double %237, double* %13, align 8
  br label %238

238:                                              ; preds = %233
  %239 = load i32, i32* %14, align 4
  %240 = add nsw i32 %239, 1
  store i32 %240, i32* %14, align 4
  br label %203

241:                                              ; preds = %203
  %242 = load double, double* %13, align 8
  %243 = load i32, i32* %12, align 4
  %244 = sitofp i32 %243 to double
  %245 = fmul double %242, %244
  %246 = load double, double* %10, align 8
  %247 = fsub double %246, %245
  store double %247, double* %10, align 8
  %248 = load i32, i32* %8, align 4
  %249 = load i32, i32* @SEEK_HR, align 4
  %250 = or i32 %248, %249
  %251 = load i32, i32* @SEEK_FORWARD, align 4
  %252 = xor i32 %251, -1
  %253 = and i32 %250, %252
  store i32 %253, i32* %8, align 4
  %254 = load i32, i32* %12, align 4
  %255 = icmp slt i32 %254, 0
  br i1 %255, label %256, label %260

256:                                              ; preds = %241
  %257 = load i32, i32* @SEEK_FORWARD, align 4
  %258 = load i32, i32* %8, align 4
  %259 = or i32 %258, %257
  store i32 %259, i32* %8, align 4
  br label %260

260:                                              ; preds = %256, %241
  br label %261

261:                                              ; preds = %260, %190
  %262 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %263 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %262, i32 0, i32 14
  %264 = load %struct.TYPE_16__*, %struct.TYPE_16__** %263, align 8
  %265 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %264, i32 0, i32 0
  %266 = load i32, i32* %265, align 8
  %267 = icmp ne i32 %266, 0
  br i1 %267, label %272, label %268

268:                                              ; preds = %261
  %269 = load i32, i32* @SEEK_CACHED, align 4
  %270 = load i32, i32* %8, align 4
  %271 = or i32 %270, %269
  store i32 %271, i32* %8, align 4
  br label %272

272:                                              ; preds = %268, %261
  %273 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %274 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %273, i32 0, i32 14
  %275 = load %struct.TYPE_16__*, %struct.TYPE_16__** %274, align 8
  %276 = load double, double* %10, align 8
  %277 = load i32, i32* %8, align 4
  %278 = call i32 @demux_seek(%struct.TYPE_16__* %275, double %276, i32 %277)
  %279 = icmp ne i32 %278, 0
  br i1 %279, label %293, label %280

280:                                              ; preds = %272
  %281 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %282 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %281, i32 0, i32 14
  %283 = load %struct.TYPE_16__*, %struct.TYPE_16__** %282, align 8
  %284 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %283, i32 0, i32 0
  %285 = load i32, i32* %284, align 8
  %286 = icmp ne i32 %285, 0
  br i1 %286, label %292, label %287

287:                                              ; preds = %280
  %288 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %289 = call i32 @MP_ERR(%struct.TYPE_18__* %288, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %290 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %291 = call i32 @MP_ERR(%struct.TYPE_18__* %290, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  br label %292

292:                                              ; preds = %287, %280
  br label %564

293:                                              ; preds = %272
  %294 = load i32, i32* %12, align 4
  %295 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %296 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %295, i32 0, i32 3
  store i32 %294, i32* %296, align 8
  store i32 0, i32* %16, align 4
  store %struct.track* null, %struct.track** %17, align 8
  store i32 0, i32* %18, align 4
  br label %297

297:                                              ; preds = %398, %293
  %298 = load i32, i32* %18, align 4
  %299 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %300 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %299, i32 0, i32 2
  %301 = load i32, i32* %300, align 4
  %302 = icmp slt i32 %298, %301
  br i1 %302, label %303, label %401

303:                                              ; preds = %297
  %304 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %305 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %304, i32 0, i32 11
  %306 = load %struct.track**, %struct.track*** %305, align 8
  %307 = load i32, i32* %18, align 4
  %308 = sext i32 %307 to i64
  %309 = getelementptr inbounds %struct.track*, %struct.track** %306, i64 %308
  %310 = load %struct.track*, %struct.track** %309, align 8
  store %struct.track* %310, %struct.track** %19, align 8
  %311 = load %struct.track*, %struct.track** %19, align 8
  %312 = getelementptr inbounds %struct.track, %struct.track* %311, i32 0, i32 6
  %313 = load i64, i64* %312, align 8
  %314 = icmp ne i64 %313, 0
  br i1 %314, label %315, label %368

315:                                              ; preds = %303
  %316 = load %struct.track*, %struct.track** %19, align 8
  %317 = getelementptr inbounds %struct.track, %struct.track* %316, i32 0, i32 5
  %318 = load i64, i64* %317, align 8
  %319 = icmp ne i64 %318, 0
  br i1 %319, label %320, label %368

320:                                              ; preds = %315
  %321 = load %struct.track*, %struct.track** %19, align 8
  %322 = getelementptr inbounds %struct.track, %struct.track* %321, i32 0, i32 2
  %323 = load %struct.TYPE_16__*, %struct.TYPE_16__** %322, align 8
  %324 = icmp ne %struct.TYPE_16__* %323, null
  br i1 %324, label %325, label %368

325:                                              ; preds = %320
  %326 = load double, double* %10, align 8
  store double %326, double* %20, align 8
  %327 = load i32, i32* %11, align 4
  %328 = icmp ne i32 %327, 0
  br i1 %328, label %329, label %334

329:                                              ; preds = %325
  %330 = load %struct.track*, %struct.track** %19, align 8
  %331 = getelementptr inbounds %struct.track, %struct.track* %330, i32 0, i32 5
  %332 = load i64, i64* %331, align 8
  %333 = icmp ne i64 %332, 0
  br i1 %333, label %334, label %341

334:                                              ; preds = %329, %325
  %335 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %336 = load %struct.track*, %struct.track** %19, align 8
  %337 = call i64 @get_track_seek_offset(%struct.TYPE_18__* %335, %struct.track* %336)
  %338 = sitofp i64 %337 to double
  %339 = load double, double* %20, align 8
  %340 = fadd double %339, %338
  store double %340, double* %20, align 8
  br label %341

341:                                              ; preds = %334, %329
  %342 = load i32, i32* %8, align 4
  %343 = load i32, i32* @SEEK_FACTOR, align 4
  %344 = and i32 %342, %343
  %345 = icmp ne i32 %344, 0
  br i1 %345, label %346, label %348

346:                                              ; preds = %341
  %347 = load double, double* %7, align 8
  store double %347, double* %20, align 8
  br label %348

348:                                              ; preds = %346, %341
  %349 = load %struct.track*, %struct.track** %19, align 8
  %350 = getelementptr inbounds %struct.track, %struct.track* %349, i32 0, i32 2
  %351 = load %struct.TYPE_16__*, %struct.TYPE_16__** %350, align 8
  %352 = load double, double* %20, align 8
  %353 = load i32, i32* %8, align 4
  %354 = load i32, i32* @SEEK_SATAN, align 4
  %355 = and i32 %353, %354
  %356 = call i32 @demux_seek(%struct.TYPE_16__* %351, double %352, i32 %355)
  %357 = load %struct.track*, %struct.track** %19, align 8
  %358 = getelementptr inbounds %struct.track, %struct.track* %357, i32 0, i32 0
  %359 = load i64, i64* %358, align 8
  %360 = load i64, i64* @STREAM_AUDIO, align 8
  %361 = icmp eq i64 %359, %360
  br i1 %361, label %362, label %367

362:                                              ; preds = %348
  %363 = load %struct.track*, %struct.track** %17, align 8
  %364 = icmp ne %struct.track* %363, null
  br i1 %364, label %367, label %365

365:                                              ; preds = %362
  %366 = load %struct.track*, %struct.track** %19, align 8
  store %struct.track* %366, %struct.track** %17, align 8
  br label %367

367:                                              ; preds = %365, %362, %348
  br label %368

368:                                              ; preds = %367, %320, %315, %303
  %369 = load %struct.track*, %struct.track** %19, align 8
  %370 = getelementptr inbounds %struct.track, %struct.track* %369, i32 0, i32 6
  %371 = load i64, i64* %370, align 8
  %372 = icmp ne i64 %371, 0
  br i1 %372, label %373, label %397

373:                                              ; preds = %368
  %374 = load %struct.track*, %struct.track** %19, align 8
  %375 = getelementptr inbounds %struct.track, %struct.track* %374, i32 0, i32 5
  %376 = load i64, i64* %375, align 8
  %377 = icmp ne i64 %376, 0
  br i1 %377, label %397, label %378

378:                                              ; preds = %373
  %379 = load %struct.track*, %struct.track** %19, align 8
  %380 = getelementptr inbounds %struct.track, %struct.track* %379, i32 0, i32 4
  %381 = load %struct.TYPE_17__*, %struct.TYPE_17__** %380, align 8
  %382 = icmp ne %struct.TYPE_17__* %381, null
  br i1 %382, label %383, label %397

383:                                              ; preds = %378
  %384 = load %struct.track*, %struct.track** %19, align 8
  %385 = getelementptr inbounds %struct.track, %struct.track* %384, i32 0, i32 0
  %386 = load i64, i64* %385, align 8
  %387 = load i64, i64* @STREAM_VIDEO, align 8
  %388 = icmp eq i64 %386, %387
  br i1 %388, label %389, label %397

389:                                              ; preds = %383
  %390 = load %struct.track*, %struct.track** %19, align 8
  %391 = getelementptr inbounds %struct.track, %struct.track* %390, i32 0, i32 4
  %392 = load %struct.TYPE_17__*, %struct.TYPE_17__** %391, align 8
  %393 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %392, i32 0, i32 0
  %394 = load i32, i32* %393, align 4
  %395 = icmp ne i32 %394, 0
  br i1 %395, label %397, label %396

396:                                              ; preds = %389
  store i32 1, i32* %16, align 4
  br label %397

397:                                              ; preds = %396, %389, %383, %378, %373, %368
  br label %398

398:                                              ; preds = %397
  %399 = load i32, i32* %18, align 4
  %400 = add nsw i32 %399, 1
  store i32 %400, i32* %18, align 4
  br label %297

401:                                              ; preds = %297
  %402 = getelementptr inbounds %struct.seek_params, %struct.seek_params* %1, i32 0, i32 3
  %403 = load i32, i32* %402, align 8
  %404 = load i32, i32* @MPSEEK_FLAG_NOFLUSH, align 4
  %405 = and i32 %403, %404
  %406 = icmp ne i32 %405, 0
  br i1 %406, label %410, label %407

407:                                              ; preds = %401
  %408 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %409 = call i32 @clear_audio_output_buffers(%struct.TYPE_18__* %408)
  br label %410

410:                                              ; preds = %407, %401
  %411 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %412 = call i32 @reset_playback_state(%struct.TYPE_18__* %411)
  %413 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %414 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %413, i32 0, i32 13
  %415 = load i64, i64* %414, align 8
  %416 = icmp ne i64 %415, 0
  br i1 %416, label %417, label %422

417:                                              ; preds = %410
  %418 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %419 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %418, i32 0, i32 13
  %420 = load i64, i64* %419, align 8
  %421 = call i32 @mp_recorder_mark_discontinuity(i64 %420)
  br label %422

422:                                              ; preds = %417, %410
  %423 = load i32, i32* %16, align 4
  %424 = icmp ne i32 %423, 0
  br i1 %424, label %425, label %455

425:                                              ; preds = %422
  %426 = load %struct.track*, %struct.track** %17, align 8
  %427 = icmp ne %struct.track* %426, null
  br i1 %427, label %428, label %455

428:                                              ; preds = %425
  %429 = load i32, i32* %11, align 4
  %430 = icmp ne i32 %429, 0
  br i1 %430, label %455, label %431

431:                                              ; preds = %428
  %432 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %433 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %432, i32 0, i32 3
  %434 = load i32, i32* %433, align 8
  %435 = icmp sgt i32 %434, 0
  br i1 %435, label %436, label %455

436:                                              ; preds = %431
  %437 = load i32, i32* %8, align 4
  %438 = load i32, i32* @SEEK_FORWARD, align 4
  %439 = and i32 %437, %438
  %440 = icmp ne i32 %439, 0
  br i1 %440, label %455, label %441

441:                                              ; preds = %436
  %442 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %443 = load %struct.track*, %struct.track** %17, align 8
  %444 = getelementptr inbounds %struct.track, %struct.track* %443, i32 0, i32 3
  %445 = load i32, i32* %444, align 8
  %446 = sitofp i32 %445 to double
  %447 = call i32 (%struct.TYPE_18__*, i8*, double, ...) @MP_VERBOSE(%struct.TYPE_18__* %442, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), double %446)
  %448 = load %struct.track*, %struct.track** %17, align 8
  %449 = getelementptr inbounds %struct.track, %struct.track* %448, i32 0, i32 2
  %450 = load %struct.TYPE_16__*, %struct.TYPE_16__** %449, align 8
  %451 = call i32 @demux_block_reading(%struct.TYPE_16__* %450, i32 1)
  %452 = load %struct.track*, %struct.track** %17, align 8
  %453 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %454 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %453, i32 0, i32 12
  store %struct.track* %452, %struct.track** %454, align 8
  br label %455

455:                                              ; preds = %441, %436, %431, %428, %425, %422
  %456 = load double, double* %7, align 8
  %457 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %458 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %457, i32 0, i32 4
  store double %456, double* %458, align 8
  %459 = load i32, i32* %11, align 4
  %460 = icmp ne i32 %459, 0
  br i1 %460, label %461, label %536

461:                                              ; preds = %455
  %462 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %463 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %462, i32 0, i32 5
  store i32 1, i32* %463, align 8
  %464 = getelementptr inbounds %struct.seek_params, %struct.seek_params* %1, i32 0, i32 0
  %465 = load i64, i64* %464, align 8
  %466 = icmp eq i64 %465, 130
  %467 = zext i1 %466 to i32
  %468 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %469 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %468, i32 0, i32 6
  store i32 %467, i32* %469, align 4
  %470 = load double, double* %7, align 8
  %471 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %472 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %471, i32 0, i32 3
  %473 = load i32, i32* %472, align 8
  %474 = sitofp i32 %473 to double
  %475 = fmul double %470, %474
  %476 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %477 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %476, i32 0, i32 7
  store double %475, double* %477, align 8
  %478 = load i32, i32* %5, align 4
  %479 = icmp ne i32 %478, 0
  br i1 %479, label %485, label %480

480:                                              ; preds = %461
  %481 = load %struct.MPOpts*, %struct.MPOpts** %4, align 8
  %482 = getelementptr inbounds %struct.MPOpts, %struct.MPOpts* %481, i32 0, i32 2
  %483 = load i64, i64* %482, align 8
  %484 = icmp ne i64 %483, 0
  br label %485

485:                                              ; preds = %480, %461
  %486 = phi i1 [ false, %461 ], [ %484, %480 ]
  %487 = zext i1 %486 to i32
  store i32 %487, i32* %21, align 4
  %488 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %489 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %490 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %489, i32 0, i32 7
  %491 = load double, double* %490, align 8
  %492 = load i32, i32* %21, align 4
  %493 = icmp ne i32 %492, 0
  %494 = zext i1 %493 to i64
  %495 = select i1 %493, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0)
  %496 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %497 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %496, i32 0, i32 6
  %498 = load i32, i32* %497, align 4
  %499 = icmp ne i32 %498, 0
  %500 = zext i1 %499 to i64
  %501 = select i1 %499, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %502 = call i32 (%struct.TYPE_18__*, i8*, double, ...) @MP_VERBOSE(%struct.TYPE_18__* %488, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), double %491, i8* %495, i8* %501)
  store i32 0, i32* %22, align 4
  br label %503

503:                                              ; preds = %532, %485
  %504 = load i32, i32* %22, align 4
  %505 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %506 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %505, i32 0, i32 2
  %507 = load i32, i32* %506, align 4
  %508 = icmp slt i32 %504, %507
  br i1 %508, label %509, label %535

509:                                              ; preds = %503
  %510 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %511 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %510, i32 0, i32 11
  %512 = load %struct.track**, %struct.track*** %511, align 8
  %513 = load i32, i32* %22, align 4
  %514 = sext i32 %513 to i64
  %515 = getelementptr inbounds %struct.track*, %struct.track** %512, i64 %514
  %516 = load %struct.track*, %struct.track** %515, align 8
  store %struct.track* %516, %struct.track** %23, align 8
  %517 = load %struct.track*, %struct.track** %23, align 8
  %518 = getelementptr inbounds %struct.track, %struct.track* %517, i32 0, i32 1
  %519 = load %struct.mp_decoder_wrapper*, %struct.mp_decoder_wrapper** %518, align 8
  store %struct.mp_decoder_wrapper* %519, %struct.mp_decoder_wrapper** %24, align 8
  %520 = load %struct.mp_decoder_wrapper*, %struct.mp_decoder_wrapper** %24, align 8
  %521 = icmp ne %struct.mp_decoder_wrapper* %520, null
  br i1 %521, label %522, label %531

522:                                              ; preds = %509
  %523 = load i32, i32* %21, align 4
  %524 = icmp ne i32 %523, 0
  br i1 %524, label %525, label %531

525:                                              ; preds = %522
  %526 = load %struct.mp_decoder_wrapper*, %struct.mp_decoder_wrapper** %24, align 8
  %527 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %528 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %527, i32 0, i32 7
  %529 = load double, double* %528, align 8
  %530 = call i32 @mp_decoder_wrapper_set_start_pts(%struct.mp_decoder_wrapper* %526, double %529)
  br label %531

531:                                              ; preds = %525, %522, %509
  br label %532

532:                                              ; preds = %531
  %533 = load i32, i32* %22, align 4
  %534 = add nsw i32 %533, 1
  store i32 %534, i32* %22, align 4
  br label %503

535:                                              ; preds = %503
  br label %536

536:                                              ; preds = %535, %455
  %537 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %538 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %537, i32 0, i32 8
  %539 = load i64, i64* %538, align 8
  %540 = load i64, i64* @AT_END_OF_FILE, align 8
  %541 = icmp eq i64 %539, %540
  br i1 %541, label %542, label %546

542:                                              ; preds = %536
  %543 = load i64, i64* @KEEP_PLAYING, align 8
  %544 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %545 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %544, i32 0, i32 8
  store i64 %543, i64* %545, align 8
  br label %546

546:                                              ; preds = %542, %536
  %547 = call i32 (...) @mp_time_sec()
  %548 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %549 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %548, i32 0, i32 10
  store i32 %547, i32* %549, align 8
  %550 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %551 = call i32 @mp_wakeup_core(%struct.TYPE_18__* %550)
  %552 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %553 = load i32, i32* @MPV_EVENT_SEEK, align 4
  %554 = call i32 @mp_notify(%struct.TYPE_18__* %552, i32 %553, i32* null)
  %555 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %556 = load i32, i32* @MPV_EVENT_TICK, align 4
  %557 = call i32 @mp_notify(%struct.TYPE_18__* %555, i32 %556, i32* null)
  %558 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %559 = call i32 @update_ab_loop_clip(%struct.TYPE_18__* %558)
  %560 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %561 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %560, i32 0, i32 9
  %562 = bitcast %struct.seek_params* %561 to i8*
  %563 = bitcast %struct.seek_params* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %562, i8* align 8 %563, i64 32, i1 false)
  br label %564

564:                                              ; preds = %546, %292, %57, %41
  ret void
}

declare dso_local double @get_current_time(%struct.TYPE_18__*) #1

declare dso_local double @get_time_length(%struct.TYPE_18__*) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

declare dso_local double @MPMAX(double, double) #1

declare dso_local i64 @get_track_seek_offset(%struct.TYPE_18__*, %struct.track*) #1

declare dso_local i32 @demux_seek(%struct.TYPE_16__*, double, i32) #1

declare dso_local i32 @MP_ERR(%struct.TYPE_18__*, i8*) #1

declare dso_local i32 @clear_audio_output_buffers(%struct.TYPE_18__*) #1

declare dso_local i32 @reset_playback_state(%struct.TYPE_18__*) #1

declare dso_local i32 @mp_recorder_mark_discontinuity(i64) #1

declare dso_local i32 @MP_VERBOSE(%struct.TYPE_18__*, i8*, double, ...) #1

declare dso_local i32 @demux_block_reading(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @mp_decoder_wrapper_set_start_pts(%struct.mp_decoder_wrapper*, double) #1

declare dso_local i32 @mp_time_sec(...) #1

declare dso_local i32 @mp_wakeup_core(%struct.TYPE_18__*) #1

declare dso_local i32 @mp_notify(%struct.TYPE_18__*, i32, i32*) #1

declare dso_local i32 @update_ab_loop_clip(%struct.TYPE_18__*) #1

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
