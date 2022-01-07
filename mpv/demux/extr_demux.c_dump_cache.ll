; ModuleID = '/home/carl/AnghaBench/mpv/demux/extr_demux.c_dump_cache.c'
source_filename = "/home/carl/AnghaBench/mpv/demux/extr_demux.c_dump_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.demux_internal = type { i64, i32, i64, %struct.demux_cached_range*, %struct.TYPE_2__**, %struct.demux_cached_range**, i32 }
%struct.demux_cached_range = type { double, double, i32, %struct.demux_queue** }
%struct.demux_queue = type { %struct.demux_stream* }
%struct.demux_stream = type { i64, %struct.demux_packet* }
%struct.demux_packet = type { i64, %struct.demux_packet*, i64, i32, i32 }
%struct.TYPE_2__ = type { %struct.demux_stream* }

@CONTROL_TRUE = common dso_local global i8* null, align 8
@CONTROL_ERROR = common dso_local global i8* null, align 8
@MAX_SEEK_RANGES = common dso_local global i32 0, align 4
@range_time_compare = common dso_local global i32 0, align 4
@MP_NOPTS_VALUE = common dso_local global double 0.000000e+00, align 8
@CONTROL_OK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.demux_internal*, double, double)* @dump_cache to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_cache(%struct.demux_internal* %0, double %1, double %2) #0 {
  %4 = alloca %struct.demux_internal*, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.demux_cached_range*, align 8
  %13 = alloca double, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.demux_queue*, align 8
  %17 = alloca %struct.demux_stream*, align 8
  %18 = alloca %struct.demux_packet*, align 8
  %19 = alloca double, align 8
  %20 = alloca i32, align 4
  %21 = alloca %struct.demux_stream*, align 8
  %22 = alloca %struct.demux_packet*, align 8
  %23 = alloca double, align 8
  %24 = alloca %struct.demux_stream*, align 8
  %25 = alloca %struct.demux_packet*, align 8
  %26 = alloca i32, align 4
  store %struct.demux_internal* %0, %struct.demux_internal** %4, align 8
  store double %1, double* %5, align 8
  store double %2, double* %6, align 8
  %27 = load %struct.demux_internal*, %struct.demux_internal** %4, align 8
  %28 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %3
  %32 = load i8*, i8** @CONTROL_TRUE, align 8
  br label %35

33:                                               ; preds = %3
  %34 = load i8*, i8** @CONTROL_ERROR, align 8
  br label %35

35:                                               ; preds = %33, %31
  %36 = phi i8* [ %32, %31 ], [ %34, %33 ]
  %37 = ptrtoint i8* %36 to i64
  %38 = load %struct.demux_internal*, %struct.demux_internal** %4, align 8
  %39 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %38, i32 0, i32 0
  store i64 %37, i64* %39, align 8
  %40 = load %struct.demux_internal*, %struct.demux_internal** %4, align 8
  %41 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %35
  br label %327

45:                                               ; preds = %35
  %46 = load i32, i32* @MAX_SEEK_RANGES, align 4
  %47 = zext i32 %46 to i64
  %48 = call i8* @llvm.stacksave()
  store i8* %48, i8** %7, align 8
  %49 = alloca %struct.demux_cached_range*, i64 %47, align 16
  store i64 %47, i64* %8, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %50

50:                                               ; preds = %70, %45
  %51 = load i32, i32* %10, align 4
  %52 = call i32 @MP_ARRAY_SIZE(%struct.demux_cached_range** %49)
  %53 = load %struct.demux_internal*, %struct.demux_internal** %4, align 8
  %54 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %53, i32 0, i32 6
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @MPMIN(i32 %52, i32 %55)
  %57 = icmp slt i32 %51, %56
  br i1 %57, label %58, label %73

