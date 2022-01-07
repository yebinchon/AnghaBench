; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_video.c_video_output_image.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_video.c_video_output_image.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MPContext = type { i64, double, i64, double, i32, double, %struct.mp_image*, i64, i32, i64, %struct.vo_chain* }
%struct.mp_image = type { double }
%struct.vo_chain = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__*, i64 }
%struct.TYPE_3__ = type { i32* }
%struct.mp_frame = type { i64, %struct.mp_image* }

@STATUS_SYNCING = common dso_local global i64 0, align 8
@VD_EOF = common dso_local global i32 0, align 4
@VD_NEW_FRAME = common dso_local global i32 0, align 4
@VD_PROGRESS = common dso_local global i32 0, align 4
@MP_FRAME_NONE = common dso_local global i64 0, align 8
@VD_WAIT = common dso_local global i32 0, align 4
@MP_FRAME_EOF = common dso_local global i64 0, align 8
@MP_FRAME_VIDEO = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"unexpected frame type %s\0A\00", align 1
@VD_ERROR = common dso_local global i32 0, align 4
@MP_NOPTS_VALUE = common dso_local global double 0.000000e+00, align 8
@.str.1 = private unnamed_addr constant [18 x i8] c"Backstep failed.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.MPContext*)* @video_output_image to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @video_output_image(%struct.MPContext* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.MPContext*, align 8
  %4 = alloca %struct.vo_chain*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.mp_image*, align 8
  %8 = alloca %struct.mp_frame, align 8
  %9 = alloca double, align 8
  store %struct.MPContext* %0, %struct.MPContext** %3, align 8
  %10 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %11 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %10, i32 0, i32 10
  %12 = load %struct.vo_chain*, %struct.vo_chain** %11, align 8
  store %struct.vo_chain* %12, %struct.vo_chain** %4, align 8
  %13 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %14 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %13, i32 0, i32 9
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %1
  %18 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %19 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @STATUS_SYNCING, align 8
  %22 = icmp eq i64 %20, %21
  br label %23

23:                                               ; preds = %17, %1
  %24 = phi i1 [ false, %1 ], [ %22, %17 ]
  %25 = zext i1 %24 to i32
  store i32 %25, i32* %5, align 4
  %26 = load %struct.vo_chain*, %struct.vo_chain** %4, align 8
  %27 = getelementptr inbounds %struct.vo_chain, %struct.vo_chain* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %39

