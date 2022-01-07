; ModuleID = '/home/carl/AnghaBench/mpv/audio/out/extr_ao.c_ao_init.c'
source_filename = "/home/carl/AnghaBench/mpv/audio/out/extr_ao.c_ao_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 (%struct.ao*)*, i32, i32, i32 }
%struct.ao = type { i32, i32, i32, i8*, i32, i32, i8*, i32, i32, i32, i32, i32, i32, %struct.TYPE_5__*, %struct.TYPE_4__*, %struct.mp_chmap, i32, %struct.encode_lavc_context* }
%struct.TYPE_4__ = type { i32, i32 (%struct.ao*)*, i32 (%struct.ao*)*, i64 }
%struct.mp_chmap = type { i32 }
%struct.encode_lavc_context = type { i32 }
%struct.mpv_global = type { i32 }

@.str = private unnamed_addr constant [42 x i8] c"requested format: %d Hz, %s channels, %s\0A\00", align 1
@ao_api_push = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@ao_api_pull = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@AO_INIT_STREAM_SILENCE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"Invalid period size set.\0A\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"device buffer: %d samples.\0A\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"using soft-buffer of %d samples.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ao* (i32, %struct.mpv_global*, void (i8*)*, i8*, %struct.encode_lavc_context*, i32, i32, i32, i32, i8*, i8*)* @ao_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ao* @ao_init(i32 %0, %struct.mpv_global* %1, void (i8*)* %2, i8* %3, %struct.encode_lavc_context* %4, i32 %5, i32 %6, i32 %7, i32 %8, i8* %9, i8* %10) #0 {
  %12 = alloca %struct.ao*, align 8
  %13 = alloca %struct.mp_chmap, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.mpv_global*, align 8
  %16 = alloca void (i8*)*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca %struct.encode_lavc_context*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i8*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca %struct.ao*, align 8
  %25 = alloca i32, align 4
  %26 = alloca [80 x i8], align 16
  %27 = alloca [80 x i8], align 16
  %28 = alloca i32, align 4
  %29 = getelementptr inbounds %struct.mp_chmap, %struct.mp_chmap* %13, i32 0, i32 0
  store i32 %8, i32* %29, align 4
  store i32 %0, i32* %14, align 4
  store %struct.mpv_global* %1, %struct.mpv_global** %15, align 8
  store void (i8*)* %2, void (i8*)** %16, align 8
  store i8* %3, i8** %17, align 8
  store %struct.encode_lavc_context* %4, %struct.encode_lavc_context** %18, align 8
  store i32 %5, i32* %19, align 4
  store i32 %6, i32* %20, align 4
  store i32 %7, i32* %21, align 4
  store i8* %9, i8** %22, align 8
  store i8* %10, i8** %23, align 8
  %30 = load i32, i32* %14, align 4
  %31 = load %struct.mpv_global*, %struct.mpv_global** %15, align 8
  %32 = load void (i8*)*, void (i8*)** %16, align 8
  %33 = load i8*, i8** %17, align 8
  %34 = load i8*, i8** %23, align 8
  %35 = call %struct.ao* @ao_alloc(i32 %30, %struct.mpv_global* %31, void (i8*)* %32, i8* %33, i8* %34)
  store %struct.ao* %35, %struct.ao** %24, align 8
  %36 = load %struct.ao*, %struct.ao** %24, align 8
  %37 = icmp ne %struct.ao* %36, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %11
  store %struct.ao* null, %struct.ao** %12, align 8
  br label %318