58:                                               ; preds = %50
  %59 = load %struct.demux_internal*, %struct.demux_internal** %4, align 8
  %60 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %59, i32 0, i32 5
  %61 = load %struct.demux_cached_range**, %struct.demux_cached_range*** %60, align 8
  %62 = load i32, i32* %10, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.demux_cached_range*, %struct.demux_cached_range** %61, i64 %63
  %65 = load %struct.demux_cached_range*, %struct.demux_cached_range** %64, align 8
  %66 = load i32, i32* %9, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %9, align 4
  %68 = sext i32 %66 to i64
  %69 = getelementptr inbounds %struct.demux_cached_range*, %struct.demux_cached_range** %49, i64 %68
  store %struct.demux_cached_range* %65, %struct.demux_cached_range** %69, align 8
  br label %70

70:                                               ; preds = %58
  %71 = load i32, i32* %10, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %10, align 4
  br label %50

73:                                               ; preds = %50
  %74 = load i32, i32* %9, align 4
  %75 = load i32, i32* @range_time_compare, align 4
  %76 = call i32 @qsort(%struct.demux_cached_range** %49, i32 %74, i32 8, i32 %75)
  store i32 0, i32* %11, align 4
  br label %77

77:                                               ; preds = %270, %73
  %78 = load i32, i32* %11, align 4
  %79 = load i32, i32* %9, align 4
  %80 = icmp slt i32 %78, %79
  br i1 %80, label %81, label %273

81:                                               ; preds = %77
  %82 = load i32, i32* %11, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.demux_cached_range*, %struct.demux_cached_range** %49, i64 %83
  %85 = load %struct.demux_cached_range*, %struct.demux_cached_range** %84, align 8
  store %struct.demux_cached_range* %85, %struct.demux_cached_range** %12, align 8
  %86 = load %struct.demux_cached_range*, %struct.demux_cached_range** %12, align 8
  %87 = getelementptr inbounds %struct.demux_cached_range, %struct.demux_cached_range* %86, i32 0, i32 0
  %88 = load double, double* %87, align 8
  %89 = load double, double* @MP_NOPTS_VALUE, align 8
  %90 = fcmp oeq double %88, %89
  br i1 %90, label %91, label %92

91:                                               ; preds = %81
  br label %270

92:                                               ; preds = %81
  %93 = load %struct.demux_cached_range*, %struct.demux_cached_range** %12, align 8
  %94 = getelementptr inbounds %struct.demux_cached_range, %struct.demux_cached_range* %93, i32 0, i32 1
  %95 = load double, double* %94, align 8
  %96 = load double, double* %5, align 8
  %97 = fcmp ole double %95, %96
  br i1 %97, label %98, label %99

98:                                               ; preds = %92
  br label %270

99:                                               ; preds = %92
  %100 = load double, double* %6, align 8
  %101 = load double, double* @MP_NOPTS_VALUE, align 8
  %102 = fcmp une double %100, %101
  br i1 %102, label %103, label %110

103:                                              ; preds = %99
  %104 = load %struct.demux_cached_range*, %struct.demux_cached_range** %12, align 8
  %105 = getelementptr inbounds %struct.demux_cached_range, %struct.demux_cached_range* %104, i32 0, i32 0
  %106 = load double, double* %105, align 8
  %107 = load double, double* %6, align 8
  %108 = fcmp oge double %106, %107
  br i1 %108, label %109, label %110

109:                                              ; preds = %103
  br label %270

110:                                              ; preds = %103, %99
  %111 = load %struct.demux_internal*, %struct.demux_internal** %4, align 8
  %112 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %111, i32 0, i32 2
  %113 = load i64, i64* %112, align 8
  %114 = call i32 @mp_recorder_mark_discontinuity(i64 %113)
  %115 = load double, double* %5, align 8
  store double %115, double* %13, align 8
  store i32 0, i32* %14, align 4
  %116 = load %struct.demux_internal*, %struct.demux_internal** %4, align 8
  %117 = load %struct.demux_cached_range*, %struct.demux_cached_range** %12, align 8
  %118 = call i32 @adjust_cache_seek_target(%struct.demux_internal* %116, %struct.demux_cached_range* %117, double* %13, i32* %14)
  store i32 0, i32* %15, align 4
  br label %119

