; ModuleID = '/home/carl/AnghaBench/mpv/demux/extr_demux.c_prune_old_packets.c'
source_filename = "/home/carl/AnghaBench/mpv/demux/extr_demux.c_prune_old_packets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.demux_internal = type { i32, i32, i64, i64, i64, %struct.demux_cached_range*, i64, %struct.demux_cached_range**, %struct.TYPE_3__** }
%struct.demux_cached_range = type { i32, double, %struct.demux_queue** }
%struct.demux_queue = type { double, double, %struct.demux_packet*, %struct.demux_packet*, %struct.demux_stream* }
%struct.demux_packet = type { %struct.demux_packet*, i64 }
%struct.demux_stream = type { i64, %struct.TYPE_4__*, %struct.demux_packet* }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { %struct.demux_stream* }

@MP_NOPTS_VALUE = common dso_local global double 0.000000e+00, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.demux_internal*)* @prune_old_packets to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @prune_old_packets(%struct.demux_internal* %0) #0 {
  %2 = alloca %struct.demux_internal*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.demux_stream*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.demux_cached_range*, align 8
  %8 = alloca double, align 8
  %9 = alloca %struct.demux_stream*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.demux_queue*, align 8
  %12 = alloca %struct.demux_stream*, align 8
  %13 = alloca %struct.demux_packet*, align 8
  %14 = alloca double, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.demux_stream*, align 8
  %17 = alloca %struct.demux_queue*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca double, align 8
  %21 = alloca i32, align 4
  store %struct.demux_internal* %0, %struct.demux_internal** %2, align 8
  %22 = load %struct.demux_internal*, %struct.demux_internal** %2, align 8
  %23 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %22, i32 0, i32 5
  %24 = load %struct.demux_cached_range*, %struct.demux_cached_range** %23, align 8
  %25 = load %struct.demux_internal*, %struct.demux_internal** %2, align 8
  %26 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %25, i32 0, i32 7
  %27 = load %struct.demux_cached_range**, %struct.demux_cached_range*** %26, align 8
  %28 = load %struct.demux_internal*, %struct.demux_internal** %2, align 8
  %29 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = sub nsw i32 %30, 1
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.demux_cached_range*, %struct.demux_cached_range** %27, i64 %32
  %34 = load %struct.demux_cached_range*, %struct.demux_cached_range** %33, align 8
  %35 = icmp eq %struct.demux_cached_range* %24, %34
  %36 = zext i1 %35 to i32
  %37 = call i32 @assert(i32 %36)
  br label %38

38:                                               ; preds = %1, %353
  store i64 0, i64* %3, align 8
  store i32 0, i32* %4, align 4
  br label %39

39:                                               ; preds = %59, %38
  %40 = load i32, i32* %4, align 4
  %41 = load %struct.demux_internal*, %struct.demux_internal** %2, align 8
  %42 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = icmp slt i32 %40, %43
  br i1 %44, label %45, label %62

45:                                               ; preds = %39
  %46 = load %struct.demux_internal*, %struct.demux_internal** %2, align 8
  %47 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %46, i32 0, i32 8
  %48 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %47, align 8
  %49 = load i32, i32* %4, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %48, i64 %50
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load %struct.demux_stream*, %struct.demux_stream** %53, align 8
  store %struct.demux_stream* %54, %struct.demux_stream** %5, align 8
  %55 = load %struct.demux_stream*, %struct.demux_stream** %5, align 8
  %56 = call i64 @get_foward_buffered_bytes(%struct.demux_stream* %55)
  %57 = load i64, i64* %3, align 8
  %58 = add nsw i64 %57, %56
  store i64 %58, i64* %3, align 8
  br label %59

59:                                               ; preds = %45
  %60 = load i32, i32* %4, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %4, align 4
  br label %39

62:                                               ; preds = %39
  %63 = load %struct.demux_internal*, %struct.demux_internal** %2, align 8
  %64 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %63, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  store i64 %65, i64* %6, align 8
  %66 = load i64, i64* %6, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %84

68:                                               ; preds = %62
  %69 = load %struct.demux_internal*, %struct.demux_internal** %2, align 8
  %70 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %69, i32 0, i32 3
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* %3, align 8
  %73 = add nsw i64 %72, 1
  %74 = icmp sgt i64 %71, %73
  br i1 %74, label %75, label %84