39:                                               ; preds = %11
  %40 = load i32, i32* %20, align 4
  %41 = load %struct.ao*, %struct.ao** %24, align 8
  %42 = getelementptr inbounds %struct.ao, %struct.ao* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 8
  %43 = load %struct.ao*, %struct.ao** %24, align 8
  %44 = getelementptr inbounds %struct.ao, %struct.ao* %43, i32 0, i32 15
  %45 = bitcast %struct.mp_chmap* %44 to i8*
  %46 = bitcast %struct.mp_chmap* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %45, i8* align 4 %46, i64 4, i1 false)
  %47 = load i32, i32* %21, align 4
  %48 = load %struct.ao*, %struct.ao** %24, align 8
  %49 = getelementptr inbounds %struct.ao, %struct.ao* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 4
  %50 = load %struct.encode_lavc_context*, %struct.encode_lavc_context** %18, align 8
  %51 = load %struct.ao*, %struct.ao** %24, align 8
  %52 = getelementptr inbounds %struct.ao, %struct.ao* %51, i32 0, i32 17
  store %struct.encode_lavc_context* %50, %struct.encode_lavc_context** %52, align 8
  %53 = load i32, i32* %19, align 4
  %54 = load %struct.ao*, %struct.ao** %24, align 8
  %55 = getelementptr inbounds %struct.ao, %struct.ao* %54, i32 0, i32 2
  store i32 %53, i32* %55, align 8
  %56 = load %struct.ao*, %struct.ao** %24, align 8
  %57 = getelementptr inbounds %struct.ao, %struct.ao* %56, i32 0, i32 14
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.ao*, %struct.ao** %24, align 8
  %62 = getelementptr inbounds %struct.ao, %struct.ao* %61, i32 0, i32 17
  %63 = load %struct.encode_lavc_context*, %struct.encode_lavc_context** %62, align 8
  %64 = icmp ne %struct.encode_lavc_context* %63, null
  %65 = xor i1 %64, true
  %66 = xor i1 %65, true
  %67 = zext i1 %66 to i32
  %68 = icmp ne i32 %60, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %39
  br label %315

70:                                               ; preds = %39
  %71 = load %struct.ao*, %struct.ao** %24, align 8
  %72 = load %struct.ao*, %struct.ao** %24, align 8
  %73 = getelementptr inbounds %struct.ao, %struct.ao* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.ao*, %struct.ao** %24, align 8
  %76 = getelementptr inbounds %struct.ao, %struct.ao* %75, i32 0, i32 15
  %77 = call i32 @mp_chmap_to_str(%struct.mp_chmap* %76)
  %78 = load %struct.ao*, %struct.ao** %24, align 8
  %79 = getelementptr inbounds %struct.ao, %struct.ao* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @af_fmt_to_str(i32 %80)
  %82 = call i32 (%struct.ao*, i8*, i32, ...) @MP_VERBOSE(%struct.ao* %71, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %74, i32 %77, i32 %81)
  %83 = load %struct.ao*, %struct.ao** %24, align 8
  %84 = load i8*, i8** %22, align 8
  %85 = call i8* @talloc_strdup(%struct.ao* %83, i8* %84)
  %86 = load %struct.ao*, %struct.ao** %24, align 8
  %87 = getelementptr inbounds %struct.ao, %struct.ao* %86, i32 0, i32 3
  store i8* %85, i8** %87, align 8
  %88 = load %struct.ao*, %struct.ao** %24, align 8
  %89 = getelementptr inbounds %struct.ao, %struct.ao* %88, i32 0, i32 14
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 3
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  %94 = zext i1 %93 to i64
  %95 = select i1 %93, %struct.TYPE_5__* @ao_api_push, %struct.TYPE_5__* @ao_api_pull
  %96 = load %struct.ao*, %struct.ao** %24, align 8
  %97 = getelementptr inbounds %struct.ao, %struct.ao* %96, i32 0, i32 13
  store %struct.TYPE_5__* %95, %struct.TYPE_5__** %97, align 8
  %98 = load %struct.ao*, %struct.ao** %24, align 8
  %99 = load %struct.ao*, %struct.ao** %24, align 8
  %100 = getelementptr inbounds %struct.ao, %struct.ao* %99, i32 0, i32 13
  %101 = load %struct.TYPE_5__*, %struct.TYPE_5__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 3
  %103 = load i32, i32* %102, align 8
  %104 = call i32 @talloc_zero_size(%struct.ao* %98, i32 %103)
  %105 = load %struct.ao*, %struct.ao** %24, align 8
  %106 = getelementptr inbounds %struct.ao, %struct.ao* %105, i32 0, i32 16
  store i32 %104, i32* %106, align 4
  %107 = load %struct.ao*, %struct.ao** %24, align 8
  %108 = getelementptr inbounds %struct.ao, %struct.ao* %107, i32 0, i32 13
  %109 = load %struct.TYPE_5__*, %struct.TYPE_5__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %121, label %113

