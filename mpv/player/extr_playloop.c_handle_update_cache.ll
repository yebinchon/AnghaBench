; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_playloop.c_handle_update_cache.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_playloop.c_handle_update_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MPContext = type { i32, i64, i64, i64, i32, double, double, i32, %struct.TYPE_4__*, %struct.TYPE_3__*, i64, i64, i32, %struct.MPOpts* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64 }
%struct.MPOpts = type { i32, i64, i64 }
%struct.demux_reader_state = type { i32, i32, i64, i32 }

@STATUS_READY = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [56 x i8] c"Enter buffering (buffer went from %d%% -> %d%%) [%fs].\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"End buffering (waited %f secs) [%fs].\0A\00", align 1
@.str.2 = private unnamed_addr constant [56 x i8] c"Still buffering (buffer went from %d%% -> %d%%) [%fs].\0A\00", align 1
@MP_EVENT_CACHE_UPDATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.MPContext*)* @handle_update_cache to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_update_cache(%struct.MPContext* %0) #0 {
  %2 = alloca %struct.MPContext*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.MPOpts*, align 8
  %5 = alloca double, align 8
  %6 = alloca %struct.demux_reader_state, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca double, align 8
  store %struct.MPContext* %0, %struct.MPContext** %2, align 8
  store i32 0, i32* %3, align 4
  %14 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %15 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %14, i32 0, i32 13
  %16 = load %struct.MPOpts*, %struct.MPOpts** %15, align 8
  store %struct.MPOpts* %16, %struct.MPOpts** %4, align 8
  %17 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %18 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %17, i32 0, i32 12
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %1
  %22 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %23 = call i32 @clear_underruns(%struct.MPContext* %22)
  br label %330