75:                                               ; preds = %68
  %76 = load %struct.demux_internal*, %struct.demux_internal** %2, align 8
  %77 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %76, i32 0, i32 3
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* %3, align 8
  %80 = add nsw i64 %79, 1
  %81 = sub nsw i64 %78, %80
  %82 = load i64, i64* %6, align 8
  %83 = add nsw i64 %82, %81
  store i64 %83, i64* %6, align 8
  br label %84

84:                                               ; preds = %75, %68, %62
  %85 = load %struct.demux_internal*, %struct.demux_internal** %2, align 8
  %86 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %85, i32 0, i32 4
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* %3, align 8
  %89 = sub nsw i64 %87, %88
  %90 = load i64, i64* %6, align 8
  %91 = icmp sle i64 %89, %90
  br i1 %91, label %92, label %93

92:                                               ; preds = %84
  br label %354

93:                                               ; preds = %84
  %94 = load %struct.demux_internal*, %struct.demux_internal** %2, align 8
  %95 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %94, i32 0, i32 7
  %96 = load %struct.demux_cached_range**, %struct.demux_cached_range*** %95, align 8
  %97 = getelementptr inbounds %struct.demux_cached_range*, %struct.demux_cached_range** %96, i64 0
  %98 = load %struct.demux_cached_range*, %struct.demux_cached_range** %97, align 8
  store %struct.demux_cached_range* %98, %struct.demux_cached_range** %7, align 8
  %99 = load double, double* @MP_NOPTS_VALUE, align 8
  store double %99, double* %8, align 8
  store %struct.demux_stream* null, %struct.demux_stream** %9, align 8
  store i32 0, i32* %10, align 4
  br label %100

100:                                              ; preds = %171, %93
  %101 = load i32, i32* %10, align 4
  %102 = load %struct.demux_cached_range*, %struct.demux_cached_range** %7, align 8
  %103 = getelementptr inbounds %struct.demux_cached_range, %struct.demux_cached_range* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = icmp slt i32 %101, %104
  br i1 %105, label %106, label %174

106:                                              ; preds = %100
  %107 = load %struct.demux_cached_range*, %struct.demux_cached_range** %7, align 8
  %108 = getelementptr inbounds %struct.demux_cached_range, %struct.demux_cached_range* %107, i32 0, i32 2
  %109 = load %struct.demux_queue**, %struct.demux_queue*** %108, align 8
  %110 = load i32, i32* %10, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.demux_queue*, %struct.demux_queue** %109, i64 %111
  %113 = load %struct.demux_queue*, %struct.demux_queue** %112, align 8
  store %struct.demux_queue* %113, %struct.demux_queue** %11, align 8
  %114 = load %struct.demux_queue*, %struct.demux_queue** %11, align 8
  %115 = getelementptr inbounds %struct.demux_queue, %struct.demux_queue* %114, i32 0, i32 4
  %116 = load %struct.demux_stream*, %struct.demux_stream** %115, align 8
  store %struct.demux_stream* %116, %struct.demux_stream** %12, align 8
  %117 = load %struct.demux_queue*, %struct.demux_queue** %11, align 8
  %118 = getelementptr inbounds %struct.demux_queue, %struct.demux_queue* %117, i32 0, i32 3
  %119 = load %struct.demux_packet*, %struct.demux_packet** %118, align 8
  %120 = icmp ne %struct.demux_packet* %119, null
  br i1 %120, label %121, label %170

121:                                              ; preds = %106
  %122 = load %struct.demux_queue*, %struct.demux_queue** %11, align 8
  %123 = getelementptr inbounds %struct.demux_queue, %struct.demux_queue* %122, i32 0, i32 3
  %124 = load %struct.demux_packet*, %struct.demux_packet** %123, align 8
  %125 = load %struct.demux_stream*, %struct.demux_stream** %12, align 8
  %126 = getelementptr inbounds %struct.demux_stream, %struct.demux_stream* %125, i32 0, i32 2
  %127 = load %struct.demux_packet*, %struct.demux_packet** %126, align 8
  %128 = icmp ne %struct.demux_packet* %124, %127
  br i1 %128, label %129, label %170