113:                                              ; preds = %70
  %114 = load %struct.ao*, %struct.ao** %24, align 8
  %115 = getelementptr inbounds %struct.ao, %struct.ao* %114, i32 0, i32 13
  %116 = load %struct.TYPE_5__*, %struct.TYPE_5__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 8
  %119 = icmp ne i32 %118, 0
  %120 = xor i1 %119, true
  br label %121

121:                                              ; preds = %113, %70
  %122 = phi i1 [ false, %70 ], [ %120, %113 ]
  %123 = zext i1 %122 to i32
  %124 = call i32 @assert(i32 %123)
  %125 = load i32, i32* %19, align 4
  %126 = load i32, i32* @AO_INIT_STREAM_SILENCE, align 4
  %127 = and i32 %125, %126
  %128 = load %struct.ao*, %struct.ao** %24, align 8
  %129 = getelementptr inbounds %struct.ao, %struct.ao* %128, i32 0, i32 4
  store i32 %127, i32* %129, align 8
  %130 = load %struct.ao*, %struct.ao** %24, align 8
  %131 = getelementptr inbounds %struct.ao, %struct.ao* %130, i32 0, i32 5
  store i32 1, i32* %131, align 4
  %132 = load %struct.ao*, %struct.ao** %24, align 8
  %133 = getelementptr inbounds %struct.ao, %struct.ao* %132, i32 0, i32 14
  %134 = load %struct.TYPE_4__*, %struct.TYPE_4__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i32 0, i32 1
  %136 = load i32 (%struct.ao*)*, i32 (%struct.ao*)** %135, align 8
  %137 = load %struct.ao*, %struct.ao** %24, align 8
  %138 = call i32 %136(%struct.ao* %137)
  store i32 %138, i32* %25, align 4
  %139 = load i32, i32* %25, align 4
  %140 = icmp slt i32 %139, 0
  br i1 %140, label %141, label %181

141:                                              ; preds = %121
  %142 = load %struct.ao*, %struct.ao** %24, align 8
  %143 = getelementptr inbounds %struct.ao, %struct.ao* %142, i32 0, i32 6
  %144 = load i8*, i8** %143, align 8
  %145 = icmp ne i8* %144, null
  br i1 %145, label %146, label %180

146:                                              ; preds = %141
  %147 = getelementptr inbounds [80 x i8], [80 x i8]* %26, i64 0, i64 0
  %148 = load %struct.ao*, %struct.ao** %24, align 8
  %149 = getelementptr inbounds %struct.ao, %struct.ao* %148, i32 0, i32 6
  %150 = load i8*, i8** %149, align 8
  %151 = call i32 @snprintf(i8* %147, i32 80, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %150)
  %152 = getelementptr inbounds [80 x i8], [80 x i8]* %27, i64 0, i64 0
  %153 = load %struct.ao*, %struct.ao** %24, align 8
  %154 = getelementptr inbounds %struct.ao, %struct.ao* %153, i32 0, i32 3
  %155 = load i8*, i8** %154, align 8
  %156 = icmp ne i8* %155, null
  br i1 %156, label %157, label %161

157:                                              ; preds = %146
  %158 = load %struct.ao*, %struct.ao** %24, align 8
  %159 = getelementptr inbounds %struct.ao, %struct.ao* %158, i32 0, i32 3
  %160 = load i8*, i8** %159, align 8
  br label %162

161:                                              ; preds = %146
  br label %162