119:                                              ; preds = %142, %110
  %120 = load i32, i32* %15, align 4
  %121 = load %struct.demux_cached_range*, %struct.demux_cached_range** %12, align 8
  %122 = getelementptr inbounds %struct.demux_cached_range, %struct.demux_cached_range* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 8
  %124 = icmp slt i32 %120, %123
  br i1 %124, label %125, label %145

125:                                              ; preds = %119
  %126 = load %struct.demux_cached_range*, %struct.demux_cached_range** %12, align 8
  %127 = getelementptr inbounds %struct.demux_cached_range, %struct.demux_cached_range* %126, i32 0, i32 3
  %128 = load %struct.demux_queue**, %struct.demux_queue*** %127, align 8
  %129 = load i32, i32* %15, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds %struct.demux_queue*, %struct.demux_queue** %128, i64 %130
  %132 = load %struct.demux_queue*, %struct.demux_queue** %131, align 8
  store %struct.demux_queue* %132, %struct.demux_queue** %16, align 8
  %133 = load %struct.demux_queue*, %struct.demux_queue** %16, align 8
  %134 = getelementptr inbounds %struct.demux_queue, %struct.demux_queue* %133, i32 0, i32 0
  %135 = load %struct.demux_stream*, %struct.demux_stream** %134, align 8
  store %struct.demux_stream* %135, %struct.demux_stream** %17, align 8
  %136 = load %struct.demux_queue*, %struct.demux_queue** %16, align 8
  %137 = load double, double* %13, align 8
  %138 = load i32, i32* %14, align 4
  %139 = call %struct.demux_packet* @find_seek_target(%struct.demux_queue* %136, double %137, i32 %138)
  %140 = load %struct.demux_stream*, %struct.demux_stream** %17, align 8
  %141 = getelementptr inbounds %struct.demux_stream, %struct.demux_stream* %140, i32 0, i32 1
  store %struct.demux_packet* %139, %struct.demux_packet** %141, align 8
  br label %142

142:                                              ; preds = %125
  %143 = load i32, i32* %15, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %15, align 4
  br label %119

145:                                              ; preds = %119
  br label %146

146:                                              ; preds = %256, %145
  br label %147

147:                                              ; preds = %146
  store %struct.demux_packet* null, %struct.demux_packet** %18, align 8
  %148 = load double, double* @MP_NOPTS_VALUE, align 8
  store double %148, double* %19, align 8
  store i32 0, i32* %20, align 4
  br label %149

149:                                              ; preds = %223, %147
  %150 = load i32, i32* %20, align 4
  %151 = load %struct.demux_cached_range*, %struct.demux_cached_range** %12, align 8
  %152 = getelementptr inbounds %struct.demux_cached_range, %struct.demux_cached_range* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 8
  %154 = icmp slt i32 %150, %153
  br i1 %154, label %155, label %226

155:                                              ; preds = %149
  %156 = load %struct.demux_cached_range*, %struct.demux_cached_range** %12, align 8
  %157 = getelementptr inbounds %struct.demux_cached_range, %struct.demux_cached_range* %156, i32 0, i32 3
  %158 = load %struct.demux_queue**, %struct.demux_queue*** %157, align 8
  %159 = load i32, i32* %20, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds %struct.demux_queue*, %struct.demux_queue** %158, i64 %160
  %162 = load %struct.demux_queue*, %struct.demux_queue** %161, align 8
  %163 = getelementptr inbounds %struct.demux_queue, %struct.demux_queue* %162, i32 0, i32 0
  %164 = load %struct.demux_stream*, %struct.demux_stream** %163, align 8
  store %struct.demux_stream* %164, %struct.demux_stream** %21, align 8
  %165 = load %struct.demux_stream*, %struct.demux_stream** %21, align 8
  %166 = getelementptr inbounds %struct.demux_stream, %struct.demux_stream* %165, i32 0, i32 1
  %167 = load %struct.demux_packet*, %struct.demux_packet** %166, align 8
  store %struct.demux_packet* %167, %struct.demux_packet** %22, align 8
  %168 = load %struct.demux_packet*, %struct.demux_packet** %22, align 8
  %169 = icmp ne %struct.demux_packet* %168, null
  br i1 %169, label %171, label %170

