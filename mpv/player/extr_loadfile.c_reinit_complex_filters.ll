; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_loadfile.c_reinit_complex_filters.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_loadfile.c_reinit_complex_filters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MPContext = type { i32, %struct.track**, i64, %struct.TYPE_18__*, %struct.ao_chain*, %struct.vo_chain*, i32, i32, %struct.TYPE_11__* }
%struct.track = type { i32, i32, i32, %struct.TYPE_17__*, %struct.mp_pin* }
%struct.TYPE_17__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { %struct.mp_pin** }
%struct.mp_pin = type { i32 }
%struct.TYPE_18__ = type { i32, %struct.mp_pin** }
%struct.ao_chain = type { %struct.mp_pin*, %struct.TYPE_15__*, %struct.track* }
%struct.TYPE_15__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { %struct.mp_pin** }
%struct.vo_chain = type { %struct.mp_pin*, %struct.TYPE_13__*, %struct.track* }
%struct.TYPE_13__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { %struct.mp_pin** }
%struct.TYPE_11__ = type { i8* }
%struct.mp_lavfi = type { %struct.TYPE_18__* }

@.str = private unnamed_addr constant [3 x i8] c"vo\00", align 1
@MP_PIN_OUT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"ao\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"%cid%d\00", align 1
@MP_PIN_IN = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [38 x i8] c"Pad %s is not connected to anything.\0A\00", align 1
@MPV_EVENT_TRACKS_CHANGED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.MPContext*, i32)* @reinit_complex_filters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reinit_complex_filters(%struct.MPContext* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.MPContext*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.mp_lavfi*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.mp_pin*, align 8
  %12 = alloca %struct.vo_chain*, align 8
  %13 = alloca %struct.ao_chain*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.track*, align 8
  %16 = alloca [32 x i8], align 16
  %17 = alloca i8, align 1
  %18 = alloca i32, align 4
  %19 = alloca %struct.mp_pin*, align 8
  %20 = alloca i32, align 4
  store %struct.MPContext* %0, %struct.MPContext** %4, align 8
  store i32 %1, i32* %5, align 4
  %21 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %22 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %21, i32 0, i32 8
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  store i8* %25, i8** %6, align 8
  %26 = load i8*, i8** %6, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %28, label %38

28:                                               ; preds = %2
  %29 = load i8*, i8** %6, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 0
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %28
  %35 = load i32, i32* %5, align 4
  %36 = icmp ne i32 %35, 0
  %37 = xor i1 %36, true
  br label %38

38:                                               ; preds = %34, %28, %2
  %39 = phi i1 [ false, %28 ], [ false, %2 ], [ %37, %34 ]
  %40 = zext i1 %39 to i32
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* %7, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %62

43:                                               ; preds = %38
  %44 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %45 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %44, i32 0, i32 3
  %46 = load %struct.TYPE_18__*, %struct.TYPE_18__** %45, align 8
  %47 = icmp ne %struct.TYPE_18__* %46, null
  br i1 %47, label %48, label %62

48:                                               ; preds = %43
  %49 = load i8*, i8** %6, align 8
  %50 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %51 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %50, i32 0, i32 7
  %52 = load i32, i32* %51, align 4
  %53 = call i64 @strcmp(i8* %49, i32 %52)
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %62

55:                                               ; preds = %48
  %56 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %57 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %56, i32 0, i32 3
  %58 = load %struct.TYPE_18__*, %struct.TYPE_18__** %57, align 8
  %59 = call i32 @mp_filter_has_failed(%struct.TYPE_18__* %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %55
  store i32 0, i32* %3, align 4
  br label %453

62:                                               ; preds = %55, %48, %43, %38
  %63 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %64 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %63, i32 0, i32 3
  %65 = load %struct.TYPE_18__*, %struct.TYPE_18__** %64, align 8
  %66 = icmp ne %struct.TYPE_18__* %65, null
  br i1 %66, label %71, label %67

67:                                               ; preds = %62
  %68 = load i32, i32* %7, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %71, label %70

70:                                               ; preds = %67
  store i32 0, i32* %3, align 4
  br label %453

71:                                               ; preds = %67, %62
  %72 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %73 = call i32 @deassociate_complex_filters(%struct.MPContext* %72)
  store i32 0, i32* %8, align 4
  %74 = load i32, i32* %7, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %77, label %76

76:                                               ; preds = %71
  store i32 1, i32* %8, align 4
  br label %411

77:                                               ; preds = %71
  %78 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %79 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %78, i32 0, i32 6
  %80 = load i32, i32* %79, align 8
  %81 = load i8*, i8** %6, align 8
  %82 = call %struct.mp_lavfi* @mp_lavfi_create_graph(i32 %80, i32 0, i32 0, i32* null, i8* %81)
  store %struct.mp_lavfi* %82, %struct.mp_lavfi** %9, align 8
  %83 = load %struct.mp_lavfi*, %struct.mp_lavfi** %9, align 8
  %84 = icmp ne %struct.mp_lavfi* %83, null
  br i1 %84, label %86, label %85

85:                                               ; preds = %77
  br label %411

86:                                               ; preds = %77
  %87 = load %struct.mp_lavfi*, %struct.mp_lavfi** %9, align 8
  %88 = getelementptr inbounds %struct.mp_lavfi, %struct.mp_lavfi* %87, i32 0, i32 0
  %89 = load %struct.TYPE_18__*, %struct.TYPE_18__** %88, align 8
  %90 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %91 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %90, i32 0, i32 3
  store %struct.TYPE_18__* %89, %struct.TYPE_18__** %91, align 8
  %92 = load i8*, i8** %6, align 8
  %93 = call i32 @talloc_strdup(i32* null, i8* %92)
  %94 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %95 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %94, i32 0, i32 7
  store i32 %93, i32* %95, align 4
  %96 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %97 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %96, i32 0, i32 3
  %98 = load %struct.TYPE_18__*, %struct.TYPE_18__** %97, align 8
  %99 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %100 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %99, i32 0, i32 6
  %101 = load i32, i32* %100, align 8
  %102 = call i32 @mp_filter_set_error_handler(%struct.TYPE_18__* %98, i32 %101)
  store i32 0, i32* %10, align 4
  br label %103

103:                                              ; preds = %122, %86
  %104 = load i32, i32* %10, align 4
  %105 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %106 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %105, i32 0, i32 3
  %107 = load %struct.TYPE_18__*, %struct.TYPE_18__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = icmp slt i32 %104, %109
  br i1 %110, label %111, label %125

111:                                              ; preds = %103
  %112 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %113 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %112, i32 0, i32 3
  %114 = load %struct.TYPE_18__*, %struct.TYPE_18__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %114, i32 0, i32 1
  %116 = load %struct.mp_pin**, %struct.mp_pin*** %115, align 8
  %117 = load i32, i32* %10, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.mp_pin*, %struct.mp_pin** %116, i64 %118
  %120 = load %struct.mp_pin*, %struct.mp_pin** %119, align 8
  %121 = call i32 @mp_pin_disconnect(%struct.mp_pin* %120)
  br label %122

122:                                              ; preds = %111
  %123 = load i32, i32* %10, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %10, align 4
  br label %103

125:                                              ; preds = %103
  %126 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %127 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %126, i32 0, i32 3
  %128 = load %struct.TYPE_18__*, %struct.TYPE_18__** %127, align 8
  %129 = call %struct.mp_pin* @mp_filter_get_named_pin(%struct.TYPE_18__* %128, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store %struct.mp_pin* %129, %struct.mp_pin** %11, align 8
  %130 = load %struct.mp_pin*, %struct.mp_pin** %11, align 8
  %131 = icmp ne %struct.mp_pin* %130, null
  br i1 %131, label %132, label %198

132:                                              ; preds = %125
  %133 = load %struct.mp_pin*, %struct.mp_pin** %11, align 8
  %134 = call i64 @mp_pin_get_dir(%struct.mp_pin* %133)
  %135 = load i64, i64* @MP_PIN_OUT, align 8
  %136 = icmp eq i64 %134, %135
  br i1 %136, label %137, label %198

137:                                              ; preds = %132
  %138 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %139 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %138, i32 0, i32 5
  %140 = load %struct.vo_chain*, %struct.vo_chain** %139, align 8
  %141 = icmp ne %struct.vo_chain* %140, null
  br i1 %141, label %142, label %157

142:                                              ; preds = %137
  %143 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %144 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %143, i32 0, i32 5
  %145 = load %struct.vo_chain*, %struct.vo_chain** %144, align 8
  %146 = getelementptr inbounds %struct.vo_chain, %struct.vo_chain* %145, i32 0, i32 2
  %147 = load %struct.track*, %struct.track** %146, align 8
  %148 = icmp ne %struct.track* %147, null
  br i1 %148, label %149, label %157

149:                                              ; preds = %142
  %150 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %151 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %152 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %151, i32 0, i32 5
  %153 = load %struct.vo_chain*, %struct.vo_chain** %152, align 8
  %154 = getelementptr inbounds %struct.vo_chain, %struct.vo_chain* %153, i32 0, i32 2
  %155 = load %struct.track*, %struct.track** %154, align 8
  %156 = call i32 @kill_outputs(%struct.MPContext* %150, %struct.track* %155)
  br label %157

157:                                              ; preds = %149, %142, %137
  %158 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %159 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %158, i32 0, i32 5
  %160 = load %struct.vo_chain*, %struct.vo_chain** %159, align 8
  %161 = icmp ne %struct.vo_chain* %160, null
  br i1 %161, label %171, label %162

162:                                              ; preds = %157
  %163 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %164 = call i32 @reinit_video_chain_src(%struct.MPContext* %163, i32* null)
  %165 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %166 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %165, i32 0, i32 5
  %167 = load %struct.vo_chain*, %struct.vo_chain** %166, align 8
  %168 = icmp ne %struct.vo_chain* %167, null
  br i1 %168, label %170, label %169

169:                                              ; preds = %162
  br label %411

170:                                              ; preds = %162
  br label %171

171:                                              ; preds = %170, %157
  %172 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %173 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %172, i32 0, i32 5
  %174 = load %struct.vo_chain*, %struct.vo_chain** %173, align 8
  store %struct.vo_chain* %174, %struct.vo_chain** %12, align 8
  %175 = load %struct.vo_chain*, %struct.vo_chain** %12, align 8
  %176 = getelementptr inbounds %struct.vo_chain, %struct.vo_chain* %175, i32 0, i32 2
  %177 = load %struct.track*, %struct.track** %176, align 8
  %178 = icmp ne %struct.track* %177, null
  %179 = xor i1 %178, true
  %180 = zext i1 %179 to i32
  %181 = call i32 @assert(i32 %180)
  %182 = load %struct.mp_pin*, %struct.mp_pin** %11, align 8
  %183 = load %struct.vo_chain*, %struct.vo_chain** %12, align 8
  %184 = getelementptr inbounds %struct.vo_chain, %struct.vo_chain* %183, i32 0, i32 0
  store %struct.mp_pin* %182, %struct.mp_pin** %184, align 8
  %185 = load %struct.vo_chain*, %struct.vo_chain** %12, align 8
  %186 = getelementptr inbounds %struct.vo_chain, %struct.vo_chain* %185, i32 0, i32 1
  %187 = load %struct.TYPE_13__*, %struct.TYPE_13__** %186, align 8
  %188 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %187, i32 0, i32 0
  %189 = load %struct.TYPE_12__*, %struct.TYPE_12__** %188, align 8
  %190 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %189, i32 0, i32 0
  %191 = load %struct.mp_pin**, %struct.mp_pin*** %190, align 8
  %192 = getelementptr inbounds %struct.mp_pin*, %struct.mp_pin** %191, i64 0
  %193 = load %struct.mp_pin*, %struct.mp_pin** %192, align 8
  %194 = load %struct.vo_chain*, %struct.vo_chain** %12, align 8
  %195 = getelementptr inbounds %struct.vo_chain, %struct.vo_chain* %194, i32 0, i32 0
  %196 = load %struct.mp_pin*, %struct.mp_pin** %195, align 8
  %197 = call i32 @mp_pin_connect(%struct.mp_pin* %193, %struct.mp_pin* %196)
  br label %198

198:                                              ; preds = %171, %132, %125
  %199 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %200 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %199, i32 0, i32 3
  %201 = load %struct.TYPE_18__*, %struct.TYPE_18__** %200, align 8
  %202 = call %struct.mp_pin* @mp_filter_get_named_pin(%struct.TYPE_18__* %201, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store %struct.mp_pin* %202, %struct.mp_pin** %11, align 8
  %203 = load %struct.mp_pin*, %struct.mp_pin** %11, align 8
  %204 = icmp ne %struct.mp_pin* %203, null
  br i1 %204, label %205, label %271

205:                                              ; preds = %198
  %206 = load %struct.mp_pin*, %struct.mp_pin** %11, align 8
  %207 = call i64 @mp_pin_get_dir(%struct.mp_pin* %206)
  %208 = load i64, i64* @MP_PIN_OUT, align 8
  %209 = icmp eq i64 %207, %208
  br i1 %209, label %210, label %271

210:                                              ; preds = %205
  %211 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %212 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %211, i32 0, i32 4
  %213 = load %struct.ao_chain*, %struct.ao_chain** %212, align 8
  %214 = icmp ne %struct.ao_chain* %213, null
  br i1 %214, label %215, label %230

215:                                              ; preds = %210
  %216 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %217 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %216, i32 0, i32 4
  %218 = load %struct.ao_chain*, %struct.ao_chain** %217, align 8
  %219 = getelementptr inbounds %struct.ao_chain, %struct.ao_chain* %218, i32 0, i32 2
  %220 = load %struct.track*, %struct.track** %219, align 8
  %221 = icmp ne %struct.track* %220, null
  br i1 %221, label %222, label %230

222:                                              ; preds = %215
  %223 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %224 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %225 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %224, i32 0, i32 4
  %226 = load %struct.ao_chain*, %struct.ao_chain** %225, align 8
  %227 = getelementptr inbounds %struct.ao_chain, %struct.ao_chain* %226, i32 0, i32 2
  %228 = load %struct.track*, %struct.track** %227, align 8
  %229 = call i32 @kill_outputs(%struct.MPContext* %223, %struct.track* %228)
  br label %230

230:                                              ; preds = %222, %215, %210
  %231 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %232 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %231, i32 0, i32 4
  %233 = load %struct.ao_chain*, %struct.ao_chain** %232, align 8
  %234 = icmp ne %struct.ao_chain* %233, null
  br i1 %234, label %244, label %235

235:                                              ; preds = %230
  %236 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %237 = call i32 @reinit_audio_chain_src(%struct.MPContext* %236, i32* null)
  %238 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %239 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %238, i32 0, i32 4
  %240 = load %struct.ao_chain*, %struct.ao_chain** %239, align 8
  %241 = icmp ne %struct.ao_chain* %240, null
  br i1 %241, label %243, label %242

242:                                              ; preds = %235
  br label %411

243:                                              ; preds = %235
  br label %244

244:                                              ; preds = %243, %230
  %245 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %246 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %245, i32 0, i32 4
  %247 = load %struct.ao_chain*, %struct.ao_chain** %246, align 8
  store %struct.ao_chain* %247, %struct.ao_chain** %13, align 8
  %248 = load %struct.ao_chain*, %struct.ao_chain** %13, align 8
  %249 = getelementptr inbounds %struct.ao_chain, %struct.ao_chain* %248, i32 0, i32 2
  %250 = load %struct.track*, %struct.track** %249, align 8
  %251 = icmp ne %struct.track* %250, null
  %252 = xor i1 %251, true
  %253 = zext i1 %252 to i32
  %254 = call i32 @assert(i32 %253)
  %255 = load %struct.mp_pin*, %struct.mp_pin** %11, align 8
  %256 = load %struct.ao_chain*, %struct.ao_chain** %13, align 8
  %257 = getelementptr inbounds %struct.ao_chain, %struct.ao_chain* %256, i32 0, i32 0
  store %struct.mp_pin* %255, %struct.mp_pin** %257, align 8
  %258 = load %struct.ao_chain*, %struct.ao_chain** %13, align 8
  %259 = getelementptr inbounds %struct.ao_chain, %struct.ao_chain* %258, i32 0, i32 1
  %260 = load %struct.TYPE_15__*, %struct.TYPE_15__** %259, align 8
  %261 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %260, i32 0, i32 0
  %262 = load %struct.TYPE_14__*, %struct.TYPE_14__** %261, align 8
  %263 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %262, i32 0, i32 0
  %264 = load %struct.mp_pin**, %struct.mp_pin*** %263, align 8
  %265 = getelementptr inbounds %struct.mp_pin*, %struct.mp_pin** %264, i64 0
  %266 = load %struct.mp_pin*, %struct.mp_pin** %265, align 8
  %267 = load %struct.ao_chain*, %struct.ao_chain** %13, align 8
  %268 = getelementptr inbounds %struct.ao_chain, %struct.ao_chain* %267, i32 0, i32 0
  %269 = load %struct.mp_pin*, %struct.mp_pin** %268, align 8
  %270 = call i32 @mp_pin_connect(%struct.mp_pin* %266, %struct.mp_pin* %269)
  br label %271

271:                                              ; preds = %244, %205, %198
  store i32 0, i32* %14, align 4
  br label %272

272:                                              ; preds = %376, %271
  %273 = load i32, i32* %14, align 4
  %274 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %275 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %274, i32 0, i32 0
  %276 = load i32, i32* %275, align 8
  %277 = icmp slt i32 %273, %276
  br i1 %277, label %278, label %379

278:                                              ; preds = %272
  %279 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %280 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %279, i32 0, i32 1
  %281 = load %struct.track**, %struct.track*** %280, align 8
  %282 = load i32, i32* %14, align 4
  %283 = sext i32 %282 to i64
  %284 = getelementptr inbounds %struct.track*, %struct.track** %281, i64 %283
  %285 = load %struct.track*, %struct.track** %284, align 8
  store %struct.track* %285, %struct.track** %15, align 8
  %286 = load %struct.track*, %struct.track** %15, align 8
  %287 = getelementptr inbounds %struct.track, %struct.track* %286, i32 0, i32 0
  %288 = load i32, i32* %287, align 8
  switch i32 %288, label %291 [
    i32 128, label %289
    i32 129, label %290
  ]

289:                                              ; preds = %278
  store i8 118, i8* %17, align 1
  br label %292

290:                                              ; preds = %278
  store i8 97, i8* %17, align 1
  br label %292

291:                                              ; preds = %278
  br label %376

292:                                              ; preds = %290, %289
  %293 = getelementptr inbounds [32 x i8], [32 x i8]* %16, i64 0, i64 0
  %294 = load i8, i8* %17, align 1
  %295 = load %struct.track*, %struct.track** %15, align 8
  %296 = getelementptr inbounds %struct.track, %struct.track* %295, i32 0, i32 1
  %297 = load i32, i32* %296, align 4
  %298 = call i32 @snprintf(i8* %293, i32 32, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8 signext %294, i32 %297)
  %299 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %300 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %299, i32 0, i32 3
  %301 = load %struct.TYPE_18__*, %struct.TYPE_18__** %300, align 8
  %302 = getelementptr inbounds [32 x i8], [32 x i8]* %16, i64 0, i64 0
  %303 = call %struct.mp_pin* @mp_filter_get_named_pin(%struct.TYPE_18__* %301, i8* %302)
  store %struct.mp_pin* %303, %struct.mp_pin** %11, align 8
  %304 = load %struct.mp_pin*, %struct.mp_pin** %11, align 8
  %305 = icmp ne %struct.mp_pin* %304, null
  br i1 %305, label %307, label %306

306:                                              ; preds = %292
  br label %376

307:                                              ; preds = %292
  %308 = load %struct.mp_pin*, %struct.mp_pin** %11, align 8
  %309 = call i64 @mp_pin_get_dir(%struct.mp_pin* %308)
  %310 = load i64, i64* @MP_PIN_IN, align 8
  %311 = icmp ne i64 %309, %310
  br i1 %311, label %312, label %313

312:                                              ; preds = %307
  br label %376

313:                                              ; preds = %307
  %314 = load %struct.mp_pin*, %struct.mp_pin** %11, align 8
  %315 = call i32 @mp_pin_is_connected(%struct.mp_pin* %314)
  %316 = icmp ne i32 %315, 0
  %317 = xor i1 %316, true
  %318 = zext i1 %317 to i32
  %319 = call i32 @assert(i32 %318)
  %320 = load %struct.track*, %struct.track** %15, align 8
  %321 = getelementptr inbounds %struct.track, %struct.track* %320, i32 0, i32 4
  %322 = load %struct.mp_pin*, %struct.mp_pin** %321, align 8
  %323 = icmp ne %struct.mp_pin* %322, null
  %324 = xor i1 %323, true
  %325 = zext i1 %324 to i32
  %326 = call i32 @assert(i32 %325)
  %327 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %328 = load %struct.track*, %struct.track** %15, align 8
  %329 = call i32 @kill_outputs(%struct.MPContext* %327, %struct.track* %328)
  %330 = load %struct.mp_pin*, %struct.mp_pin** %11, align 8
  %331 = load %struct.track*, %struct.track** %15, align 8
  %332 = getelementptr inbounds %struct.track, %struct.track* %331, i32 0, i32 4
  store %struct.mp_pin* %330, %struct.mp_pin** %332, align 8
  %333 = load %struct.track*, %struct.track** %15, align 8
  %334 = getelementptr inbounds %struct.track, %struct.track* %333, i32 0, i32 2
  store i32 1, i32* %334, align 8
  %335 = load %struct.track*, %struct.track** %15, align 8
  %336 = getelementptr inbounds %struct.track, %struct.track* %335, i32 0, i32 3
  %337 = load %struct.TYPE_17__*, %struct.TYPE_17__** %336, align 8
  %338 = icmp ne %struct.TYPE_17__* %337, null
  br i1 %338, label %362, label %339

339:                                              ; preds = %313
  %340 = load %struct.track*, %struct.track** %15, align 8
  %341 = getelementptr inbounds %struct.track, %struct.track* %340, i32 0, i32 0
  %342 = load i32, i32* %341, align 8
  %343 = icmp eq i32 %342, 128
  br i1 %343, label %344, label %350

344:                                              ; preds = %339
  %345 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %346 = load %struct.track*, %struct.track** %15, align 8
  %347 = call i32 @init_video_decoder(%struct.MPContext* %345, %struct.track* %346)
  %348 = icmp ne i32 %347, 0
  br i1 %348, label %350, label %349

349:                                              ; preds = %344
  br label %411

350:                                              ; preds = %344, %339
  %351 = load %struct.track*, %struct.track** %15, align 8
  %352 = getelementptr inbounds %struct.track, %struct.track* %351, i32 0, i32 0
  %353 = load i32, i32* %352, align 8
  %354 = icmp eq i32 %353, 129
  br i1 %354, label %355, label %361

355:                                              ; preds = %350
  %356 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %357 = load %struct.track*, %struct.track** %15, align 8
  %358 = call i32 @init_audio_decoder(%struct.MPContext* %356, %struct.track* %357)
  %359 = icmp ne i32 %358, 0
  br i1 %359, label %361, label %360

360:                                              ; preds = %355
  br label %411

361:                                              ; preds = %355, %350
  br label %362

362:                                              ; preds = %361, %313
  %363 = load %struct.track*, %struct.track** %15, align 8
  %364 = getelementptr inbounds %struct.track, %struct.track* %363, i32 0, i32 4
  %365 = load %struct.mp_pin*, %struct.mp_pin** %364, align 8
  %366 = load %struct.track*, %struct.track** %15, align 8
  %367 = getelementptr inbounds %struct.track, %struct.track* %366, i32 0, i32 3
  %368 = load %struct.TYPE_17__*, %struct.TYPE_17__** %367, align 8
  %369 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %368, i32 0, i32 0
  %370 = load %struct.TYPE_16__*, %struct.TYPE_16__** %369, align 8
  %371 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %370, i32 0, i32 0
  %372 = load %struct.mp_pin**, %struct.mp_pin*** %371, align 8
  %373 = getelementptr inbounds %struct.mp_pin*, %struct.mp_pin** %372, i64 0
  %374 = load %struct.mp_pin*, %struct.mp_pin** %373, align 8
  %375 = call i32 @mp_pin_connect(%struct.mp_pin* %365, %struct.mp_pin* %374)
  br label %376

376:                                              ; preds = %362, %312, %306, %291
  %377 = load i32, i32* %14, align 4
  %378 = add nsw i32 %377, 1
  store i32 %378, i32* %14, align 4
  br label %272

379:                                              ; preds = %272
  store i32 0, i32* %18, align 4
  br label %380

380:                                              ; preds = %407, %379
  %381 = load i32, i32* %18, align 4
  %382 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %383 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %382, i32 0, i32 3
  %384 = load %struct.TYPE_18__*, %struct.TYPE_18__** %383, align 8
  %385 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %384, i32 0, i32 0
  %386 = load i32, i32* %385, align 8
  %387 = icmp slt i32 %381, %386
  br i1 %387, label %388, label %410

388:                                              ; preds = %380
  %389 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %390 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %389, i32 0, i32 3
  %391 = load %struct.TYPE_18__*, %struct.TYPE_18__** %390, align 8
  %392 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %391, i32 0, i32 1
  %393 = load %struct.mp_pin**, %struct.mp_pin*** %392, align 8
  %394 = load i32, i32* %18, align 4
  %395 = sext i32 %394 to i64
  %396 = getelementptr inbounds %struct.mp_pin*, %struct.mp_pin** %393, i64 %395
  %397 = load %struct.mp_pin*, %struct.mp_pin** %396, align 8
  store %struct.mp_pin* %397, %struct.mp_pin** %19, align 8
  %398 = load %struct.mp_pin*, %struct.mp_pin** %19, align 8
  %399 = call i32 @mp_pin_is_connected(%struct.mp_pin* %398)
  %400 = icmp ne i32 %399, 0
  br i1 %400, label %406, label %401

401:                                              ; preds = %388
  %402 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %403 = load %struct.mp_pin*, %struct.mp_pin** %19, align 8
  %404 = call i32 @mp_pin_get_name(%struct.mp_pin* %403)
  %405 = call i32 @MP_ERR(%struct.MPContext* %402, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i32 %404)
  br label %411

406:                                              ; preds = %388
  br label %407

407:                                              ; preds = %406
  %408 = load i32, i32* %18, align 4
  %409 = add nsw i32 %408, 1
  store i32 %409, i32* %18, align 4
  br label %380

410:                                              ; preds = %380
  store i32 1, i32* %8, align 4
  br label %411

411:                                              ; preds = %410, %401, %360, %349, %242, %169, %85, %76
  %412 = load i32, i32* %8, align 4
  %413 = icmp ne i32 %412, 0
  br i1 %413, label %417, label %414

414:                                              ; preds = %411
  %415 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %416 = call i32 @deassociate_complex_filters(%struct.MPContext* %415)
  br label %417

417:                                              ; preds = %414, %411
  %418 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %419 = call i32 @cleanup_deassociated_complex_filters(%struct.MPContext* %418)
  %420 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %421 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %420, i32 0, i32 2
  %422 = load i64, i64* %421, align 8
  %423 = icmp ne i64 %422, 0
  br i1 %423, label %424, label %445

424:                                              ; preds = %417
  store i32 0, i32* %20, align 4
  br label %425

425:                                              ; preds = %441, %424
  %426 = load i32, i32* %20, align 4
  %427 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %428 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %427, i32 0, i32 0
  %429 = load i32, i32* %428, align 8
  %430 = icmp slt i32 %426, %429
  br i1 %430, label %431, label %444

431:                                              ; preds = %425
  %432 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %433 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %434 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %433, i32 0, i32 1
  %435 = load %struct.track**, %struct.track*** %434, align 8
  %436 = load i32, i32* %20, align 4
  %437 = sext i32 %436 to i64
  %438 = getelementptr inbounds %struct.track*, %struct.track** %435, i64 %437
  %439 = load %struct.track*, %struct.track** %438, align 8
  %440 = call i32 @reselect_demux_stream(%struct.MPContext* %432, %struct.track* %439)
  br label %441

441:                                              ; preds = %431
  %442 = load i32, i32* %20, align 4
  %443 = add nsw i32 %442, 1
  store i32 %443, i32* %20, align 4
  br label %425

444:                                              ; preds = %425
  br label %445

445:                                              ; preds = %444, %417
  %446 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %447 = load i32, i32* @MPV_EVENT_TRACKS_CHANGED, align 4
  %448 = call i32 @mp_notify(%struct.MPContext* %446, i32 %447, i32* null)
  %449 = load i32, i32* %8, align 4
  %450 = icmp ne i32 %449, 0
  %451 = zext i1 %450 to i64
  %452 = select i1 %450, i32 1, i32 -1
  store i32 %452, i32* %3, align 4
  br label %453

453:                                              ; preds = %445, %70, %61
  %454 = load i32, i32* %3, align 4
  ret i32 %454
}

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local i32 @mp_filter_has_failed(%struct.TYPE_18__*) #1

declare dso_local i32 @deassociate_complex_filters(%struct.MPContext*) #1

declare dso_local %struct.mp_lavfi* @mp_lavfi_create_graph(i32, i32, i32, i32*, i8*) #1

declare dso_local i32 @talloc_strdup(i32*, i8*) #1

declare dso_local i32 @mp_filter_set_error_handler(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @mp_pin_disconnect(%struct.mp_pin*) #1

declare dso_local %struct.mp_pin* @mp_filter_get_named_pin(%struct.TYPE_18__*, i8*) #1

declare dso_local i64 @mp_pin_get_dir(%struct.mp_pin*) #1

declare dso_local i32 @kill_outputs(%struct.MPContext*, %struct.track*) #1

declare dso_local i32 @reinit_video_chain_src(%struct.MPContext*, i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @mp_pin_connect(%struct.mp_pin*, %struct.mp_pin*) #1

declare dso_local i32 @reinit_audio_chain_src(%struct.MPContext*, i32*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8 signext, i32) #1

declare dso_local i32 @mp_pin_is_connected(%struct.mp_pin*) #1

declare dso_local i32 @init_video_decoder(%struct.MPContext*, %struct.track*) #1

declare dso_local i32 @init_audio_decoder(%struct.MPContext*, %struct.track*) #1

declare dso_local i32 @MP_ERR(%struct.MPContext*, i8*, i32) #1

declare dso_local i32 @mp_pin_get_name(%struct.mp_pin*) #1

declare dso_local i32 @cleanup_deassociated_complex_filters(%struct.MPContext*) #1

declare dso_local i32 @reselect_demux_stream(%struct.MPContext*, %struct.track*) #1

declare dso_local i32 @mp_notify(%struct.MPContext*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