129:                                              ; preds = %121
  %130 = load %struct.demux_queue*, %struct.demux_queue** %11, align 8
  %131 = getelementptr inbounds %struct.demux_queue, %struct.demux_queue* %130, i32 0, i32 3
  %132 = load %struct.demux_packet*, %struct.demux_packet** %131, align 8
  store %struct.demux_packet* %132, %struct.demux_packet** %13, align 8
  %133 = load %struct.demux_queue*, %struct.demux_queue** %11, align 8
  %134 = getelementptr inbounds %struct.demux_queue, %struct.demux_queue* %133, i32 0, i32 0
  %135 = load double, double* %134, align 8
  store double %135, double* %14, align 8
  %136 = load %struct.demux_internal*, %struct.demux_internal** %2, align 8
  %137 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %136, i32 0, i32 6
  %138 = load i64, i64* %137, align 8
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %150

140:                                              ; preds = %129
  %141 = load double, double* %14, align 8
  %142 = load double, double* @MP_NOPTS_VALUE, align 8
  %143 = fcmp oeq double %141, %142
  br i1 %143, label %150, label %144

144:                                              ; preds = %140
  %145 = load %struct.demux_packet*, %struct.demux_packet** %13, align 8
  %146 = getelementptr inbounds %struct.demux_packet, %struct.demux_packet* %145, i32 0, i32 1
  %147 = load i64, i64* %146, align 8
  %148 = icmp ne i64 %147, 0
  %149 = xor i1 %148, true
  br label %150

150:                                              ; preds = %144, %140, %129
  %151 = phi i1 [ true, %140 ], [ true, %129 ], [ %149, %144 ]
  %152 = zext i1 %151 to i32
  store i32 %152, i32* %15, align 4
  %153 = load i32, i32* %15, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %162, label %155

155:                                              ; preds = %150
  %156 = load %struct.demux_stream*, %struct.demux_stream** %9, align 8
  %157 = icmp ne %struct.demux_stream* %156, null
  br i1 %157, label %158, label %162

158:                                              ; preds = %155
  %159 = load double, double* %14, align 8
  %160 = load double, double* %8, align 8
  %161 = fcmp olt double %159, %160
  br i1 %161, label %162, label %169

162:                                              ; preds = %158, %155, %150
  %163 = load double, double* %14, align 8
  store double %163, double* %8, align 8
  %164 = load %struct.demux_stream*, %struct.demux_stream** %12, align 8
  store %struct.demux_stream* %164, %struct.demux_stream** %9, align 8
  %165 = load i32, i32* %15, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %168

167:                                              ; preds = %162
  br label %174

168:                                              ; preds = %162
  br label %169

169:                                              ; preds = %168, %158
  br label %170

170:                                              ; preds = %169, %121, %106
  br label %171

171:                                              ; preds = %170
  %172 = load i32, i32* %10, align 4
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %10, align 4
  br label %100

174:                                              ; preds = %167, %100
  %175 = load %struct.demux_stream*, %struct.demux_stream** %9, align 8
  %176 = icmp ne %struct.demux_stream* %175, null
  br i1 %176, label %178, label %177

177:                                              ; preds = %174
  br label %354

178:                                              ; preds = %174
  %179 = load %struct.demux_stream*, %struct.demux_stream** %9, align 8
  store %struct.demux_stream* %179, %struct.demux_stream** %16, align 8
  %180 = load %struct.demux_cached_range*, %struct.demux_cached_range** %7, align 8
  %181 = getelementptr inbounds %struct.demux_cached_range, %struct.demux_cached_range* %180, i32 0, i32 2
  %182 = load %struct.demux_queue**, %struct.demux_queue*** %181, align 8
  %183 = load %struct.demux_stream*, %struct.demux_stream** %16, align 8
  %184 = getelementptr inbounds %struct.demux_stream, %struct.demux_stream* %183, i32 0, i32 0
  %185 = load i64, i64* %184, align 8
  %186 = getelementptr inbounds %struct.demux_queue*, %struct.demux_queue** %182, i64 %185
  %187 = load %struct.demux_queue*, %struct.demux_queue** %186, align 8
  store %struct.demux_queue* %187, %struct.demux_queue** %17, align 8
  %188 = load %struct.demux_queue*, %struct.demux_queue** %17, align 8
  %189 = getelementptr inbounds %struct.demux_queue, %struct.demux_queue* %188, i32 0, i32 3
  %190 = load %struct.demux_packet*, %struct.demux_packet** %189, align 8
  %191 = icmp ne %struct.demux_packet* %190, null
  br i1 %191, label %192, label %200