162:                                              ; preds = %161, %157
  %163 = phi i8* [ %160, %157 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), %161 ]
  %164 = call i32 @snprintf(i8* %152, i32 80, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %163)
  %165 = load %struct.ao*, %struct.ao** %24, align 8
  %166 = call i32 @talloc_free(%struct.ao* %165)
  %167 = load i32, i32* %14, align 4
  %168 = load %struct.mpv_global*, %struct.mpv_global** %15, align 8
  %169 = load void (i8*)*, void (i8*)** %16, align 8
  %170 = load i8*, i8** %17, align 8
  %171 = load %struct.encode_lavc_context*, %struct.encode_lavc_context** %18, align 8
  %172 = load i32, i32* %19, align 4
  %173 = load i32, i32* %20, align 4
  %174 = load i32, i32* %21, align 4
  %175 = getelementptr inbounds [80 x i8], [80 x i8]* %27, i64 0, i64 0
  %176 = getelementptr inbounds [80 x i8], [80 x i8]* %26, i64 0, i64 0
  %177 = getelementptr inbounds %struct.mp_chmap, %struct.mp_chmap* %13, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = call %struct.ao* @ao_init(i32 %167, %struct.mpv_global* %168, void (i8*)* %169, i8* %170, %struct.encode_lavc_context* %171, i32 %172, i32 %173, i32 %174, i32 %178, i8* %175, i8* %176)
  store %struct.ao* %179, %struct.ao** %12, align 8
  br label %318

180:                                              ; preds = %141
  br label %315

181:                                              ; preds = %121
  %182 = load %struct.ao*, %struct.ao** %24, align 8
  %183 = getelementptr inbounds %struct.ao, %struct.ao* %182, i32 0, i32 5
  %184 = load i32, i32* %183, align 4
  %185 = icmp slt i32 %184, 1
  br i1 %185, label %186, label %189