24:                                               ; preds = %1
  %25 = call double (...) @mp_time_sec()
  store double %25, double* %5, align 8
  %26 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %27 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %26, i32 0, i32 12
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @demux_get_reader_state(i32 %28, %struct.demux_reader_state* %6)
  %30 = getelementptr inbounds %struct.demux_reader_state, %struct.demux_reader_state* %6, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %33 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = or i32 %34, %31
  store i32 %35, i32* %33, align 8
  store i32 100, i32* %7, align 4
  %36 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %37 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %36, i32 0, i32 12
  %38 = load i32, i32* %37, align 8
  %39 = call i64 @demux_is_network_cached(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %51

41:                                               ; preds = %24
  %42 = load %struct.MPOpts*, %struct.MPOpts** %4, align 8
  %43 = getelementptr inbounds %struct.MPOpts, %struct.MPOpts* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %41
  %47 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %48 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = icmp sgt i64 %49, 0
  br label %51

51:                                               ; preds = %46, %41, %24
  %52 = phi i1 [ false, %41 ], [ false, %24 ], [ %50, %46 ]
  %53 = zext i1 %52 to i32
  store i32 %53, i32* %8, align 4
  %54 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %55 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %54, i32 0, i32 11
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %82, label %58

58:                                               ; preds = %51
  %59 = load %struct.MPOpts*, %struct.MPOpts** %4, align 8
  %60 = getelementptr inbounds %struct.MPOpts, %struct.MPOpts* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %77

63:                                               ; preds = %58
  %64 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %65 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @STATUS_READY, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %75, label %69

69:                                               ; preds = %63
  %70 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %71 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %70, i32 0, i32 3
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @STATUS_READY, align 8
  %74 = icmp eq i64 %72, %73
  br label %75

75:                                               ; preds = %69, %63
  %76 = phi i1 [ true, %63 ], [ %74, %69 ]
  br label %77

77:                                               ; preds = %75, %58
  %78 = phi i1 [ false, %58 ], [ %76, %75 ]
  %79 = zext i1 %78 to i32
  %80 = load i32, i32* %8, align 4
  %81 = and i32 %80, %79
  store i32 %81, i32* %8, align 4
  br label %82

82:                                               ; preds = %77, %51
  %83 = load i32, i32* %8, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %96

85:                                               ; preds = %82
  %86 = getelementptr inbounds %struct.demux_reader_state, %struct.demux_reader_state* %6, i32 0, i32 3
  %87 = load i32, i32* %86, align 8
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %96, label %89

89:                                               ; preds = %85
  %90 = getelementptr inbounds %struct.demux_reader_state, %struct.demux_reader_state* %6, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.MPOpts*, %struct.MPOpts** %4, align 8
  %93 = getelementptr inbounds %struct.MPOpts, %struct.MPOpts* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = icmp slt i32 %91, %94
  br label %96

96:                                               ; preds = %89, %85, %82
  %97 = phi i1 [ false, %85 ], [ false, %82 ], [ %95, %89 ]
  %98 = zext i1 %97 to i32
  store i32 %98, i32* %9, align 4
  %99 = load i32, i32* %9, align 4
  store i32 %99, i32* %10, align 4
  %100 = load i32, i32* %9, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %164

102:                                              ; preds = %96
  %103 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %104 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %103, i32 0, i32 4
  %105 = load i32, i32* %104, align 8
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %164, label %107

107:                                              ; preds = %102
  %108 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %109 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %108, i32 0, i32 11
  %110 = load i64, i64* %109, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %164

112:                                              ; preds = %107
  store i32 0, i32* %11, align 4
  %113 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %114 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %113, i32 0, i32 9
  %115 = load %struct.TYPE_3__*, %struct.TYPE_3__** %114, align 8
  %116 = icmp ne %struct.TYPE_3__* %115, null
  br i1 %116, label %117, label %140

117:                                              ; preds = %112
  %118 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %119 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %118, i32 0, i32 10
  %120 = load i64, i64* %119, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %135

122:                                              ; preds = %117
  %123 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %124 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %123, i32 0, i32 10
  %125 = load i64, i64* %124, align 8
  %126 = call i64 @ao_get_reports_underruns(i64 %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %135

128:                                              ; preds = %122
  %129 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %130 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %129, i32 0, i32 9
  %131 = load %struct.TYPE_3__*, %struct.TYPE_3__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = icmp ne i64 %133, 0
  br label %135

135:                                              ; preds = %128, %122, %117
  %136 = phi i1 [ true, %122 ], [ true, %117 ], [ %134, %128 ]
  %137 = zext i1 %136 to i32
  %138 = load i32, i32* %11, align 4
  %139 = or i32 %138, %137
  store i32 %139, i32* %11, align 4
  br label %140

140:                                              ; preds = %135, %112
  %141 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %142 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %141, i32 0, i32 8
  %143 = load %struct.TYPE_4__*, %struct.TYPE_4__** %142, align 8
  %144 = icmp ne %struct.TYPE_4__* %143, null
  br i1 %144, label %145, label %153

145:                                              ; preds = %140
  %146 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %147 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %146, i32 0, i32 8
  %148 = load %struct.TYPE_4__*, %struct.TYPE_4__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = load i32, i32* %11, align 4
  %152 = or i32 %151, %150
  store i32 %152, i32* %11, align 4
  br label %153

153:                                              ; preds = %145, %140
  %154 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %155 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %161

158:                                              ; preds = %153
  %159 = load i32, i32* %11, align 4
  %160 = icmp ne i32 %159, 0
  br label %161

161:                                              ; preds = %158, %153
  %162 = phi i1 [ false, %153 ], [ %160, %158 ]
  %163 = zext i1 %162 to i32
  store i32 %163, i32* %10, align 4
  br label %164

164:                                              ; preds = %161, %107, %102, %96
  %165 = load i32, i32* %9, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %170, label %167

167:                                              ; preds = %164
  %168 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %169 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %168, i32 0, i32 0
  store i32 0, i32* %169, align 8
  br label %170

170:                                              ; preds = %167, %164
  %171 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %172 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %171, i32 0, i32 4
  %173 = load i32, i32* %172, align 8
  %174 = load i32, i32* %10, align 4
  %175 = icmp ne i32 %173, %174
  br i1 %175, label %176, label %191

176:                                              ; preds = %170
  %177 = load i32, i32* %10, align 4
  %178 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %179 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %178, i32 0, i32 4
  store i32 %177, i32* %179, align 8
  %180 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %181 = call i32 @update_internal_pause_state(%struct.MPContext* %180)
  store i32 1, i32* %3, align 4
  %182 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %183 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %182, i32 0, i32 4
  %184 = load i32, i32* %183, align 8
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %190

186:                                              ; preds = %176
  %187 = load double, double* %5, align 8
  %188 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %189 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %188, i32 0, i32 5
  store double %187, double* %189, align 8
  br label %190

190:                                              ; preds = %186, %176
  br label %191

191:                                              ; preds = %190, %170
  %192 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %193 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %192, i32 0, i32 4
  %194 = load i32, i32* %193, align 8
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %199, label %196

196:                                              ; preds = %191
  %197 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %198 = call i32 @clear_underruns(%struct.MPContext* %197)
  br label %199

199:                                              ; preds = %196, %191
  %200 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %201 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %200, i32 0, i32 4
  %202 = load i32, i32* %201, align 8
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %215

204:                                              ; preds = %199
  %205 = getelementptr inbounds %struct.demux_reader_state, %struct.demux_reader_state* %6, i32 0, i32 1
  %206 = load i32, i32* %205, align 4
  %207 = load %struct.MPOpts*, %struct.MPOpts** %4, align 8
  %208 = getelementptr inbounds %struct.MPOpts, %struct.MPOpts* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 8
  %210 = sdiv i32 %206, %209
  %211 = call i32 @MPCLAMP(i32 %210, i32 0, double 0x3FEFAE147AE147AE)
  %212 = mul nsw i32 100, %211
  store i32 %212, i32* %7, align 4
  %213 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %214 = call i32 @mp_set_timeout(%struct.MPContext* %213, double 2.000000e-01)
  br label %215

215:                                              ; preds = %204, %199
  %216 = getelementptr inbounds %struct.demux_reader_state, %struct.demux_reader_state* %6, i32 0, i32 3
  %217 = load i32, i32* %216, align 8
  %218 = icmp ne i32 %217, 0
  %219 = xor i1 %218, true
  %220 = zext i1 %219 to i32
  store i32 %220, i32* %12, align 4
  %221 = load i32, i32* %12, align 4
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %228, label %223

223:                                              ; preds = %215
  %224 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %225 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %224, i32 0, i32 6
  %226 = load double, double* %225, align 8
  %227 = fcmp ogt double %226, 0.000000e+00
  br i1 %227, label %228, label %259

228:                                              ; preds = %223, %215
  %229 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %230 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %229, i32 0, i32 6
  %231 = load double, double* %230, align 8
  %232 = load double, double* %5, align 8
  %233 = fcmp ole double %231, %232
  br i1 %233, label %234, label %245

234:                                              ; preds = %228
  %235 = load i32, i32* %12, align 4
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %237, label %240

237:                                              ; preds = %234
  %238 = load double, double* %5, align 8
  %239 = fadd double %238, 2.500000e-01
  br label %241

240:                                              ; preds = %234
  br label %241

241:                                              ; preds = %240, %237
  %242 = phi double [ %239, %237 ], [ 0.000000e+00, %240 ]
  %243 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %244 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %243, i32 0, i32 6
  store double %242, double* %244, align 8
  store i32 1, i32* %3, align 4
  br label %245

245:                                              ; preds = %241, %228
  %246 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %247 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %246, i32 0, i32 6
  %248 = load double, double* %247, align 8
  %249 = fcmp ogt double %248, 0.000000e+00
  br i1 %249, label %250, label %258

250:                                              ; preds = %245
  %251 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %252 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %253 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %252, i32 0, i32 6
  %254 = load double, double* %253, align 8
  %255 = load double, double* %5, align 8
  %256 = fsub double %254, %255
  %257 = call i32 @mp_set_timeout(%struct.MPContext* %251, double %256)
  br label %258

258:                                              ; preds = %250, %245
  br label %259

259:                                              ; preds = %258, %223
  %260 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %261 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %260, i32 0, i32 7
  %262 = load i32, i32* %261, align 8
  %263 = load i32, i32* %7, align 4
  %264 = icmp ne i32 %262, %263
  br i1 %264, label %265, label %313

265:                                              ; preds = %259
  %266 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %267 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %266, i32 0, i32 7
  %268 = load i32, i32* %267, align 8
  %269 = icmp eq i32 %268, 100
  %270 = zext i1 %269 to i32
  %271 = load i32, i32* %7, align 4
  %272 = icmp eq i32 %271, 100
  %273 = zext i1 %272 to i32
  %274 = icmp ne i32 %270, %273
  br i1 %274, label %275, label %300

275:                                              ; preds = %265
  %276 = load i32, i32* %7, align 4
  %277 = icmp slt i32 %276, 100
  br i1 %277, label %278, label %287

278:                                              ; preds = %275
  %279 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %280 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %281 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %280, i32 0, i32 7
  %282 = load i32, i32* %281, align 8
  %283 = load i32, i32* %7, align 4
  %284 = getelementptr inbounds %struct.demux_reader_state, %struct.demux_reader_state* %6, i32 0, i32 1
  %285 = load i32, i32* %284, align 4
  %286 = call i32 (%struct.MPContext*, i8*, i32, i32, ...) @MP_VERBOSE(%struct.MPContext* %279, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i32 %282, i32 %283, i32 %285)
  br label %299

287:                                              ; preds = %275
  %288 = load double, double* %5, align 8
  %289 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %290 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %289, i32 0, i32 5
  %291 = load double, double* %290, align 8
  %292 = fsub double %288, %291
  store double %292, double* %13, align 8
  %293 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %294 = load double, double* %13, align 8
  %295 = fptosi double %294 to i32
  %296 = getelementptr inbounds %struct.demux_reader_state, %struct.demux_reader_state* %6, i32 0, i32 1
  %297 = load i32, i32* %296, align 4
  %298 = call i32 (%struct.MPContext*, i8*, i32, i32, ...) @MP_VERBOSE(%struct.MPContext* %293, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %295, i32 %297)
  br label %299

299:                                              ; preds = %287, %278
  br label %309

300:                                              ; preds = %265
  %301 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %302 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %303 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %302, i32 0, i32 7
  %304 = load i32, i32* %303, align 8
  %305 = load i32, i32* %7, align 4
  %306 = getelementptr inbounds %struct.demux_reader_state, %struct.demux_reader_state* %6, i32 0, i32 1
  %307 = load i32, i32* %306, align 4
  %308 = call i32 (%struct.MPContext*, i8*, i32, i32, ...) @MP_VERBOSE(%struct.MPContext* %301, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.2, i64 0, i64 0), i32 %304, i32 %305, i32 %307)
  br label %309

309:                                              ; preds = %300, %299
  %310 = load i32, i32* %7, align 4
  %311 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %312 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %311, i32 0, i32 7
  store i32 %310, i32* %312, align 8
  store i32 1, i32* %3, align 4
  br label %313

313:                                              ; preds = %309, %259
  %314 = getelementptr inbounds %struct.demux_reader_state, %struct.demux_reader_state* %6, i32 0, i32 2
  %315 = load i64, i64* %314, align 8
  %316 = icmp ne i64 %315, 0
  br i1 %316, label %317, label %323

317:                                              ; preds = %313
  %318 = load i32, i32* %12, align 4
  %319 = icmp ne i32 %318, 0
  br i1 %319, label %323, label %320

320:                                              ; preds = %317
  %321 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %322 = call i32 @prefetch_next(%struct.MPContext* %321)
  br label %323

323:                                              ; preds = %320, %317, %313
  %324 = load i32, i32* %3, align 4
  %325 = icmp ne i32 %324, 0
  br i1 %325, label %326, label %330

326:                                              ; preds = %323
  %327 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %328 = load i32, i32* @MP_EVENT_CACHE_UPDATE, align 4
  %329 = call i32 @mp_notify(%struct.MPContext* %327, i32 %328, i32* null)
  br label %330

330:                                              ; preds = %21, %326, %323
  ret void
}

declare dso_local i32 @clear_underruns(%struct.MPContext*) #1

declare dso_local double @mp_time_sec(...) #1

declare dso_local i32 @demux_get_reader_state(i32, %struct.demux_reader_state*) #1

declare dso_local i64 @demux_is_network_cached(i32) #1

declare dso_local i64 @ao_get_reports_underruns(i64) #1

declare dso_local i32 @update_internal_pause_state(%struct.MPContext*) #1

declare dso_local i32 @MPCLAMP(i32, i32, double) #1

declare dso_local i32 @mp_set_timeout(%struct.MPContext*, double) #1

declare dso_local i32 @MP_VERBOSE(%struct.MPContext*, i8*, i32, i32, ...) #1

declare dso_local i32 @prefetch_next(%struct.MPContext*) #1

declare dso_local i32 @mp_notify(%struct.MPContext*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