170:                                              ; preds = %155
  br label %223

171:                                              ; preds = %155
  %172 = load %struct.demux_packet*, %struct.demux_packet** %22, align 8
  %173 = getelementptr inbounds %struct.demux_packet, %struct.demux_packet* %172, i32 0, i32 0
  %174 = load i64, i64* %173, align 8
  %175 = load %struct.demux_stream*, %struct.demux_stream** %21, align 8
  %176 = getelementptr inbounds %struct.demux_stream, %struct.demux_stream* %175, i32 0, i32 0
  %177 = load i64, i64* %176, align 8
  %178 = icmp eq i64 %174, %177
  %179 = zext i1 %178 to i32
  %180 = call i32 @assert(i32 %179)
  %181 = load %struct.demux_packet*, %struct.demux_packet** %22, align 8
  %182 = getelementptr inbounds %struct.demux_packet, %struct.demux_packet* %181, i32 0, i32 4
  %183 = load i32, i32* %182, align 4
  %184 = load %struct.demux_packet*, %struct.demux_packet** %22, align 8
  %185 = getelementptr inbounds %struct.demux_packet, %struct.demux_packet* %184, i32 0, i32 3
  %186 = load i32, i32* %185, align 8
  %187 = call double @MP_PTS_OR_DEF(i32 %183, i32 %186)
  store double %187, double* %23, align 8
  %188 = load double, double* %23, align 8
  %189 = load double, double* @MP_NOPTS_VALUE, align 8
  %190 = fcmp une double %188, %189
  br i1 %190, label %191, label %207

191:                                              ; preds = %171
  %192 = load double, double* %6, align 8
  %193 = load double, double* @MP_NOPTS_VALUE, align 8
  %194 = fcmp une double %192, %193
  br i1 %194, label %195, label %207

195:                                              ; preds = %191
  %196 = load double, double* %23, align 8
  %197 = load double, double* %6, align 8
  %198 = fcmp oge double %196, %197
  br i1 %198, label %199, label %207

199:                                              ; preds = %195
  %200 = load %struct.demux_packet*, %struct.demux_packet** %22, align 8
  %201 = getelementptr inbounds %struct.demux_packet, %struct.demux_packet* %200, i32 0, i32 2
  %202 = load i64, i64* %201, align 8
  %203 = icmp ne i64 %202, 0
  br i1 %203, label %204, label %207

204:                                              ; preds = %199
  %205 = load %struct.demux_stream*, %struct.demux_stream** %21, align 8
  %206 = getelementptr inbounds %struct.demux_stream, %struct.demux_stream* %205, i32 0, i32 1
  store %struct.demux_packet* null, %struct.demux_packet** %206, align 8
  br label %223

207:                                              ; preds = %199, %195, %191, %171
  %208 = load double, double* %23, align 8
  %209 = load double, double* @MP_NOPTS_VALUE, align 8
  %210 = fcmp oeq double %208, %209
  br i1 %210, label %219, label %211

211:                                              ; preds = %207
  %212 = load double, double* %19, align 8
  %213 = load double, double* @MP_NOPTS_VALUE, align 8
  %214 = fcmp oeq double %212, %213
  br i1 %214, label %219, label %215

215:                                              ; preds = %211
  %216 = load double, double* %23, align 8
  %217 = load double, double* %19, align 8
  %218 = fcmp olt double %216, %217
  br i1 %218, label %219, label %222

219:                                              ; preds = %215, %211, %207
  %220 = load double, double* %23, align 8
  store double %220, double* %19, align 8
  %221 = load %struct.demux_packet*, %struct.demux_packet** %22, align 8
  store %struct.demux_packet* %221, %struct.demux_packet** %18, align 8
  br label %222

222:                                              ; preds = %219, %215
  br label %223

223:                                              ; preds = %222, %204, %170
  %224 = load i32, i32* %20, align 4
  %225 = add nsw i32 %224, 1
  store i32 %225, i32* %20, align 4
  br label %149

226:                                              ; preds = %149
  %227 = load %struct.demux_packet*, %struct.demux_packet** %18, align 8
  %228 = icmp ne %struct.demux_packet* %227, null
  br i1 %228, label %230, label %229

