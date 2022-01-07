; ModuleID = '/home/carl/AnghaBench/mpv/filters/extr_f_hwtransfer.c_probe_formats.c'
source_filename = "/home/carl/AnghaBench/mpv/filters/extr_f_hwtransfer.c_probe_formats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_hwupload = type { i32, i32, i32, i32*, i32*, i32, %struct.TYPE_9__*, i32 }
%struct.TYPE_9__ = type { %struct.priv* }
%struct.priv = type { i32 }
%struct.mp_stream_info = type { i32 }
%struct.mp_hwdec_ctx = type { i32, i32 }
%struct.TYPE_8__ = type { i64*, i64* }

@.str = private unnamed_addr constant [15 x i8] c"no hw context\0A\00", align 1
@AV_PIX_FMT_NONE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [31 x i8] c"no support for this hw format\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"looking at format %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"failed to allocate pool\0A\00", align 1
@AV_HWFRAME_TRANSFER_DIRECTION_TO = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [13 x i8] c"supports %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mp_hwupload*, i32)* @probe_formats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @probe_formats(%struct.mp_hwupload* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mp_hwupload*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.priv*, align 8
  %7 = alloca %struct.mp_stream_info*, align 8
  %8 = alloca %struct.mp_hwdec_ctx*, align 8
  %9 = alloca %struct.TYPE_8__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.mp_hwdec_ctx*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.mp_hwupload* %0, %struct.mp_hwupload** %4, align 8
  store i32 %1, i32* %5, align 4
  %21 = load %struct.mp_hwupload*, %struct.mp_hwupload** %4, align 8
  %22 = getelementptr inbounds %struct.mp_hwupload, %struct.mp_hwupload* %21, i32 0, i32 6
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 0
  %25 = load %struct.priv*, %struct.priv** %24, align 8
  store %struct.priv* %25, %struct.priv** %6, align 8
  %26 = load i32, i32* %5, align 4
  %27 = load %struct.mp_hwupload*, %struct.mp_hwupload** %4, align 8
  %28 = getelementptr inbounds %struct.mp_hwupload, %struct.mp_hwupload* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 8
  %29 = load %struct.mp_hwupload*, %struct.mp_hwupload** %4, align 8
  %30 = getelementptr inbounds %struct.mp_hwupload, %struct.mp_hwupload* %29, i32 0, i32 1
  store i32 0, i32* %30, align 4
  %31 = load %struct.mp_hwupload*, %struct.mp_hwupload** %4, align 8
  %32 = getelementptr inbounds %struct.mp_hwupload, %struct.mp_hwupload* %31, i32 0, i32 2
  store i32 0, i32* %32, align 8
  %33 = load %struct.mp_hwupload*, %struct.mp_hwupload** %4, align 8
  %34 = getelementptr inbounds %struct.mp_hwupload, %struct.mp_hwupload* %33, i32 0, i32 6
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %34, align 8
  %36 = call %struct.mp_stream_info* @mp_filter_find_stream_info(%struct.TYPE_9__* %35)
  store %struct.mp_stream_info* %36, %struct.mp_stream_info** %7, align 8
  %37 = load %struct.mp_stream_info*, %struct.mp_stream_info** %7, align 8
  %38 = icmp ne %struct.mp_stream_info* %37, null
  br i1 %38, label %39, label %44

39:                                               ; preds = %2
  %40 = load %struct.mp_stream_info*, %struct.mp_stream_info** %7, align 8
  %41 = getelementptr inbounds %struct.mp_stream_info, %struct.mp_stream_info* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %49, label %44