30:                                               ; preds = %23
  %31 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %32 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %31, i32 0, i32 8
  %33 = load i32, i32* %32, align 8
  %34 = call i64 @vo_has_frame(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %30
  %37 = load i32, i32* @VD_EOF, align 4
  store i32 %37, i32* %2, align 4
  br label %293

38:                                               ; preds = %30
  store i32 0, i32* %5, align 4
  br label %39

39:                                               ; preds = %38, %23
  %40 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %41 = call i64 @have_new_frame(%struct.MPContext* %40, i32 0)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %39
  %44 = load i32, i32* @VD_NEW_FRAME, align 4
  store i32 %44, i32* %2, align 4
  br label %293

45:                                               ; preds = %39
  %46 = load i32, i32* @VD_PROGRESS, align 4
  store i32 %46, i32* %6, align 4
  %47 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %48 = call i64 @needs_new_frame(%struct.MPContext* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %255

50:                                               ; preds = %45
  store %struct.mp_image* null, %struct.mp_image** %7, align 8
  %51 = load %struct.vo_chain*, %struct.vo_chain** %4, align 8
  %52 = getelementptr inbounds %struct.vo_chain, %struct.vo_chain* %51, i32 0, i32 1
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 1
  %59 = load i32, i32* %58, align 4
  %60 = call { i64, %struct.mp_image* } @mp_pin_out_read(i32 %59)
  %61 = bitcast %struct.mp_frame* %8 to { i64, %struct.mp_image* }*
  %62 = getelementptr inbounds { i64, %struct.mp_image* }, { i64, %struct.mp_image* }* %61, i32 0, i32 0
  %63 = extractvalue { i64, %struct.mp_image* } %60, 0
  store i64 %63, i64* %62, align 8
  %64 = getelementptr inbounds { i64, %struct.mp_image* }, { i64, %struct.mp_image* }* %61, i32 0, i32 1
  %65 = extractvalue { i64, %struct.mp_image* } %60, 1
  store %struct.mp_image* %65, %struct.mp_image** %64, align 8
  %66 = getelementptr inbounds %struct.mp_frame, %struct.mp_frame* %8, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @MP_FRAME_NONE, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %83

70:                                               ; preds = %50
  %71 = load %struct.vo_chain*, %struct.vo_chain** %4, align 8
  %72 = getelementptr inbounds %struct.vo_chain, %struct.vo_chain* %71, i32 0, i32 1
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %70
  %78 = load i32, i32* @VD_EOF, align 4
  br label %81

79:                                               ; preds = %70
  %80 = load i32, i32* @VD_WAIT, align 4
  br label %81

81:                                               ; preds = %79, %77
  %82 = phi i32 [ %78, %77 ], [ %80, %79 ]
  store i32 %82, i32* %6, align 4
  br label %108

83:                                               ; preds = %50
  %84 = getelementptr inbounds %struct.mp_frame, %struct.mp_frame* %8, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @MP_FRAME_EOF, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %90

88:                                               ; preds = %83
  %89 = load i32, i32* @VD_EOF, align 4
  store i32 %89, i32* %6, align 4
  br label %107

90:                                               ; preds = %83
  %91 = getelementptr inbounds %struct.mp_frame, %struct.mp_frame* %8, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @MP_FRAME_VIDEO, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %95, label %98

95:                                               ; preds = %90
  %96 = getelementptr inbounds %struct.mp_frame, %struct.mp_frame* %8, i32 0, i32 1
  %97 = load %struct.mp_image*, %struct.mp_image** %96, align 8
  store %struct.mp_image* %97, %struct.mp_image** %7, align 8
  br label %106

98:                                               ; preds = %90
  %99 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %100 = getelementptr inbounds %struct.mp_frame, %struct.mp_frame* %8, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = call i32 @mp_frame_type_str(i64 %101)
  %103 = call i32 @MP_ERR(%struct.MPContext* %99, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %102)
  %104 = call i32 @mp_frame_unref(%struct.mp_frame* %8)
  %105 = load i32, i32* @VD_ERROR, align 4
  store i32 %105, i32* %2, align 4
  br label %293

106:                                              ; preds = %95
  br label %107

107:                                              ; preds = %106, %88
  br label %108

108:                                              ; preds = %107, %81
  %109 = load %struct.mp_image*, %struct.mp_image** %7, align 8
  %110 = icmp ne %struct.mp_image* %109, null
  br i1 %110, label %111, label %254

111:                                              ; preds = %108
  %112 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %113 = call double @get_play_end_pts(%struct.MPContext* %112)
  store double %113, double* %9, align 8
  %114 = load double, double* %9, align 8
  %115 = load double, double* @MP_NOPTS_VALUE, align 8
  %116 = fcmp une double %114, %115
  br i1 %116, label %117, label %123

117:                                              ; preds = %111
  %118 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %119 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %118, i32 0, i32 1
  %120 = load double, double* %119, align 8
  %121 = load double, double* %9, align 8
  %122 = fmul double %121, %120
  store double %122, double* %9, align 8
  br label %123

123:                                              ; preds = %117, %111
  %124 = load double, double* %9, align 8
  %125 = load double, double* @MP_NOPTS_VALUE, align 8
  %126 = fcmp une double %124, %125
  br i1 %126, label %127, label %133

127:                                              ; preds = %123
  %128 = load %struct.mp_image*, %struct.mp_image** %7, align 8
  %129 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %128, i32 0, i32 0
  %130 = load double, double* %129, align 8
  %131 = load double, double* %9, align 8
  %132 = fcmp oge double %130, %131
  br i1 %132, label %138, label %133

133:                                              ; preds = %127, %123
  %134 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %135 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %134, i32 0, i32 2
  %136 = load i64, i64* %135, align 8
  %137 = icmp eq i64 %136, 0
  br i1 %137, label %138, label %155

138:                                              ; preds = %133, %127
  %139 = load %struct.vo_chain*, %struct.vo_chain** %4, align 8
  %140 = getelementptr inbounds %struct.vo_chain, %struct.vo_chain* %139, i32 0, i32 1
  %141 = load %struct.TYPE_4__*, %struct.TYPE_4__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i32 0, i32 0
  %143 = load %struct.TYPE_3__*, %struct.TYPE_3__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %143, i32 0, i32 0
  %145 = load i32*, i32** %144, align 8
  %146 = getelementptr inbounds i32, i32* %145, i64 1
  %147 = load i32, i32* %146, align 4
  %148 = bitcast %struct.mp_frame* %8 to { i64, %struct.mp_image* }*
  %149 = getelementptr inbounds { i64, %struct.mp_image* }, { i64, %struct.mp_image* }* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = getelementptr inbounds { i64, %struct.mp_image* }, { i64, %struct.mp_image* }* %148, i32 0, i32 1
  %152 = load %struct.mp_image*, %struct.mp_image** %151, align 8
  %153 = call i32 @mp_pin_out_unread(i32 %147, i64 %150, %struct.mp_image* %152)
  store %struct.mp_image* null, %struct.mp_image** %7, align 8
  %154 = load i32, i32* @VD_EOF, align 4
  store i32 %154, i32* %6, align 4
  br label %251

155:                                              ; preds = %133
  %156 = load i32, i32* %5, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %168

158:                                              ; preds = %155
  %159 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %160 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %159, i32 0, i32 7
  %161 = load i64, i64* %160, align 8
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %168

163:                                              ; preds = %158
  %164 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %165 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %164, i32 0, i32 6
  %166 = load %struct.mp_image*, %struct.mp_image** %7, align 8
  %167 = call i32 @mp_image_setrefp(%struct.mp_image** %165, %struct.mp_image* %166)
  br label %250

168:                                              ; preds = %158, %155
  %169 = load i32, i32* %5, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %191

171:                                              ; preds = %168
  %172 = load %struct.mp_image*, %struct.mp_image** %7, align 8
  %173 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %172, i32 0, i32 0
  %174 = load double, double* %173, align 8
  %175 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %176 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %175, i32 0, i32 3
  %177 = load double, double* %176, align 8
  %178 = fsub double %177, 5.000000e-03
  %179 = fcmp olt double %174, %178
  br i1 %179, label %180, label %191

180:                                              ; preds = %171
  %181 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %182 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %181, i32 0, i32 4
  %183 = load i32, i32* %182, align 8
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %190

185:                                              ; preds = %180
  %186 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %187 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %186, i32 0, i32 6
  %188 = load %struct.mp_image*, %struct.mp_image** %7, align 8
  %189 = call i32 @mp_image_setrefp(%struct.mp_image** %187, %struct.mp_image* %188)
  br label %190

190:                                              ; preds = %185, %180
  br label %249

191:                                              ; preds = %171, %168
  %192 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %193 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %192, i32 0, i32 0
  %194 = load i64, i64* %193, align 8
  %195 = load i64, i64* @STATUS_SYNCING, align 8
  %196 = icmp eq i64 %194, %195
  br i1 %196, label %197, label %217

197:                                              ; preds = %191
  %198 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %199 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %198, i32 0, i32 5
  %200 = load double, double* %199, align 8
  %201 = load double, double* @MP_NOPTS_VALUE, align 8
  %202 = fcmp une double %200, %201
  br i1 %202, label %203, label %217

203:                                              ; preds = %197
  %204 = load %struct.mp_image*, %struct.mp_image** %7, align 8
  %205 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %204, i32 0, i32 0
  %206 = load double, double* %205, align 8
  %207 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %208 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %207, i32 0, i32 5
  %209 = load double, double* %208, align 8
  %210 = fcmp olt double %206, %209
  br i1 %210, label %211, label %217

211:                                              ; preds = %203
  %212 = load %struct.vo_chain*, %struct.vo_chain** %4, align 8
  %213 = getelementptr inbounds %struct.vo_chain, %struct.vo_chain* %212, i32 0, i32 0
  %214 = load i64, i64* %213, align 8
  %215 = icmp ne i64 %214, 0
  br i1 %215, label %217, label %216

216:                                              ; preds = %211
  br label %248

217:                                              ; preds = %211, %203, %197, %191
  %218 = load i32, i32* %5, align 4
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %244

220:                                              ; preds = %217
  %221 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %222 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %221, i32 0, i32 4
  %223 = load i32, i32* %222, align 8
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %244

225:                                              ; preds = %220
  %226 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %227 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %226, i32 0, i32 6
  %228 = load %struct.mp_image*, %struct.mp_image** %227, align 8
  %229 = icmp ne %struct.mp_image* %228, null
  br i1 %229, label %230, label %238

230:                                              ; preds = %225
  %231 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %232 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %233 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %232, i32 0, i32 6
  %234 = load %struct.mp_image*, %struct.mp_image** %233, align 8
  %235 = call i32 @add_new_frame(%struct.MPContext* %231, %struct.mp_image* %234)
  %236 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %237 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %236, i32 0, i32 6
  store %struct.mp_image* null, %struct.mp_image** %237, align 8
  br label %241

238:                                              ; preds = %225
  %239 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %240 = call i32 @MP_WARN(%struct.MPContext* %239, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  br label %241

241:                                              ; preds = %238, %230
  %242 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %243 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %242, i32 0, i32 4
  store i32 0, i32* %243, align 8
  br label %244

244:                                              ; preds = %241, %220, %217
  %245 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %246 = load %struct.mp_image*, %struct.mp_image** %7, align 8
  %247 = call i32 @add_new_frame(%struct.MPContext* %245, %struct.mp_image* %246)
  store %struct.mp_image* null, %struct.mp_image** %7, align 8
  br label %248

248:                                              ; preds = %244, %216
  br label %249

249:                                              ; preds = %248, %190
  br label %250

250:                                              ; preds = %249, %163
  br label %251

251:                                              ; preds = %250, %138
  %252 = load %struct.mp_image*, %struct.mp_image** %7, align 8
  %253 = call i32 @talloc_free(%struct.mp_image* %252)
  br label %254

254:                                              ; preds = %251, %108
  br label %255

255:                                              ; preds = %254, %45
  %256 = load i32, i32* %6, align 4
  %257 = icmp sle i32 %256, 0
  br i1 %257, label %258, label %280

258:                                              ; preds = %255
  %259 = load i32, i32* %5, align 4
  %260 = icmp ne i32 %259, 0
  br i1 %260, label %261, label %280

261:                                              ; preds = %258
  %262 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %263 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %262, i32 0, i32 7
  %264 = load i64, i64* %263, align 8
  %265 = icmp ne i64 %264, 0
  br i1 %265, label %266, label %280

266:                                              ; preds = %261
  %267 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %268 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %267, i32 0, i32 6
  %269 = load %struct.mp_image*, %struct.mp_image** %268, align 8
  %270 = icmp ne %struct.mp_image* %269, null
  br i1 %270, label %271, label %280

271:                                              ; preds = %266
  %272 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %273 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %274 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %273, i32 0, i32 6
  %275 = load %struct.mp_image*, %struct.mp_image** %274, align 8
  %276 = call i32 @add_new_frame(%struct.MPContext* %272, %struct.mp_image* %275)
  %277 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %278 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %277, i32 0, i32 6
  store %struct.mp_image* null, %struct.mp_image** %278, align 8
  %279 = load i32, i32* @VD_PROGRESS, align 4
  store i32 %279, i32* %6, align 4
  br label %280

280:                                              ; preds = %271, %266, %261, %258, %255
  %281 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %282 = load i32, i32* %6, align 4
  %283 = icmp sle i32 %282, 0
  %284 = zext i1 %283 to i32
  %285 = call i64 @have_new_frame(%struct.MPContext* %281, i32 %284)
  %286 = icmp ne i64 %285, 0
  br i1 %286, label %287, label %289

287:                                              ; preds = %280
  %288 = load i32, i32* @VD_NEW_FRAME, align 4
  br label %291

289:                                              ; preds = %280
  %290 = load i32, i32* %6, align 4
  br label %291

291:                                              ; preds = %289, %287
  %292 = phi i32 [ %288, %287 ], [ %290, %289 ]
  store i32 %292, i32* %2, align 4
  br label %293

293:                                              ; preds = %291, %98, %43, %36
  %294 = load i32, i32* %2, align 4
  ret i32 %294
}

declare dso_local i64 @vo_has_frame(i32) #1

declare dso_local i64 @have_new_frame(%struct.MPContext*, i32) #1

declare dso_local i64 @needs_new_frame(%struct.MPContext*) #1

declare dso_local { i64, %struct.mp_image* } @mp_pin_out_read(i32) #1

declare dso_local i32 @MP_ERR(%struct.MPContext*, i8*, i32) #1

declare dso_local i32 @mp_frame_type_str(i64) #1

declare dso_local i32 @mp_frame_unref(%struct.mp_frame*) #1

declare dso_local double @get_play_end_pts(%struct.MPContext*) #1

declare dso_local i32 @mp_pin_out_unread(i32, i64, %struct.mp_image*) #1

declare dso_local i32 @mp_image_setrefp(%struct.mp_image**, %struct.mp_image*) #1

declare dso_local i32 @add_new_frame(%struct.MPContext*, %struct.mp_image*) #1

declare dso_local i32 @MP_WARN(%struct.MPContext*, i8*) #1

declare dso_local i32 @talloc_free(%struct.mp_image*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