192:                                              ; preds = %178
  %193 = load %struct.demux_queue*, %struct.demux_queue** %17, align 8
  %194 = getelementptr inbounds %struct.demux_queue, %struct.demux_queue* %193, i32 0, i32 3
  %195 = load %struct.demux_packet*, %struct.demux_packet** %194, align 8
  %196 = getelementptr inbounds %struct.demux_packet, %struct.demux_packet* %195, i32 0, i32 1
  %197 = load i64, i64* %196, align 8
  %198 = icmp ne i64 %197, 0
  %199 = xor i1 %198, true
  br label %200

200:                                              ; preds = %192, %178
  %201 = phi i1 [ false, %178 ], [ %199, %192 ]
  %202 = zext i1 %201 to i32
  store i32 %202, i32* %18, align 4
  store i32 0, i32* %19, align 4
  br label %203

203:                                              ; preds = %238, %200
  %204 = load %struct.demux_queue*, %struct.demux_queue** %17, align 8
  %205 = getelementptr inbounds %struct.demux_queue, %struct.demux_queue* %204, i32 0, i32 3
  %206 = load %struct.demux_packet*, %struct.demux_packet** %205, align 8
  %207 = icmp ne %struct.demux_packet* %206, null
  br i1 %207, label %208, label %216

208:                                              ; preds = %203
  %209 = load %struct.demux_queue*, %struct.demux_queue** %17, align 8
  %210 = getelementptr inbounds %struct.demux_queue, %struct.demux_queue* %209, i32 0, i32 3
  %211 = load %struct.demux_packet*, %struct.demux_packet** %210, align 8
  %212 = load %struct.demux_stream*, %struct.demux_stream** %16, align 8
  %213 = getelementptr inbounds %struct.demux_stream, %struct.demux_stream* %212, i32 0, i32 2
  %214 = load %struct.demux_packet*, %struct.demux_packet** %213, align 8
  %215 = icmp ne %struct.demux_packet* %211, %214
  br label %216

216:                                              ; preds = %208, %203
  %217 = phi i1 [ false, %203 ], [ %215, %208 ]
  br i1 %217, label %218, label %241

218:                                              ; preds = %216
  %219 = load %struct.demux_queue*, %struct.demux_queue** %17, align 8
  %220 = getelementptr inbounds %struct.demux_queue, %struct.demux_queue* %219, i32 0, i32 3
  %221 = load %struct.demux_packet*, %struct.demux_packet** %220, align 8
  %222 = getelementptr inbounds %struct.demux_packet, %struct.demux_packet* %221, i32 0, i32 1
  %223 = load i64, i64* %222, align 8
  %224 = icmp ne i64 %223, 0
  br i1 %224, label %225, label %238

225:                                              ; preds = %218
  %226 = load i32, i32* %19, align 4
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %231, label %228

228:                                              ; preds = %225
  %229 = load i32, i32* %18, align 4
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %237

231:                                              ; preds = %228, %225
  %232 = load %struct.demux_internal*, %struct.demux_internal** %2, align 8
  %233 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %232, i32 0, i32 6
  %234 = load i64, i64* %233, align 8
  %235 = icmp ne i64 %234, 0
  br i1 %235, label %236, label %237

236:                                              ; preds = %231
  br label %241

237:                                              ; preds = %231, %228
  store i32 1, i32* %19, align 4
  br label %238

238:                                              ; preds = %237, %218
  %239 = load %struct.demux_queue*, %struct.demux_queue** %17, align 8
  %240 = call i32 @remove_head_packet(%struct.demux_queue* %239)
  br label %203

241:                                              ; preds = %236, %216
  %242 = load i32, i32* %19, align 4
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %244, label %338

244:                                              ; preds = %241
  %245 = load %struct.demux_queue*, %struct.demux_queue** %17, align 8
  %246 = getelementptr inbounds %struct.demux_queue, %struct.demux_queue* %245, i32 0, i32 2
  %247 = load %struct.demux_packet*, %struct.demux_packet** %246, align 8
  %248 = icmp ne %struct.demux_packet* %247, null
  %249 = xor i1 %248, true
  %250 = zext i1 %249 to i32
  %251 = call i32 @assert(i32 %250)
  %252 = load %struct.demux_queue*, %struct.demux_queue** %17, align 8
  %253 = getelementptr inbounds %struct.demux_queue, %struct.demux_queue* %252, i32 0, i32 3
  %254 = load %struct.demux_packet*, %struct.demux_packet** %253, align 8
  %255 = load %struct.demux_queue*, %struct.demux_queue** %17, align 8
  %256 = getelementptr inbounds %struct.demux_queue, %struct.demux_queue* %255, i32 0, i32 2
  store %struct.demux_packet* %254, %struct.demux_packet** %256, align 8
  br label %257