186:                                              ; preds = %181
  %187 = load %struct.ao*, %struct.ao** %24, align 8
  %188 = call i32 @MP_ERR(%struct.ao* %187, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  br label %315

189:                                              ; preds = %181
  %190 = load %struct.ao*, %struct.ao** %24, align 8
  %191 = getelementptr inbounds %struct.ao, %struct.ao* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 4
  %193 = call i32 @af_fmt_to_bytes(i32 %192)
  %194 = load %struct.ao*, %struct.ao** %24, align 8
  %195 = getelementptr inbounds %struct.ao, %struct.ao* %194, i32 0, i32 7
  store i32 %193, i32* %195, align 8
  %196 = load %struct.ao*, %struct.ao** %24, align 8
  %197 = getelementptr inbounds %struct.ao, %struct.ao* %196, i32 0, i32 8
  store i32 1, i32* %197, align 4
  %198 = load %struct.ao*, %struct.ao** %24, align 8
  %199 = getelementptr inbounds %struct.ao, %struct.ao* %198, i32 0, i32 1
  %200 = load i32, i32* %199, align 4
  %201 = call i64 @af_fmt_is_planar(i32 %200)
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %203, label %210

203:                                              ; preds = %189
  %204 = load %struct.ao*, %struct.ao** %24, align 8
  %205 = getelementptr inbounds %struct.ao, %struct.ao* %204, i32 0, i32 15
  %206 = getelementptr inbounds %struct.mp_chmap, %struct.mp_chmap* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 8
  %208 = load %struct.ao*, %struct.ao** %24, align 8
  %209 = getelementptr inbounds %struct.ao, %struct.ao* %208, i32 0, i32 8
  store i32 %207, i32* %209, align 4
  br label %219

210:                                              ; preds = %189
  %211 = load %struct.ao*, %struct.ao** %24, align 8
  %212 = getelementptr inbounds %struct.ao, %struct.ao* %211, i32 0, i32 15
  %213 = getelementptr inbounds %struct.mp_chmap, %struct.mp_chmap* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 8
  %215 = load %struct.ao*, %struct.ao** %24, align 8
  %216 = getelementptr inbounds %struct.ao, %struct.ao* %215, i32 0, i32 7
  %217 = load i32, i32* %216, align 8
  %218 = mul nsw i32 %217, %214
  store i32 %218, i32* %216, align 8
  br label %219

219:                                              ; preds = %210, %203
  %220 = load %struct.ao*, %struct.ao** %24, align 8
  %221 = getelementptr inbounds %struct.ao, %struct.ao* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 8
  %223 = load %struct.ao*, %struct.ao** %24, align 8
  %224 = getelementptr inbounds %struct.ao, %struct.ao* %223, i32 0, i32 7
  %225 = load i32, i32* %224, align 8
  %226 = mul nsw i32 %222, %225
  %227 = load %struct.ao*, %struct.ao** %24, align 8
  %228 = getelementptr inbounds %struct.ao, %struct.ao* %227, i32 0, i32 9
  store i32 %226, i32* %228, align 8
  %229 = load %struct.ao*, %struct.ao** %24, align 8
  %230 = getelementptr inbounds %struct.ao, %struct.ao* %229, i32 0, i32 10
  %231 = load i32, i32* %230, align 4
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %250, label %233

233:                                              ; preds = %219
  %234 = load %struct.ao*, %struct.ao** %24, align 8
  %235 = getelementptr inbounds %struct.ao, %struct.ao* %234, i32 0, i32 14
  %236 = load %struct.TYPE_4__*, %struct.TYPE_4__** %235, align 8
  %237 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %236, i32 0, i32 2
  %238 = load i32 (%struct.ao*)*, i32 (%struct.ao*)** %237, align 8
  %239 = icmp ne i32 (%struct.ao*)* %238, null
  br i1 %239, label %240, label %250

240:                                              ; preds = %233
  %241 = load %struct.ao*, %struct.ao** %24, align 8
  %242 = getelementptr inbounds %struct.ao, %struct.ao* %241, i32 0, i32 14
  %243 = load %struct.TYPE_4__*, %struct.TYPE_4__** %242, align 8
  %244 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %243, i32 0, i32 2
  %245 = load i32 (%struct.ao*)*, i32 (%struct.ao*)** %244, align 8
  %246 = load %struct.ao*, %struct.ao** %24, align 8
  %247 = call i32 %245(%struct.ao* %246)
  %248 = load %struct.ao*, %struct.ao** %24, align 8
  %249 = getelementptr inbounds %struct.ao, %struct.ao* %248, i32 0, i32 10
  store i32 %247, i32* %249, align 4
  br label %250

250:                                              ; preds = %240, %233, %219
  %251 = load %struct.ao*, %struct.ao** %24, align 8
  %252 = getelementptr inbounds %struct.ao, %struct.ao* %251, i32 0, i32 10
  %253 = load i32, i32* %252, align 4
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %255, label %261

255:                                              ; preds = %250
  %256 = load %struct.ao*, %struct.ao** %24, align 8
  %257 = load %struct.ao*, %struct.ao** %24, align 8
  %258 = getelementptr inbounds %struct.ao, %struct.ao* %257, i32 0, i32 10
  %259 = load i32, i32* %258, align 4
  %260 = call i32 (%struct.ao*, i8*, i32, ...) @MP_VERBOSE(%struct.ao* %256, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i32 %259)
  br label %261

261:                                              ; preds = %255, %250
  %262 = load %struct.ao*, %struct.ao** %24, align 8
  %263 = getelementptr inbounds %struct.ao, %struct.ao* %262, i32 0, i32 10
  %264 = load i32, i32* %263, align 4
  %265 = load %struct.ao*, %struct.ao** %24, align 8
  %266 = getelementptr inbounds %struct.ao, %struct.ao* %265, i32 0, i32 12
  %267 = load i32, i32* %266, align 4
  %268 = load %struct.ao*, %struct.ao** %24, align 8
  %269 = getelementptr inbounds %struct.ao, %struct.ao* %268, i32 0, i32 0
  %270 = load i32, i32* %269, align 8
  %271 = mul nsw i32 %267, %270
  %272 = call i8* @MPMAX(i32 %264, i32 %271)
  %273 = ptrtoint i8* %272 to i32
  %274 = load %struct.ao*, %struct.ao** %24, align 8
  %275 = getelementptr inbounds %struct.ao, %struct.ao* %274, i32 0, i32 11
  store i32 %273, i32* %275, align 8
  %276 = load %struct.ao*, %struct.ao** %24, align 8
  %277 = getelementptr inbounds %struct.ao, %struct.ao* %276, i32 0, i32 11
  %278 = load i32, i32* %277, align 8
  %279 = call i8* @MPMAX(i32 %278, i32 1)
  %280 = ptrtoint i8* %279 to i32
  %281 = load %struct.ao*, %struct.ao** %24, align 8
  %282 = getelementptr inbounds %struct.ao, %struct.ao* %281, i32 0, i32 11
  store i32 %280, i32* %282, align 8
  %283 = load %struct.ao*, %struct.ao** %24, align 8
  %284 = getelementptr inbounds %struct.ao, %struct.ao* %283, i32 0, i32 1
  %285 = load i32, i32* %284, align 4
  %286 = call i32 @af_format_sample_alignment(i32 %285)
  store i32 %286, i32* %28, align 4
  %287 = load %struct.ao*, %struct.ao** %24, align 8
  %288 = getelementptr inbounds %struct.ao, %struct.ao* %287, i32 0, i32 11
  %289 = load i32, i32* %288, align 8
  %290 = load i32, i32* %28, align 4
  %291 = add nsw i32 %289, %290
  %292 = sub nsw i32 %291, 1
  %293 = load i32, i32* %28, align 4
  %294 = sdiv i32 %292, %293
  %295 = load i32, i32* %28, align 4
  %296 = mul nsw i32 %294, %295
  %297 = load %struct.ao*, %struct.ao** %24, align 8
  %298 = getelementptr inbounds %struct.ao, %struct.ao* %297, i32 0, i32 11
  store i32 %296, i32* %298, align 8
  %299 = load %struct.ao*, %struct.ao** %24, align 8
  %300 = load %struct.ao*, %struct.ao** %24, align 8
  %301 = getelementptr inbounds %struct.ao, %struct.ao* %300, i32 0, i32 11
  %302 = load i32, i32* %301, align 8
  %303 = call i32 (%struct.ao*, i8*, i32, ...) @MP_VERBOSE(%struct.ao* %299, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0), i32 %302)
  %304 = load %struct.ao*, %struct.ao** %24, align 8
  %305 = getelementptr inbounds %struct.ao, %struct.ao* %304, i32 0, i32 13
  %306 = load %struct.TYPE_5__*, %struct.TYPE_5__** %305, align 8
  %307 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %306, i32 0, i32 0
  %308 = load i64 (%struct.ao*)*, i64 (%struct.ao*)** %307, align 8
  %309 = load %struct.ao*, %struct.ao** %24, align 8
  %310 = call i64 %308(%struct.ao* %309)
  %311 = icmp slt i64 %310, 0
  br i1 %311, label %312, label %313

