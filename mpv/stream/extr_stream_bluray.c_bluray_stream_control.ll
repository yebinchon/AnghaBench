; ModuleID = '/home/carl/AnghaBench/mpv/stream/extr_stream_bluray.c_bluray_stream_control.c'
source_filename = "/home/carl/AnghaBench/mpv/stream/extr_stream_bluray.c_bluray_stream_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.bluray_priv_s* }
%struct.bluray_priv_s = type { i32, i32, i32, i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32, i32, %struct.TYPE_9__*, i32, i32, %struct.TYPE_8__* }
%struct.TYPE_9__ = type { i32, i32, %struct.TYPE_12__*, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i8*, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.stream_lang_req = type { i32, i32, i32 }
%struct.meta_dl = type { i32* }

@STREAM_UNSUPPORTED = common dso_local global i32 0, align 4
@STREAM_OK = common dso_local global i32 0, align 4
@MP_NOPTS_VALUE = common dso_local global double 0.000000e+00, align 8
@STREAM_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"%.4s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, i32, i8*)* @bluray_stream_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bluray_stream_control(%struct.TYPE_10__* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.bluray_priv_s*, align 8
  %9 = alloca %struct.TYPE_11__*, align 8
  %10 = alloca %struct.TYPE_11__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca double, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_11__*, align 8
  %15 = alloca double, align 8
  %16 = alloca %struct.TYPE_11__*, align 8
  %17 = alloca %struct.TYPE_11__*, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_11__*, align 8
  %20 = alloca %struct.stream_lang_req*, align 8
  %21 = alloca %struct.TYPE_12__*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca %struct.TYPE_12__*, align 8
  %25 = alloca %struct.meta_dl*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 0
  %28 = load %struct.bluray_priv_s*, %struct.bluray_priv_s** %27, align 8
  store %struct.bluray_priv_s* %28, %struct.bluray_priv_s** %8, align 8
  %29 = load i32, i32* %6, align 4
  switch i32 %29, label %319 [
    i32 134, label %30
    i32 140, label %45
    i32 129, label %88
    i32 138, label %109
    i32 133, label %116
    i32 132, label %123
    i32 139, label %139
    i32 131, label %148
    i32 135, label %161
    i32 141, label %176
    i32 130, label %183
    i32 136, label %215
    i32 137, label %291
  ]

30:                                               ; preds = %3
  %31 = load %struct.bluray_priv_s*, %struct.bluray_priv_s** %8, align 8
  %32 = getelementptr inbounds %struct.bluray_priv_s, %struct.bluray_priv_s* %31, i32 0, i32 4
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %32, align 8
  store %struct.TYPE_11__* %33, %struct.TYPE_11__** %9, align 8
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %35 = icmp ne %struct.TYPE_11__* %34, null
  br i1 %35, label %38, label %36

36:                                               ; preds = %30
  %37 = load i32, i32* @STREAM_UNSUPPORTED, align 4
  store i32 %37, i32* %4, align 4
  br label %322

38:                                               ; preds = %30
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i8*, i8** %7, align 8
  %43 = bitcast i8* %42 to i32*
  store i32 %41, i32* %43, align 4
  %44 = load i32, i32* @STREAM_OK, align 4
  store i32 %44, i32* %4, align 4
  br label %322

45:                                               ; preds = %3
  %46 = load %struct.bluray_priv_s*, %struct.bluray_priv_s** %8, align 8
  %47 = getelementptr inbounds %struct.bluray_priv_s, %struct.bluray_priv_s* %46, i32 0, i32 4
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %47, align 8
  store %struct.TYPE_11__* %48, %struct.TYPE_11__** %10, align 8
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %50 = icmp ne %struct.TYPE_11__* %49, null
  br i1 %50, label %53, label %51

51:                                               ; preds = %45
  %52 = load i32, i32* @STREAM_UNSUPPORTED, align 4
  store i32 %52, i32* %4, align 4
  br label %322

53:                                               ; preds = %45
  %54 = load i8*, i8** %7, align 8
  %55 = bitcast i8* %54 to double*
  %56 = load double, double* %55, align 8
  %57 = fptosi double %56 to i32
  store i32 %57, i32* %11, align 4
  %58 = load double, double* @MP_NOPTS_VALUE, align 8
  store double %58, double* %12, align 8
  %59 = load i32, i32* %11, align 4
  %60 = icmp sge i32 %59, 0
  br i1 %60, label %67, label %61

61:                                               ; preds = %53
  %62 = load i32, i32* %11, align 4
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = icmp ult i32 %62, %65
  br i1 %66, label %67, label %77

67:                                               ; preds = %61, %53
  %68 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i32 0, i32 5
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %69, align 8
  %71 = load i32, i32* %11, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call double @BD_TIME_TO_MP(i32 %75)
  store double %76, double* %12, align 8
  br label %77

77:                                               ; preds = %67, %61
  %78 = load double, double* %12, align 8
  %79 = load double, double* @MP_NOPTS_VALUE, align 8
  %80 = fcmp oeq double %78, %79
  br i1 %80, label %81, label %83

81:                                               ; preds = %77
  %82 = load i32, i32* @STREAM_ERROR, align 4
  store i32 %82, i32* %4, align 4
  br label %322

83:                                               ; preds = %77
  %84 = load double, double* %12, align 8
  %85 = load i8*, i8** %7, align 8
  %86 = bitcast i8* %85 to double*
  store double %84, double* %86, align 8
  %87 = load i32, i32* @STREAM_OK, align 4
  store i32 %87, i32* %4, align 4
  br label %322

88:                                               ; preds = %3
  %89 = load i8*, i8** %7, align 8
  %90 = bitcast i8* %89 to i32*
  %91 = load i32, i32* %90, align 4
  store i32 %91, i32* %13, align 4
  %92 = load i32, i32* %13, align 4
  %93 = load %struct.bluray_priv_s*, %struct.bluray_priv_s** %8, align 8
  %94 = getelementptr inbounds %struct.bluray_priv_s, %struct.bluray_priv_s* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = icmp uge i32 %92, %95
  br i1 %96, label %102, label %97

97:                                               ; preds = %88
  %98 = load %struct.bluray_priv_s*, %struct.bluray_priv_s** %8, align 8
  %99 = load i32, i32* %13, align 4
  %100 = call i32 @play_title(%struct.bluray_priv_s* %98, i32 %99)
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %104, label %102

102:                                              ; preds = %97, %88
  %103 = load i32, i32* @STREAM_UNSUPPORTED, align 4
  store i32 %103, i32* %4, align 4
  br label %322

104:                                              ; preds = %97
  %105 = load i32, i32* %13, align 4
  %106 = load %struct.bluray_priv_s*, %struct.bluray_priv_s** %8, align 8
  %107 = getelementptr inbounds %struct.bluray_priv_s, %struct.bluray_priv_s* %106, i32 0, i32 1
  store i32 %105, i32* %107, align 4
  %108 = load i32, i32* @STREAM_OK, align 4
  store i32 %108, i32* %4, align 4
  br label %322

109:                                              ; preds = %3
  %110 = load %struct.bluray_priv_s*, %struct.bluray_priv_s** %8, align 8
  %111 = getelementptr inbounds %struct.bluray_priv_s, %struct.bluray_priv_s* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = load i8*, i8** %7, align 8
  %114 = bitcast i8* %113 to i32*
  store i32 %112, i32* %114, align 4
  %115 = load i32, i32* @STREAM_OK, align 4
  store i32 %115, i32* %4, align 4
  br label %322

116:                                              ; preds = %3
  %117 = load %struct.bluray_priv_s*, %struct.bluray_priv_s** %8, align 8
  %118 = getelementptr inbounds %struct.bluray_priv_s, %struct.bluray_priv_s* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = load i8*, i8** %7, align 8
  %121 = bitcast i8* %120 to i32*
  store i32 %119, i32* %121, align 4
  %122 = load i32, i32* @STREAM_OK, align 4
  store i32 %122, i32* %4, align 4
  br label %322

123:                                              ; preds = %3
  %124 = load %struct.bluray_priv_s*, %struct.bluray_priv_s** %8, align 8
  %125 = getelementptr inbounds %struct.bluray_priv_s, %struct.bluray_priv_s* %124, i32 0, i32 4
  %126 = load %struct.TYPE_11__*, %struct.TYPE_11__** %125, align 8
  store %struct.TYPE_11__* %126, %struct.TYPE_11__** %14, align 8
  %127 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %128 = icmp ne %struct.TYPE_11__* %127, null
  br i1 %128, label %131, label %129

129:                                              ; preds = %123
  %130 = load i32, i32* @STREAM_UNSUPPORTED, align 4
  store i32 %130, i32* %4, align 4
  br label %322

131:                                              ; preds = %123
  %132 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %133 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %132, i32 0, i32 4
  %134 = load i32, i32* %133, align 4
  %135 = call double @BD_TIME_TO_MP(i32 %134)
  %136 = load i8*, i8** %7, align 8
  %137 = bitcast i8* %136 to double*
  store double %135, double* %137, align 8
  %138 = load i32, i32* @STREAM_OK, align 4
  store i32 %138, i32* %4, align 4
  br label %322

139:                                              ; preds = %3
  %140 = load %struct.bluray_priv_s*, %struct.bluray_priv_s** %8, align 8
  %141 = getelementptr inbounds %struct.bluray_priv_s, %struct.bluray_priv_s* %140, i32 0, i32 3
  %142 = load i32, i32* %141, align 4
  %143 = call i32 @bd_tell_time(i32 %142)
  %144 = call double @BD_TIME_TO_MP(i32 %143)
  %145 = load i8*, i8** %7, align 8
  %146 = bitcast i8* %145 to double*
  store double %144, double* %146, align 8
  %147 = load i32, i32* @STREAM_OK, align 4
  store i32 %147, i32* %4, align 4
  br label %322

148:                                              ; preds = %3
  %149 = load i8*, i8** %7, align 8
  %150 = bitcast i8* %149 to double*
  %151 = load double, double* %150, align 8
  store double %151, double* %15, align 8
  %152 = load %struct.bluray_priv_s*, %struct.bluray_priv_s** %8, align 8
  %153 = getelementptr inbounds %struct.bluray_priv_s, %struct.bluray_priv_s* %152, i32 0, i32 3
  %154 = load i32, i32* %153, align 4
  %155 = load double, double* %15, align 8
  %156 = call i32 @BD_TIME_FROM_MP(double %155)
  %157 = call i32 @bd_seek_time(i32 %154, i32 %156)
  %158 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %159 = call i32 @stream_drop_buffers(%struct.TYPE_10__* %158)
  %160 = load i32, i32* @STREAM_OK, align 4
  store i32 %160, i32* %4, align 4
  br label %322

161:                                              ; preds = %3
  %162 = load %struct.bluray_priv_s*, %struct.bluray_priv_s** %8, align 8
  %163 = getelementptr inbounds %struct.bluray_priv_s, %struct.bluray_priv_s* %162, i32 0, i32 4
  %164 = load %struct.TYPE_11__*, %struct.TYPE_11__** %163, align 8
  store %struct.TYPE_11__* %164, %struct.TYPE_11__** %16, align 8
  %165 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %166 = icmp ne %struct.TYPE_11__* %165, null
  br i1 %166, label %169, label %167

167:                                              ; preds = %161
  %168 = load i32, i32* @STREAM_UNSUPPORTED, align 4
  store i32 %168, i32* %4, align 4
  br label %322

169:                                              ; preds = %161
  %170 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %171 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 4
  %173 = load i8*, i8** %7, align 8
  %174 = bitcast i8* %173 to i32*
  store i32 %172, i32* %174, align 4
  %175 = load i32, i32* @STREAM_OK, align 4
  store i32 %175, i32* %4, align 4
  br label %322

176:                                              ; preds = %3
  %177 = load %struct.bluray_priv_s*, %struct.bluray_priv_s** %8, align 8
  %178 = getelementptr inbounds %struct.bluray_priv_s, %struct.bluray_priv_s* %177, i32 0, i32 2
  %179 = load i32, i32* %178, align 8
  %180 = load i8*, i8** %7, align 8
  %181 = bitcast i8* %180 to i32*
  store i32 %179, i32* %181, align 4
  %182 = load i32, i32* @STREAM_OK, align 4
  store i32 %182, i32* %4, align 4
  br label %322

183:                                              ; preds = %3
  %184 = load %struct.bluray_priv_s*, %struct.bluray_priv_s** %8, align 8
  %185 = getelementptr inbounds %struct.bluray_priv_s, %struct.bluray_priv_s* %184, i32 0, i32 4
  %186 = load %struct.TYPE_11__*, %struct.TYPE_11__** %185, align 8
  store %struct.TYPE_11__* %186, %struct.TYPE_11__** %17, align 8
  %187 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %188 = icmp ne %struct.TYPE_11__* %187, null
  br i1 %188, label %191, label %189

189:                                              ; preds = %183
  %190 = load i32, i32* @STREAM_UNSUPPORTED, align 4
  store i32 %190, i32* %4, align 4
  br label %322

191:                                              ; preds = %183
  %192 = load i8*, i8** %7, align 8
  %193 = bitcast i8* %192 to i32*
  %194 = load i32, i32* %193, align 4
  store i32 %194, i32* %18, align 4
  %195 = load i32, i32* %18, align 4
  %196 = icmp slt i32 %195, 0
  br i1 %196, label %203, label %197

197:                                              ; preds = %191
  %198 = load i32, i32* %18, align 4
  %199 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %200 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %199, i32 0, i32 1
  %201 = load i32, i32* %200, align 4
  %202 = icmp sgt i32 %198, %201
  br i1 %202, label %203, label %205

203:                                              ; preds = %197, %191
  %204 = load i32, i32* @STREAM_UNSUPPORTED, align 4
  store i32 %204, i32* %4, align 4
  br label %322

205:                                              ; preds = %197
  %206 = load i32, i32* %18, align 4
  %207 = load %struct.bluray_priv_s*, %struct.bluray_priv_s** %8, align 8
  %208 = getelementptr inbounds %struct.bluray_priv_s, %struct.bluray_priv_s* %207, i32 0, i32 2
  store i32 %206, i32* %208, align 8
  %209 = load %struct.bluray_priv_s*, %struct.bluray_priv_s** %8, align 8
  %210 = getelementptr inbounds %struct.bluray_priv_s, %struct.bluray_priv_s* %209, i32 0, i32 3
  %211 = load i32, i32* %210, align 4
  %212 = load i32, i32* %18, align 4
  %213 = call i32 @bd_seamless_angle_change(i32 %211, i32 %212)
  %214 = load i32, i32* @STREAM_OK, align 4
  store i32 %214, i32* %4, align 4
  br label %322

215:                                              ; preds = %3
  %216 = load %struct.bluray_priv_s*, %struct.bluray_priv_s** %8, align 8
  %217 = getelementptr inbounds %struct.bluray_priv_s, %struct.bluray_priv_s* %216, i32 0, i32 4
  %218 = load %struct.TYPE_11__*, %struct.TYPE_11__** %217, align 8
  store %struct.TYPE_11__* %218, %struct.TYPE_11__** %19, align 8
  %219 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %220 = icmp ne %struct.TYPE_11__* %219, null
  br i1 %220, label %221, label %289

221:                                              ; preds = %215
  %222 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %223 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %222, i32 0, i32 3
  %224 = load i32, i32* %223, align 8
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %226, label %289

226:                                              ; preds = %221
  %227 = load i8*, i8** %7, align 8
  %228 = bitcast i8* %227 to %struct.stream_lang_req*
  store %struct.stream_lang_req* %228, %struct.stream_lang_req** %20, align 8
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %21, align 8
  store i32 0, i32* %22, align 4
  %229 = load %struct.stream_lang_req*, %struct.stream_lang_req** %20, align 8
  %230 = getelementptr inbounds %struct.stream_lang_req, %struct.stream_lang_req* %229, i32 0, i32 2
  %231 = load i32, i32* %230, align 4
  switch i32 %231, label %258 [
    i32 142, label %232
    i32 128, label %245
  ]

232:                                              ; preds = %226
  %233 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %234 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %233, i32 0, i32 2
  %235 = load %struct.TYPE_9__*, %struct.TYPE_9__** %234, align 8
  %236 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %235, i64 0
  %237 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %236, i32 0, i32 0
  %238 = load i32, i32* %237, align 8
  store i32 %238, i32* %22, align 4
  %239 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %240 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %239, i32 0, i32 2
  %241 = load %struct.TYPE_9__*, %struct.TYPE_9__** %240, align 8
  %242 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %241, i64 0
  %243 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %242, i32 0, i32 3
  %244 = load %struct.TYPE_12__*, %struct.TYPE_12__** %243, align 8
  store %struct.TYPE_12__* %244, %struct.TYPE_12__** %21, align 8
  br label %258

245:                                              ; preds = %226
  %246 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %247 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %246, i32 0, i32 2
  %248 = load %struct.TYPE_9__*, %struct.TYPE_9__** %247, align 8
  %249 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %248, i64 0
  %250 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %249, i32 0, i32 1
  %251 = load i32, i32* %250, align 4
  store i32 %251, i32* %22, align 4
  %252 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %253 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %252, i32 0, i32 2
  %254 = load %struct.TYPE_9__*, %struct.TYPE_9__** %253, align 8
  %255 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %254, i64 0
  %256 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %255, i32 0, i32 2
  %257 = load %struct.TYPE_12__*, %struct.TYPE_12__** %256, align 8
  store %struct.TYPE_12__* %257, %struct.TYPE_12__** %21, align 8
  br label %258

258:                                              ; preds = %226, %245, %232
  store i32 0, i32* %23, align 4
  br label %259

259:                                              ; preds = %285, %258
  %260 = load i32, i32* %23, align 4
  %261 = load i32, i32* %22, align 4
  %262 = icmp slt i32 %260, %261
  br i1 %262, label %263, label %288

263:                                              ; preds = %259
  %264 = load %struct.TYPE_12__*, %struct.TYPE_12__** %21, align 8
  %265 = load i32, i32* %23, align 4
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %264, i64 %266
  store %struct.TYPE_12__* %267, %struct.TYPE_12__** %24, align 8
  %268 = load %struct.TYPE_12__*, %struct.TYPE_12__** %24, align 8
  %269 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %268, i32 0, i32 1
  %270 = load i32, i32* %269, align 8
  %271 = load %struct.stream_lang_req*, %struct.stream_lang_req** %20, align 8
  %272 = getelementptr inbounds %struct.stream_lang_req, %struct.stream_lang_req* %271, i32 0, i32 1
  %273 = load i32, i32* %272, align 4
  %274 = icmp eq i32 %270, %273
  br i1 %274, label %275, label %284

275:                                              ; preds = %263
  %276 = load %struct.stream_lang_req*, %struct.stream_lang_req** %20, align 8
  %277 = getelementptr inbounds %struct.stream_lang_req, %struct.stream_lang_req* %276, i32 0, i32 0
  %278 = load i32, i32* %277, align 4
  %279 = load %struct.TYPE_12__*, %struct.TYPE_12__** %24, align 8
  %280 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %279, i32 0, i32 0
  %281 = load i8*, i8** %280, align 8
  %282 = call i32 @snprintf(i32 %278, i32 4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %281)
  %283 = load i32, i32* @STREAM_OK, align 4
  store i32 %283, i32* %4, align 4
  br label %322

284:                                              ; preds = %263
  br label %285

285:                                              ; preds = %284
  %286 = load i32, i32* %23, align 4
  %287 = add nsw i32 %286, 1
  store i32 %287, i32* %23, align 4
  br label %259

288:                                              ; preds = %259
  br label %289

289:                                              ; preds = %288, %221, %215
  %290 = load i32, i32* @STREAM_ERROR, align 4
  store i32 %290, i32* %4, align 4
  br label %322

291:                                              ; preds = %3
  %292 = load %struct.bluray_priv_s*, %struct.bluray_priv_s** %8, align 8
  %293 = getelementptr inbounds %struct.bluray_priv_s, %struct.bluray_priv_s* %292, i32 0, i32 3
  %294 = load i32, i32* %293, align 4
  %295 = call %struct.meta_dl* @bd_get_meta(i32 %294)
  store %struct.meta_dl* %295, %struct.meta_dl** %25, align 8
  %296 = load %struct.meta_dl*, %struct.meta_dl** %25, align 8
  %297 = icmp ne %struct.meta_dl* %296, null
  br i1 %297, label %298, label %310

298:                                              ; preds = %291
  %299 = load %struct.meta_dl*, %struct.meta_dl** %25, align 8
  %300 = getelementptr inbounds %struct.meta_dl, %struct.meta_dl* %299, i32 0, i32 0
  %301 = load i32*, i32** %300, align 8
  %302 = icmp ne i32* %301, null
  br i1 %302, label %303, label %310

303:                                              ; preds = %298
  %304 = load %struct.meta_dl*, %struct.meta_dl** %25, align 8
  %305 = getelementptr inbounds %struct.meta_dl, %struct.meta_dl* %304, i32 0, i32 0
  %306 = load i32*, i32** %305, align 8
  %307 = getelementptr inbounds i32, i32* %306, i64 0
  %308 = load i32, i32* %307, align 4
  %309 = icmp ne i32 %308, 0
  br i1 %309, label %311, label %310

310:                                              ; preds = %303, %298, %291
  br label %320

311:                                              ; preds = %303
  %312 = load %struct.meta_dl*, %struct.meta_dl** %25, align 8
  %313 = getelementptr inbounds %struct.meta_dl, %struct.meta_dl* %312, i32 0, i32 0
  %314 = load i32*, i32** %313, align 8
  %315 = call i8* @talloc_strdup(i32* null, i32* %314)
  %316 = load i8*, i8** %7, align 8
  %317 = bitcast i8* %316 to i8**
  store i8* %315, i8** %317, align 8
  %318 = load i32, i32* @STREAM_OK, align 4
  store i32 %318, i32* %4, align 4
  br label %322

319:                                              ; preds = %3
  br label %320

320:                                              ; preds = %319, %310
  %321 = load i32, i32* @STREAM_UNSUPPORTED, align 4
  store i32 %321, i32* %4, align 4
  br label %322

322:                                              ; preds = %320, %311, %289, %275, %205, %203, %189, %176, %169, %167, %148, %139, %131, %129, %116, %109, %104, %102, %83, %81, %51, %38, %36
  %323 = load i32, i32* %4, align 4
  ret i32 %323
}

declare dso_local double @BD_TIME_TO_MP(i32) #1

declare dso_local i32 @play_title(%struct.bluray_priv_s*, i32) #1

declare dso_local i32 @bd_tell_time(i32) #1

declare dso_local i32 @bd_seek_time(i32, i32) #1

declare dso_local i32 @BD_TIME_FROM_MP(double) #1

declare dso_local i32 @stream_drop_buffers(%struct.TYPE_10__*) #1

declare dso_local i32 @bd_seamless_angle_change(i32, i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*) #1

declare dso_local %struct.meta_dl* @bd_get_meta(i32) #1

declare dso_local i8* @talloc_strdup(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