229:                                              ; preds = %226
  br label %262

230:                                              ; preds = %226
  %231 = load %struct.demux_internal*, %struct.demux_internal** %4, align 8
  %232 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %231, i32 0, i32 4
  %233 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %232, align 8
  %234 = load %struct.demux_packet*, %struct.demux_packet** %18, align 8
  %235 = getelementptr inbounds %struct.demux_packet, %struct.demux_packet* %234, i32 0, i32 0
  %236 = load i64, i64* %235, align 8
  %237 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %233, i64 %236
  %238 = load %struct.TYPE_2__*, %struct.TYPE_2__** %237, align 8
  %239 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %238, i32 0, i32 0
  %240 = load %struct.demux_stream*, %struct.demux_stream** %239, align 8
  store %struct.demux_stream* %240, %struct.demux_stream** %24, align 8
  %241 = load %struct.demux_packet*, %struct.demux_packet** %18, align 8
  %242 = getelementptr inbounds %struct.demux_packet, %struct.demux_packet* %241, i32 0, i32 1
  %243 = load %struct.demux_packet*, %struct.demux_packet** %242, align 8
  %244 = load %struct.demux_stream*, %struct.demux_stream** %24, align 8
  %245 = getelementptr inbounds %struct.demux_stream, %struct.demux_stream* %244, i32 0, i32 1
  store %struct.demux_packet* %243, %struct.demux_packet** %245, align 8
  %246 = load %struct.demux_internal*, %struct.demux_internal** %4, align 8
  %247 = load %struct.demux_packet*, %struct.demux_packet** %18, align 8
  %248 = call %struct.demux_packet* @read_packet_from_cache(%struct.demux_internal* %246, %struct.demux_packet* %247)
  store %struct.demux_packet* %248, %struct.demux_packet** %25, align 8
  %249 = load %struct.demux_packet*, %struct.demux_packet** %25, align 8
  %250 = icmp ne %struct.demux_packet* %249, null
  br i1 %250, label %256, label %251

251:                                              ; preds = %230
  %252 = load i8*, i8** @CONTROL_ERROR, align 8
  %253 = ptrtoint i8* %252 to i64
  %254 = load %struct.demux_internal*, %struct.demux_internal** %4, align 8
  %255 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %254, i32 0, i32 0
  store i64 %253, i64* %255, align 8
  br label %262

256:                                              ; preds = %230
  %257 = load %struct.demux_internal*, %struct.demux_internal** %4, align 8
  %258 = load %struct.demux_packet*, %struct.demux_packet** %25, align 8
  %259 = call i32 @write_dump_packet(%struct.demux_internal* %257, %struct.demux_packet* %258)
  %260 = load %struct.demux_packet*, %struct.demux_packet** %25, align 8
  %261 = call i32 @talloc_free(%struct.demux_packet* %260)
  br label %146

262:                                              ; preds = %251, %229
  %263 = load %struct.demux_internal*, %struct.demux_internal** %4, align 8
  %264 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %263, i32 0, i32 0
  %265 = load i64, i64* %264, align 8
  %266 = load i64, i64* @CONTROL_OK, align 8
  %267 = icmp ne i64 %265, %266
  br i1 %267, label %268, label %269

268:                                              ; preds = %262
  br label %273

269:                                              ; preds = %262
  br label %270

270:                                              ; preds = %269, %109, %98, %91
  %271 = load i32, i32* %11, align 4
  %272 = add nsw i32 %271, 1
  store i32 %272, i32* %11, align 4
  br label %77

273:                                              ; preds = %268, %77
  store i32 0, i32* %26, align 4
  br label %274

274:                                              ; preds = %291, %273
  %275 = load i32, i32* %26, align 4
  %276 = load %struct.demux_internal*, %struct.demux_internal** %4, align 8
  %277 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %276, i32 0, i32 1
  %278 = load i32, i32* %277, align 8
  %279 = icmp slt i32 %275, %278
  br i1 %279, label %280, label %294