312:                                              ; preds = %261
  br label %315

313:                                              ; preds = %261
  %314 = load %struct.ao*, %struct.ao** %24, align 8
  store %struct.ao* %314, %struct.ao** %12, align 8
  br label %318

315:                                              ; preds = %312, %186, %180, %69
  %316 = load %struct.ao*, %struct.ao** %24, align 8
  %317 = call i32 @talloc_free(%struct.ao* %316)
  store %struct.ao* null, %struct.ao** %12, align 8
  br label %318

318:                                              ; preds = %315, %313, %162, %38
  %319 = load %struct.ao*, %struct.ao** %12, align 8
  ret %struct.ao* %319
}

declare dso_local %struct.ao* @ao_alloc(i32, %struct.mpv_global*, void (i8*)*, i8*, i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @MP_VERBOSE(%struct.ao*, i8*, i32, ...) #1

declare dso_local i32 @mp_chmap_to_str(%struct.mp_chmap*) #1

declare dso_local i32 @af_fmt_to_str(i32) #1

declare dso_local i8* @talloc_strdup(%struct.ao*, i8*) #1

declare dso_local i32 @talloc_zero_size(%struct.ao*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i32 @talloc_free(%struct.ao*) #1

declare dso_local i32 @MP_ERR(%struct.ao*, i8*) #1

declare dso_local i32 @af_fmt_to_bytes(i32) #1

declare dso_local i64 @af_fmt_is_planar(i32) #1

declare dso_local i8* @MPMAX(i32, i32) #1

declare dso_local i32 @af_format_sample_alignment(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