257:                                              ; preds = %272, %244
  %258 = load %struct.demux_queue*, %struct.demux_queue** %17, align 8
  %259 = getelementptr inbounds %struct.demux_queue, %struct.demux_queue* %258, i32 0, i32 2
  %260 = load %struct.demux_packet*, %struct.demux_packet** %259, align 8
  %261 = icmp ne %struct.demux_packet* %260, null
  br i1 %261, label %262, label %270

262:                                              ; preds = %257
  %263 = load %struct.demux_queue*, %struct.demux_queue** %17, align 8
  %264 = getelementptr inbounds %struct.demux_queue, %struct.demux_queue* %263, i32 0, i32 2
  %265 = load %struct.demux_packet*, %struct.demux_packet** %264, align 8
  %266 = getelementptr inbounds %struct.demux_packet, %struct.demux_packet* %265, i32 0, i32 1
  %267 = load i64, i64* %266, align 8
  %268 = icmp ne i64 %267, 0
  %269 = xor i1 %268, true
  br label %270

270:                                              ; preds = %262, %257
  %271 = phi i1 [ false, %257 ], [ %269, %262 ]
  br i1 %271, label %272, label %280

272:                                              ; preds = %270
  %273 = load %struct.demux_queue*, %struct.demux_queue** %17, align 8
  %274 = getelementptr inbounds %struct.demux_queue, %struct.demux_queue* %273, i32 0, i32 2
  %275 = load %struct.demux_packet*, %struct.demux_packet** %274, align 8
  %276 = getelementptr inbounds %struct.demux_packet, %struct.demux_packet* %275, i32 0, i32 0
  %277 = load %struct.demux_packet*, %struct.demux_packet** %276, align 8
  %278 = load %struct.demux_queue*, %struct.demux_queue** %17, align 8
  %279 = getelementptr inbounds %struct.demux_queue, %struct.demux_queue* %278, i32 0, i32 2
  store %struct.demux_packet* %277, %struct.demux_packet** %279, align 8
  br label %257

280:                                              ; preds = %270
  %281 = load %struct.demux_queue*, %struct.demux_queue** %17, align 8
  %282 = getelementptr inbounds %struct.demux_queue, %struct.demux_queue* %281, i32 0, i32 0
  %283 = load double, double* %282, align 8
  %284 = load double, double* @MP_NOPTS_VALUE, align 8
  %285 = fcmp une double %283, %284
  br i1 %285, label %286, label %292

286:                                              ; preds = %280
  %287 = load %struct.demux_queue*, %struct.demux_queue** %17, align 8
  %288 = getelementptr inbounds %struct.demux_queue, %struct.demux_queue* %287, i32 0, i32 0
  %289 = load double, double* %288, align 8
  %290 = load %struct.demux_queue*, %struct.demux_queue** %17, align 8
  %291 = getelementptr inbounds %struct.demux_queue, %struct.demux_queue* %290, i32 0, i32 1
  store double %289, double* %291, align 8
  br label %292

292:                                              ; preds = %286, %280
  %293 = load %struct.demux_queue*, %struct.demux_queue** %17, align 8
  %294 = getelementptr inbounds %struct.demux_queue, %struct.demux_queue* %293, i32 0, i32 2
  %295 = load %struct.demux_packet*, %struct.demux_packet** %294, align 8
  %296 = call i32 @compute_keyframe_times(%struct.demux_packet* %295, double* %20, i32* null)
  store i32 1, i32* %21, align 4
  %297 = load double, double* %20, align 8
  %298 = load %struct.demux_queue*, %struct.demux_queue** %17, align 8
  %299 = getelementptr inbounds %struct.demux_queue, %struct.demux_queue* %298, i32 0, i32 0
  store double %297, double* %299, align 8
  %300 = load %struct.demux_queue*, %struct.demux_queue** %17, align 8
  %301 = getelementptr inbounds %struct.demux_queue, %struct.demux_queue* %300, i32 0, i32 0
  %302 = load double, double* %301, align 8
  %303 = load double, double* @MP_NOPTS_VALUE, align 8
  %304 = fcmp une double %302, %303
  br i1 %304, label %305, label %331