280:                                              ; preds = %274
  %281 = load %struct.demux_internal*, %struct.demux_internal** %4, align 8
  %282 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %281, i32 0, i32 4
  %283 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %282, align 8
  %284 = load i32, i32* %26, align 4
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %283, i64 %285
  %287 = load %struct.TYPE_2__*, %struct.TYPE_2__** %286, align 8
  %288 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %287, i32 0, i32 0
  %289 = load %struct.demux_stream*, %struct.demux_stream** %288, align 8
  %290 = getelementptr inbounds %struct.demux_stream, %struct.demux_stream* %289, i32 0, i32 1
  store %struct.demux_packet* null, %struct.demux_packet** %290, align 8
  br label %291

291:                                              ; preds = %280
  %292 = load i32, i32* %26, align 4
  %293 = add nsw i32 %292, 1
  store i32 %293, i32* %26, align 4
  br label %274

294:                                              ; preds = %274
  %295 = load i32, i32* %9, align 4
  %296 = icmp ne i32 %295, 0
  br i1 %296, label %297, label %312

297:                                              ; preds = %294
  %298 = load i32, i32* %9, align 4
  %299 = sub nsw i32 %298, 1
  %300 = sext i32 %299 to i64
  %301 = getelementptr inbounds %struct.demux_cached_range*, %struct.demux_cached_range** %49, i64 %300
  %302 = load %struct.demux_cached_range*, %struct.demux_cached_range** %301, align 8
  %303 = load %struct.demux_internal*, %struct.demux_internal** %4, align 8
  %304 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %303, i32 0, i32 3
  %305 = load %struct.demux_cached_range*, %struct.demux_cached_range** %304, align 8
  %306 = icmp ne %struct.demux_cached_range* %302, %305
  br i1 %306, label %307, label %312

307:                                              ; preds = %297
  %308 = load %struct.demux_internal*, %struct.demux_internal** %4, align 8
  %309 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %308, i32 0, i32 2
  %310 = load i64, i64* %309, align 8
  %311 = call i32 @mp_recorder_mark_discontinuity(i64 %310)
  br label %312

312:                                              ; preds = %307, %297, %294
  %313 = load double, double* %6, align 8
  %314 = load double, double* @MP_NOPTS_VALUE, align 8
  %315 = fcmp une double %313, %314
  br i1 %315, label %322, label %316

316:                                              ; preds = %312
  %317 = load %struct.demux_internal*, %struct.demux_internal** %4, align 8
  %318 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %317, i32 0, i32 0
  %319 = load i64, i64* %318, align 8
  %320 = load i64, i64* @CONTROL_OK, align 8
  %321 = icmp ne i64 %319, %320
  br i1 %321, label %322, label %325

322:                                              ; preds = %316, %312
  %323 = load %struct.demux_internal*, %struct.demux_internal** %4, align 8
  %324 = call i32 @dumper_close(%struct.demux_internal* %323)
  br label %325

325:                                              ; preds = %322, %316
  %326 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %326)
  br label %327

327:                                              ; preds = %325, %44
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @MPMIN(i32, i32) #2

declare dso_local i32 @MP_ARRAY_SIZE(%struct.demux_cached_range**) #2

declare dso_local i32 @qsort(%struct.demux_cached_range**, i32, i32, i32) #2

declare dso_local i32 @mp_recorder_mark_discontinuity(i64) #2

declare dso_local i32 @adjust_cache_seek_target(%struct.demux_internal*, %struct.demux_cached_range*, double*, i32*) #2

declare dso_local %struct.demux_packet* @find_seek_target(%struct.demux_queue*, double, i32) #2

declare dso_local i32 @assert(i32) #2

declare dso_local double @MP_PTS_OR_DEF(i32, i32) #2

declare dso_local %struct.demux_packet* @read_packet_from_cache(%struct.demux_internal*, %struct.demux_packet*) #2

declare dso_local i32 @write_dump_packet(%struct.demux_internal*, %struct.demux_packet*) #2

declare dso_local i32 @talloc_free(%struct.demux_packet*) #2

declare dso_local i32 @dumper_close(%struct.demux_internal*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