44:                                               ; preds = %39, %2
  %45 = load %struct.mp_hwupload*, %struct.mp_hwupload** %4, align 8
  %46 = getelementptr inbounds %struct.mp_hwupload, %struct.mp_hwupload* %45, i32 0, i32 6
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %46, align 8
  %48 = call i32 @MP_ERR(%struct.TYPE_9__* %47, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %314

49:                                               ; preds = %39
  store %struct.mp_hwdec_ctx* null, %struct.mp_hwdec_ctx** %8, align 8
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %9, align 8
  store i32 0, i32* %10, align 4
  br label %50

50:                                               ; preds = %126, %49
  %51 = load %struct.mp_stream_info*, %struct.mp_stream_info** %7, align 8
  %52 = getelementptr inbounds %struct.mp_stream_info, %struct.mp_stream_info* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %10, align 4
  %55 = call %struct.mp_hwdec_ctx* @hwdec_devices_get_n(i32 %53, i32 %54)
  store %struct.mp_hwdec_ctx* %55, %struct.mp_hwdec_ctx** %11, align 8
  %56 = load %struct.mp_hwdec_ctx*, %struct.mp_hwdec_ctx** %11, align 8
  %57 = icmp ne %struct.mp_hwdec_ctx* %56, null
  br i1 %57, label %59, label %58

58:                                               ; preds = %50
  br label %129

59:                                               ; preds = %50
  %60 = load %struct.mp_hwdec_ctx*, %struct.mp_hwdec_ctx** %11, align 8
  %61 = getelementptr inbounds %struct.mp_hwdec_ctx, %struct.mp_hwdec_ctx* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %59
  br label %126

65:                                               ; preds = %59
  %66 = load %struct.mp_hwdec_ctx*, %struct.mp_hwdec_ctx** %11, align 8
  %67 = getelementptr inbounds %struct.mp_hwdec_ctx, %struct.mp_hwdec_ctx* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call %struct.TYPE_8__* @av_hwdevice_get_hwframe_constraints(i32 %68, i32* null)
  store %struct.TYPE_8__* %69, %struct.TYPE_8__** %9, align 8
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %71 = icmp ne %struct.TYPE_8__* %70, null
  br i1 %71, label %73, label %72

72:                                               ; preds = %65
  br label %126

73:                                               ; preds = %65
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %74

74:                                               ; preds = %105, %73
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 0
  %77 = load i64*, i64** %76, align 8
  %78 = icmp ne i64* %77, null
  br i1 %78, label %79, label %89

79:                                               ; preds = %74
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 0
  %82 = load i64*, i64** %81, align 8
  %83 = load i32, i32* %13, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i64, i64* %82, i64 %84
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @AV_PIX_FMT_NONE, align 8
  %88 = icmp ne i64 %86, %87
  br label %89

89:                                               ; preds = %79, %74
  %90 = phi i1 [ false, %74 ], [ %88, %79 ]
  br i1 %90, label %91, label %108

91:                                               ; preds = %89
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 0
  %94 = load i64*, i64** %93, align 8
  %95 = load i32, i32* %13, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i64, i64* %94, i64 %96
  %98 = load i64, i64* %97, align 8
  %99 = load i32, i32* %5, align 4
  %100 = call i64 @imgfmt2pixfmt(i32 %99)
  %101 = icmp eq i64 %98, %100
  %102 = zext i1 %101 to i32
  %103 = load i32, i32* %12, align 4
  %104 = or i32 %103, %102
  store i32 %104, i32* %12, align 4
  br label %105

105:                                              ; preds = %91
  %106 = load i32, i32* %13, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %13, align 4
  br label %74

108:                                              ; preds = %89
  %109 = load i32, i32* %12, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %124

111:                                              ; preds = %108
  %112 = load %struct.mp_hwdec_ctx*, %struct.mp_hwdec_ctx** %11, align 8
  %113 = getelementptr inbounds %struct.mp_hwdec_ctx, %struct.mp_hwdec_ctx* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %122

116:                                              ; preds = %111
  %117 = load %struct.mp_hwdec_ctx*, %struct.mp_hwdec_ctx** %11, align 8
  %118 = getelementptr inbounds %struct.mp_hwdec_ctx, %struct.mp_hwdec_ctx* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* %5, align 4
  %121 = icmp eq i32 %119, %120
  br i1 %121, label %122, label %124

122:                                              ; preds = %116, %111
  %123 = load %struct.mp_hwdec_ctx*, %struct.mp_hwdec_ctx** %11, align 8
  store %struct.mp_hwdec_ctx* %123, %struct.mp_hwdec_ctx** %8, align 8
  br label %129

124:                                              ; preds = %116, %108
  %125 = call i32 @av_hwframe_constraints_free(%struct.TYPE_8__** %9)
  br label %126

126:                                              ; preds = %124, %72, %64
  %127 = load i32, i32* %10, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %10, align 4
  br label %50

129:                                              ; preds = %122, %58
  %130 = load %struct.mp_hwdec_ctx*, %struct.mp_hwdec_ctx** %8, align 8
  %131 = icmp ne %struct.mp_hwdec_ctx* %130, null
  br i1 %131, label %137, label %132

132:                                              ; preds = %129
  %133 = load %struct.mp_hwupload*, %struct.mp_hwupload** %4, align 8
  %134 = getelementptr inbounds %struct.mp_hwupload, %struct.mp_hwupload* %133, i32 0, i32 6
  %135 = load %struct.TYPE_9__*, %struct.TYPE_9__** %134, align 8
  %136 = call i32 @MP_ERR(%struct.TYPE_9__* %135, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %314

137:                                              ; preds = %129
  store i32 0, i32* %14, align 4
  br label %138

138:                                              ; preds = %293, %137
  %139 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %140 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %139, i32 0, i32 1
  %141 = load i64*, i64** %140, align 8
  %142 = icmp ne i64* %141, null
  br i1 %142, label %143, label %153

143:                                              ; preds = %138
  %144 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %145 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %144, i32 0, i32 1
  %146 = load i64*, i64** %145, align 8
  %147 = load i32, i32* %14, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i64, i64* %146, i64 %148
  %150 = load i64, i64* %149, align 8
  %151 = load i64, i64* @AV_PIX_FMT_NONE, align 8
  %152 = icmp ne i64 %150, %151
  br label %153

153:                                              ; preds = %143, %138
  %154 = phi i1 [ false, %138 ], [ %152, %143 ]
  br i1 %154, label %155, label %296

155:                                              ; preds = %153
  %156 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %157 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %156, i32 0, i32 1
  %158 = load i64*, i64** %157, align 8
  %159 = load i32, i32* %14, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i64, i64* %158, i64 %160
  %162 = load i64, i64* %161, align 8
  %163 = trunc i64 %162 to i32
  %164 = call i32 @pixfmt2imgfmt(i32 %163)
  store i32 %164, i32* %15, align 4
  %165 = load i32, i32* %15, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %168, label %167

167:                                              ; preds = %155
  br label %293

168:                                              ; preds = %155
  %169 = load %struct.mp_hwupload*, %struct.mp_hwupload** %4, align 8
  %170 = getelementptr inbounds %struct.mp_hwupload, %struct.mp_hwupload* %169, i32 0, i32 6
  %171 = load %struct.TYPE_9__*, %struct.TYPE_9__** %170, align 8
  %172 = load i32, i32* %15, align 4
  %173 = call i32 @mp_imgfmt_to_name(i32 %172)
  %174 = call i32 @MP_VERBOSE(%struct.TYPE_9__* %171, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %173)
  store i32* null, i32** %16, align 8
  %175 = load %struct.mp_hwdec_ctx*, %struct.mp_hwdec_ctx** %8, align 8
  %176 = getelementptr inbounds %struct.mp_hwdec_ctx, %struct.mp_hwdec_ctx* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 4
  %178 = load i32, i32* %5, align 4
  %179 = load i32, i32* %15, align 4
  %180 = call i32 @mp_update_av_hw_frames_pool(i32** %16, i32 %177, i32 %178, i32 %179, i32 128, i32 128)
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %187, label %182

182:                                              ; preds = %168
  %183 = load %struct.mp_hwupload*, %struct.mp_hwupload** %4, align 8
  %184 = getelementptr inbounds %struct.mp_hwupload, %struct.mp_hwupload* %183, i32 0, i32 6
  %185 = load %struct.TYPE_9__*, %struct.TYPE_9__** %184, align 8
  %186 = call i32 @MP_WARN(%struct.TYPE_9__* %185, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  br label %293

187:                                              ; preds = %168
  %188 = load i32*, i32** %16, align 8
  %189 = load i32, i32* @AV_HWFRAME_TRANSFER_DIRECTION_TO, align 4
  %190 = call i64 @av_hwframe_transfer_get_formats(i32* %188, i32 %189, i32** %17, i32 0)
  %191 = icmp sge i64 %190, 0
  br i1 %191, label %192, label %291

192:                                              ; preds = %187
  %193 = load %struct.mp_hwupload*, %struct.mp_hwupload** %4, align 8
  %194 = getelementptr inbounds %struct.mp_hwupload, %struct.mp_hwupload* %193, i32 0, i32 1
  %195 = load i32, i32* %194, align 4
  store i32 %195, i32* %18, align 4
  %196 = load %struct.priv*, %struct.priv** %6, align 8
  %197 = load %struct.mp_hwupload*, %struct.mp_hwupload** %4, align 8
  %198 = getelementptr inbounds %struct.mp_hwupload, %struct.mp_hwupload* %197, i32 0, i32 7
  %199 = load i32, i32* %198, align 8
  %200 = load %struct.mp_hwupload*, %struct.mp_hwupload** %4, align 8
  %201 = getelementptr inbounds %struct.mp_hwupload, %struct.mp_hwupload* %200, i32 0, i32 1
  %202 = load i32, i32* %201, align 4
  %203 = load i32, i32* %15, align 4
  %204 = call i32 @MP_TARRAY_APPEND(%struct.priv* %196, i32 %199, i32 %202, i32 %203)
  %205 = load %struct.priv*, %struct.priv** %6, align 8
  %206 = load %struct.mp_hwupload*, %struct.mp_hwupload** %4, align 8
  %207 = getelementptr inbounds %struct.mp_hwupload, %struct.mp_hwupload* %206, i32 0, i32 3
  %208 = load i32*, i32** %207, align 8
  %209 = load i32, i32* %18, align 4
  %210 = call i32 @MP_TARRAY_GROW(%struct.priv* %205, i32* %208, i32 %209)
  %211 = load %struct.priv*, %struct.priv** %6, align 8
  %212 = load %struct.mp_hwupload*, %struct.mp_hwupload** %4, align 8
  %213 = getelementptr inbounds %struct.mp_hwupload, %struct.mp_hwupload* %212, i32 0, i32 4
  %214 = load i32*, i32** %213, align 8
  %215 = load i32, i32* %18, align 4
  %216 = call i32 @MP_TARRAY_GROW(%struct.priv* %211, i32* %214, i32 %215)
  %217 = load %struct.mp_hwupload*, %struct.mp_hwupload** %4, align 8
  %218 = getelementptr inbounds %struct.mp_hwupload, %struct.mp_hwupload* %217, i32 0, i32 2
  %219 = load i32, i32* %218, align 8
  %220 = load %struct.mp_hwupload*, %struct.mp_hwupload** %4, align 8
  %221 = getelementptr inbounds %struct.mp_hwupload, %struct.mp_hwupload* %220, i32 0, i32 3
  %222 = load i32*, i32** %221, align 8
  %223 = load i32, i32* %18, align 4
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds i32, i32* %222, i64 %224
  store i32 %219, i32* %225, align 4
  store i32 0, i32* %19, align 4
  br label %226

226:                                              ; preds = %268, %192
  %227 = load i32*, i32** %17, align 8
  %228 = load i32, i32* %19, align 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds i32, i32* %227, i64 %229
  %231 = load i32, i32* %230, align 4
  %232 = zext i32 %231 to i64
  %233 = load i64, i64* @AV_PIX_FMT_NONE, align 8
  %234 = icmp ne i64 %232, %233
  br i1 %234, label %235, label %271

235:                                              ; preds = %226
  %236 = load i32*, i32** %17, align 8
  %237 = load i32, i32* %19, align 4
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds i32, i32* %236, i64 %238
  %240 = load i32, i32* %239, align 4
  %241 = call i32 @pixfmt2imgfmt(i32 %240)
  store i32 %241, i32* %20, align 4
  %242 = load i32, i32* %20, align 4
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %245, label %244

244:                                              ; preds = %235
  br label %268

245:                                              ; preds = %235
  %246 = load %struct.mp_hwupload*, %struct.mp_hwupload** %4, align 8
  %247 = getelementptr inbounds %struct.mp_hwupload, %struct.mp_hwupload* %246, i32 0, i32 6
  %248 = load %struct.TYPE_9__*, %struct.TYPE_9__** %247, align 8
  %249 = load i32, i32* %20, align 4
  %250 = call i32 @mp_imgfmt_to_name(i32 %249)
  %251 = call i32 @MP_VERBOSE(%struct.TYPE_9__* %248, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i32 %250)
  %252 = load %struct.mp_hwdec_ctx*, %struct.mp_hwdec_ctx** %8, align 8
  %253 = load i32, i32* %5, align 4
  %254 = load i32, i32* %20, align 4
  %255 = call i64 @vo_supports(%struct.mp_hwdec_ctx* %252, i32 %253, i32 %254)
  %256 = icmp ne i64 %255, 0
  br i1 %256, label %257, label %267

257:                                              ; preds = %245
  %258 = load %struct.priv*, %struct.priv** %6, align 8
  %259 = load %struct.mp_hwupload*, %struct.mp_hwupload** %4, align 8
  %260 = getelementptr inbounds %struct.mp_hwupload, %struct.mp_hwupload* %259, i32 0, i32 5
  %261 = load i32, i32* %260, align 8
  %262 = load %struct.mp_hwupload*, %struct.mp_hwupload** %4, align 8
  %263 = getelementptr inbounds %struct.mp_hwupload, %struct.mp_hwupload* %262, i32 0, i32 2
  %264 = load i32, i32* %263, align 8
  %265 = load i32, i32* %20, align 4
  %266 = call i32 @MP_TARRAY_APPEND(%struct.priv* %258, i32 %261, i32 %264, i32 %265)
  br label %267

267:                                              ; preds = %257, %245
  br label %268

268:                                              ; preds = %267, %244
  %269 = load i32, i32* %19, align 4
  %270 = add nsw i32 %269, 1
  store i32 %270, i32* %19, align 4
  br label %226

271:                                              ; preds = %226
  %272 = load %struct.mp_hwupload*, %struct.mp_hwupload** %4, align 8
  %273 = getelementptr inbounds %struct.mp_hwupload, %struct.mp_hwupload* %272, i32 0, i32 2
  %274 = load i32, i32* %273, align 8
  %275 = load %struct.mp_hwupload*, %struct.mp_hwupload** %4, align 8
  %276 = getelementptr inbounds %struct.mp_hwupload, %struct.mp_hwupload* %275, i32 0, i32 3
  %277 = load i32*, i32** %276, align 8
  %278 = load i32, i32* %18, align 4
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds i32, i32* %277, i64 %279
  %281 = load i32, i32* %280, align 4
  %282 = sub nsw i32 %274, %281
  %283 = load %struct.mp_hwupload*, %struct.mp_hwupload** %4, align 8
  %284 = getelementptr inbounds %struct.mp_hwupload, %struct.mp_hwupload* %283, i32 0, i32 4
  %285 = load i32*, i32** %284, align 8
  %286 = load i32, i32* %18, align 4
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds i32, i32* %285, i64 %287
  store i32 %282, i32* %288, align 4
  %289 = load i32*, i32** %17, align 8
  %290 = call i32 @av_free(i32* %289)
  br label %291

291:                                              ; preds = %271, %187
  %292 = call i32 @av_buffer_unref(i32** %16)
  br label %293

293:                                              ; preds = %291, %182, %167
  %294 = load i32, i32* %14, align 4
  %295 = add nsw i32 %294, 1
  store i32 %295, i32* %14, align 4
  br label %138

296:                                              ; preds = %153
  %297 = load %struct.mp_hwdec_ctx*, %struct.mp_hwdec_ctx** %8, align 8
  %298 = getelementptr inbounds %struct.mp_hwdec_ctx, %struct.mp_hwdec_ctx* %297, i32 0, i32 1
  %299 = load i32, i32* %298, align 4
  %300 = call i32 @av_buffer_ref(i32 %299)
  %301 = load %struct.priv*, %struct.priv** %6, align 8
  %302 = getelementptr inbounds %struct.priv, %struct.priv* %301, i32 0, i32 0
  store i32 %300, i32* %302, align 4
  %303 = load %struct.priv*, %struct.priv** %6, align 8
  %304 = getelementptr inbounds %struct.priv, %struct.priv* %303, i32 0, i32 0
  %305 = load i32, i32* %304, align 4
  %306 = icmp ne i32 %305, 0
  br i1 %306, label %308, label %307

307:                                              ; preds = %296
  store i32 0, i32* %3, align 4
  br label %314

308:                                              ; preds = %296
  %309 = load %struct.mp_hwupload*, %struct.mp_hwupload** %4, align 8
  %310 = getelementptr inbounds %struct.mp_hwupload, %struct.mp_hwupload* %309, i32 0, i32 2
  %311 = load i32, i32* %310, align 8
  %312 = icmp sgt i32 %311, 0
  %313 = zext i1 %312 to i32
  store i32 %313, i32* %3, align 4
  br label %314

314:                                              ; preds = %308, %307, %132, %44
  %315 = load i32, i32* %3, align 4
  ret i32 %315
}

declare dso_local %struct.mp_stream_info* @mp_filter_find_stream_info(%struct.TYPE_9__*) #1

declare dso_local i32 @MP_ERR(%struct.TYPE_9__*, i8*) #1

declare dso_local %struct.mp_hwdec_ctx* @hwdec_devices_get_n(i32, i32) #1

declare dso_local %struct.TYPE_8__* @av_hwdevice_get_hwframe_constraints(i32, i32*) #1

declare dso_local i64 @imgfmt2pixfmt(i32) #1

declare dso_local i32 @av_hwframe_constraints_free(%struct.TYPE_8__**) #1

declare dso_local i32 @pixfmt2imgfmt(i32) #1

declare dso_local i32 @MP_VERBOSE(%struct.TYPE_9__*, i8*, i32) #1

declare dso_local i32 @mp_imgfmt_to_name(i32) #1

declare dso_local i32 @mp_update_av_hw_frames_pool(i32**, i32, i32, i32, i32, i32) #1

declare dso_local i32 @MP_WARN(%struct.TYPE_9__*, i8*) #1

declare dso_local i64 @av_hwframe_transfer_get_formats(i32*, i32, i32**, i32) #1

declare dso_local i32 @MP_TARRAY_APPEND(%struct.priv*, i32, i32, i32) #1

declare dso_local i32 @MP_TARRAY_GROW(%struct.priv*, i32*, i32) #1

declare dso_local i64 @vo_supports(%struct.mp_hwdec_ctx*, i32, i32) #1

declare dso_local i32 @av_free(i32*) #1

declare dso_local i32 @av_buffer_unref(i32**) #1

declare dso_local i32 @av_buffer_ref(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