305:                                              ; preds = %292
  %306 = load %struct.demux_stream*, %struct.demux_stream** %16, align 8
  %307 = getelementptr inbounds %struct.demux_stream, %struct.demux_stream* %306, i32 0, i32 1
  %308 = load %struct.TYPE_4__*, %struct.TYPE_4__** %307, align 8
  %309 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %308, i32 0, i32 0
  %310 = load i64, i64* %309, align 8
  %311 = sitofp i64 %310 to double
  %312 = load %struct.demux_queue*, %struct.demux_queue** %17, align 8
  %313 = getelementptr inbounds %struct.demux_queue, %struct.demux_queue* %312, i32 0, i32 0
  %314 = load double, double* %313, align 8
  %315 = fadd double %314, %311
  store double %315, double* %313, align 8
  %316 = load %struct.demux_cached_range*, %struct.demux_cached_range** %7, align 8
  %317 = getelementptr inbounds %struct.demux_cached_range, %struct.demux_cached_range* %316, i32 0, i32 1
  %318 = load double, double* %317, align 8
  %319 = load double, double* @MP_NOPTS_VALUE, align 8
  %320 = fcmp oeq double %318, %319
  br i1 %320, label %329, label %321

321:                                              ; preds = %305
  %322 = load %struct.demux_queue*, %struct.demux_queue** %17, align 8
  %323 = getelementptr inbounds %struct.demux_queue, %struct.demux_queue* %322, i32 0, i32 0
  %324 = load double, double* %323, align 8
  %325 = load %struct.demux_cached_range*, %struct.demux_cached_range** %7, align 8
  %326 = getelementptr inbounds %struct.demux_cached_range, %struct.demux_cached_range* %325, i32 0, i32 1
  %327 = load double, double* %326, align 8
  %328 = fcmp ole double %324, %327
  br i1 %328, label %329, label %330

329:                                              ; preds = %321, %305
  store i32 0, i32* %21, align 4
  br label %330

330:                                              ; preds = %329, %321
  br label %331

331:                                              ; preds = %330, %292
  %332 = load i32, i32* %21, align 4
  %333 = icmp ne i32 %332, 0
  br i1 %333, label %334, label %337

334:                                              ; preds = %331
  %335 = load %struct.demux_cached_range*, %struct.demux_cached_range** %7, align 8
  %336 = call i32 @update_seek_ranges(%struct.demux_cached_range* %335)
  br label %337

337:                                              ; preds = %334, %331
  br label %338

338:                                              ; preds = %337, %241
  %339 = load %struct.demux_cached_range*, %struct.demux_cached_range** %7, align 8
  %340 = load %struct.demux_internal*, %struct.demux_internal** %2, align 8
  %341 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %340, i32 0, i32 5
  %342 = load %struct.demux_cached_range*, %struct.demux_cached_range** %341, align 8
  %343 = icmp ne %struct.demux_cached_range* %339, %342
  br i1 %343, label %344, label %353

344:                                              ; preds = %338
  %345 = load %struct.demux_cached_range*, %struct.demux_cached_range** %7, align 8
  %346 = getelementptr inbounds %struct.demux_cached_range, %struct.demux_cached_range* %345, i32 0, i32 1
  %347 = load double, double* %346, align 8
  %348 = load double, double* @MP_NOPTS_VALUE, align 8
  %349 = fcmp oeq double %347, %348
  br i1 %349, label %350, label %353

350:                                              ; preds = %344
  %351 = load %struct.demux_internal*, %struct.demux_internal** %2, align 8
  %352 = call i32 @free_empty_cached_ranges(%struct.demux_internal* %351)
  br label %353

353:                                              ; preds = %350, %344, %338
  br label %38

354:                                              ; preds = %177, %92
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @get_foward_buffered_bytes(%struct.demux_stream*) #1

declare dso_local i32 @remove_head_packet(%struct.demux_queue*) #1

declare dso_local i32 @compute_keyframe_times(%struct.demux_packet*, double*, i32*) #1

declare dso_local i32 @update_seek_ranges(%struct.demux_cached_range*) #1

declare dso_local i32 @free_empty_cached_ranges(%struct.demux_internal*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
