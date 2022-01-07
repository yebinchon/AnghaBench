; ModuleID = '/home/carl/AnghaBench/mpv/video/decode/extr_vd_lavc.c_select_and_set_hwdec.c'
source_filename = "/home/carl/AnghaBench/mpv/video/decode/extr_vd_lavc.c_select_and_set_hwdec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_filter = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i32, i8*, %struct.hwdec_info, i64, i32, %struct.TYPE_6__*, i32, %struct.TYPE_5__* }
%struct.hwdec_info = type { i8*, i8*, %struct.TYPE_7__*, i32, i64 }
%struct.TYPE_7__ = type { i8*, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i8* }
%struct.hwcontext_fns = type { i64 (i32)* }

@.str = private unnamed_addr constant [3 x i8] c"no\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"auto\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"auto-copy\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"No hardware decoding requested.\0A\00", align 1
@.str.6 = private unnamed_addr constant [68 x i8] c"Not trying to use hardware decoding: codec %s is not on whitelist.\0A\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"Looking at hwdec %s...\0A\00", align 1
@.str.8 = private unnamed_addr constant [31 x i8] c"Not using this for auto-copy.\0A\00", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c"Could not create device.\0A\00", align 1
@.str.10 = private unnamed_addr constant [25 x i8] c"Not using emulated API.\0A\00", align 1
@.str.11 = private unnamed_addr constant [39 x i8] c"Using emulated hardware decoding API.\0A\00", align 1
@.str.12 = private unnamed_addr constant [48 x i8] c"No hardware decoding available for this codec.\0A\00", align 1
@.str.13 = private unnamed_addr constant [34 x i8] c"Trying hardware decoding via %s.\0A\00", align 1
@.str.14 = private unnamed_addr constant [34 x i8] c"Using underlying hw-decoder '%s'\0A\00", align 1
@.str.15 = private unnamed_addr constant [26 x i8] c"Using software decoding.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mp_filter*)* @select_and_set_hwdec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @select_and_set_hwdec(%struct.mp_filter* %0) #0 {
  %2 = alloca %struct.mp_filter*, align 8
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.hwdec_info*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.hwdec_info*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca %struct.hwcontext_fns*, align 8
  store %struct.mp_filter* %0, %struct.mp_filter** %2, align 8
  %16 = load %struct.mp_filter*, %struct.mp_filter** %2, align 8
  %17 = getelementptr inbounds %struct.mp_filter, %struct.mp_filter* %16, i32 0, i32 0
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  store %struct.TYPE_8__* %18, %struct.TYPE_8__** %3, align 8
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 8
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  store i8* %23, i8** %4, align 8
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 7
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @m_config_cache_update(i32 %26)
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 6
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @bstr0(i32 %32)
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @bstr_equals0(i32 %34, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %36 = icmp ne i32 %35, 0
  %37 = xor i1 %36, true
  %38 = zext i1 %37 to i32
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @bstr_equals0(i32 %39, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %50, label %42

42:                                               ; preds = %1
  %43 = load i32, i32* %5, align 4
  %44 = call i32 @bstr_equals0(i32 %43, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %50, label %46

46:                                               ; preds = %42
  %47 = load i32, i32* %5, align 4
  %48 = call i32 @bstr_equals0(i32 %47, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0))
  %49 = icmp ne i32 %48, 0
  br label %50

50:                                               ; preds = %46, %42, %1
  %51 = phi i1 [ true, %42 ], [ true, %1 ], [ %49, %46 ]
  %52 = zext i1 %51 to i32
  store i32 %52, i32* %7, align 4
  %53 = load i32, i32* %5, align 4
  %54 = call i32 @bstr_equals0(i32 %53, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  store i32 %54, i32* %8, align 4
  %55 = load i32, i32* %7, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %60, label %57

57:                                               ; preds = %50
  %58 = load i32, i32* %8, align 4
  %59 = icmp ne i32 %58, 0
  br label %60

60:                                               ; preds = %57, %50
  %61 = phi i1 [ true, %50 ], [ %59, %57 ]
  %62 = zext i1 %61 to i32
  store i32 %62, i32* %9, align 4
  %63 = load i32, i32* %6, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %68, label %65

65:                                               ; preds = %60
  %66 = load %struct.mp_filter*, %struct.mp_filter** %2, align 8
  %67 = call i32 (%struct.mp_filter*, i8*, ...) @MP_VERBOSE(%struct.mp_filter* %66, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0))
  br label %231

68:                                               ; preds = %60
  %69 = load %struct.mp_filter*, %struct.mp_filter** %2, align 8
  %70 = load i8*, i8** %4, align 8
  %71 = call i32 @hwdec_codec_allowed(%struct.mp_filter* %69, i8* %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %77, label %73

73:                                               ; preds = %68
  %74 = load %struct.mp_filter*, %struct.mp_filter** %2, align 8
  %75 = load i8*, i8** %4, align 8
  %76 = call i32 (%struct.mp_filter*, i8*, ...) @MP_VERBOSE(%struct.mp_filter* %74, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.6, i64 0, i64 0), i8* %75)
  br label %230

77:                                               ; preds = %68
  store %struct.hwdec_info* null, %struct.hwdec_info** %10, align 8
  store i32 0, i32* %11, align 4
  %78 = call i32 @add_all_hwdec_methods(%struct.hwdec_info** %10, i32* %11)
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 0
  store i32 1, i32* %80, align 8
  store i32 0, i32* %12, align 4
  br label %81

81:                                               ; preds = %216, %77
  %82 = load i32, i32* %12, align 4
  %83 = load i32, i32* %11, align 4
  %84 = icmp slt i32 %82, %83
  br i1 %84, label %85, label %219

85:                                               ; preds = %81
  %86 = load %struct.hwdec_info*, %struct.hwdec_info** %10, align 8
  %87 = load i32, i32* %12, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.hwdec_info, %struct.hwdec_info* %86, i64 %88
  store %struct.hwdec_info* %89, %struct.hwdec_info** %13, align 8
  %90 = load %struct.hwdec_info*, %struct.hwdec_info** %13, align 8
  %91 = getelementptr inbounds %struct.hwdec_info, %struct.hwdec_info* %90, i32 0, i32 2
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = call i8* @mp_codec_from_av_codec_id(i32 %94)
  store i8* %95, i8** %14, align 8
  %96 = load i8*, i8** %14, align 8
  %97 = icmp ne i8* %96, null
  br i1 %97, label %98, label %103

98:                                               ; preds = %85
  %99 = load i8*, i8** %14, align 8
  %100 = load i8*, i8** %4, align 8
  %101 = call i64 @strcmp(i8* %99, i8* %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %98, %85
  br label %216

104:                                              ; preds = %98
  %105 = load i32, i32* %9, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %122, label %107

107:                                              ; preds = %104
  %108 = load i32, i32* %5, align 4
  %109 = load %struct.hwdec_info*, %struct.hwdec_info** %13, align 8
  %110 = getelementptr inbounds %struct.hwdec_info, %struct.hwdec_info* %109, i32 0, i32 0
  %111 = load i8*, i8** %110, align 8
  %112 = call i32 @bstr_equals0(i32 %108, i8* %111)
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %122, label %114

114:                                              ; preds = %107
  %115 = load i32, i32* %5, align 4
  %116 = load %struct.hwdec_info*, %struct.hwdec_info** %13, align 8
  %117 = getelementptr inbounds %struct.hwdec_info, %struct.hwdec_info* %116, i32 0, i32 1
  %118 = load i8*, i8** %117, align 8
  %119 = call i32 @bstr_equals0(i32 %115, i8* %118)
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %122, label %121

121:                                              ; preds = %114
  br label %216

122:                                              ; preds = %114, %107, %104
  %123 = load %struct.mp_filter*, %struct.mp_filter** %2, align 8
  %124 = load %struct.hwdec_info*, %struct.hwdec_info** %13, align 8
  %125 = getelementptr inbounds %struct.hwdec_info, %struct.hwdec_info* %124, i32 0, i32 1
  %126 = load i8*, i8** %125, align 8
  %127 = call i32 (%struct.mp_filter*, i8*, ...) @MP_VERBOSE(%struct.mp_filter* %123, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0), i8* %126)
  %128 = load i32, i32* %8, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %138

130:                                              ; preds = %122
  %131 = load %struct.hwdec_info*, %struct.hwdec_info** %13, align 8
  %132 = getelementptr inbounds %struct.hwdec_info, %struct.hwdec_info* %131, i32 0, i32 3
  %133 = load i32, i32* %132, align 8
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %138, label %135

135:                                              ; preds = %130
  %136 = load %struct.mp_filter*, %struct.mp_filter** %2, align 8
  %137 = call i32 (%struct.mp_filter*, i8*, ...) @MP_VERBOSE(%struct.mp_filter* %136, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i64 0, i64 0))
  br label %216

138:                                              ; preds = %130, %122
  %139 = load %struct.hwdec_info*, %struct.hwdec_info** %13, align 8
  %140 = getelementptr inbounds %struct.hwdec_info, %struct.hwdec_info* %139, i32 0, i32 4
  %141 = load i64, i64* %140, align 8
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %191

143:                                              ; preds = %138
  %144 = load %struct.mp_filter*, %struct.mp_filter** %2, align 8
  %145 = load %struct.hwdec_info*, %struct.hwdec_info** %13, align 8
  %146 = load i32, i32* %9, align 4
  %147 = call i32 @hwdec_create_dev(%struct.mp_filter* %144, %struct.hwdec_info* %145, i32 %146)
  %148 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %149 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %148, i32 0, i32 5
  store i32 %147, i32* %149, align 8
  %150 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %151 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %150, i32 0, i32 5
  %152 = load i32, i32* %151, align 8
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %157, label %154

154:                                              ; preds = %143
  %155 = load %struct.mp_filter*, %struct.mp_filter** %2, align 8
  %156 = call i32 (%struct.mp_filter*, i8*, ...) @MP_VERBOSE(%struct.mp_filter* %155, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i64 0, i64 0))
  br label %216

157:                                              ; preds = %143
  %158 = load %struct.hwdec_info*, %struct.hwdec_info** %13, align 8
  %159 = getelementptr inbounds %struct.hwdec_info, %struct.hwdec_info* %158, i32 0, i32 4
  %160 = load i64, i64* %159, align 8
  %161 = call %struct.hwcontext_fns* @hwdec_get_hwcontext_fns(i64 %160)
  store %struct.hwcontext_fns* %161, %struct.hwcontext_fns** %15, align 8
  %162 = load %struct.hwcontext_fns*, %struct.hwcontext_fns** %15, align 8
  %163 = icmp ne %struct.hwcontext_fns* %162, null
  br i1 %163, label %164, label %190

164:                                              ; preds = %157
  %165 = load %struct.hwcontext_fns*, %struct.hwcontext_fns** %15, align 8
  %166 = getelementptr inbounds %struct.hwcontext_fns, %struct.hwcontext_fns* %165, i32 0, i32 0
  %167 = load i64 (i32)*, i64 (i32)** %166, align 8
  %168 = icmp ne i64 (i32)* %167, null
  br i1 %168, label %169, label %190

169:                                              ; preds = %164
  %170 = load %struct.hwcontext_fns*, %struct.hwcontext_fns** %15, align 8
  %171 = getelementptr inbounds %struct.hwcontext_fns, %struct.hwcontext_fns* %170, i32 0, i32 0
  %172 = load i64 (i32)*, i64 (i32)** %171, align 8
  %173 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %174 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %173, i32 0, i32 5
  %175 = load i32, i32* %174, align 8
  %176 = call i64 %172(i32 %175)
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %190

178:                                              ; preds = %169
  %179 = load i32, i32* %9, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %187

181:                                              ; preds = %178
  %182 = load %struct.mp_filter*, %struct.mp_filter** %2, align 8
  %183 = call i32 (%struct.mp_filter*, i8*, ...) @MP_VERBOSE(%struct.mp_filter* %182, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.10, i64 0, i64 0))
  %184 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %185 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %184, i32 0, i32 5
  %186 = call i32 @av_buffer_unref(i32* %185)
  br label %216

187:                                              ; preds = %178
  %188 = load %struct.mp_filter*, %struct.mp_filter** %2, align 8
  %189 = call i32 @MP_WARN(%struct.mp_filter* %188, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.11, i64 0, i64 0))
  br label %190

190:                                              ; preds = %187, %169, %164, %157
  br label %208

191:                                              ; preds = %138
  %192 = load %struct.hwdec_info*, %struct.hwdec_info** %13, align 8
  %193 = getelementptr inbounds %struct.hwdec_info, %struct.hwdec_info* %192, i32 0, i32 3
  %194 = load i32, i32* %193, align 8
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %207, label %196

196:                                              ; preds = %191
  %197 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %198 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %197, i32 0, i32 4
  %199 = load i64, i64* %198, align 8
  %200 = icmp ne i64 %199, 0
  br i1 %200, label %201, label %206

201:                                              ; preds = %196
  %202 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %203 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %202, i32 0, i32 4
  %204 = load i64, i64* %203, align 8
  %205 = call i32 @hwdec_devices_request_all(i64 %204)
  br label %206

206:                                              ; preds = %201, %196
  br label %207

207:                                              ; preds = %206, %191
  br label %208

208:                                              ; preds = %207, %190
  %209 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %210 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %209, i32 0, i32 1
  store i32 1, i32* %210, align 4
  %211 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %212 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %211, i32 0, i32 3
  %213 = load %struct.hwdec_info*, %struct.hwdec_info** %13, align 8
  %214 = bitcast %struct.hwdec_info* %212 to i8*
  %215 = bitcast %struct.hwdec_info* %213 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %214, i8* align 8 %215, i64 40, i1 false)
  br label %219

216:                                              ; preds = %181, %154, %135, %121, %103
  %217 = load i32, i32* %12, align 4
  %218 = add nsw i32 %217, 1
  store i32 %218, i32* %12, align 4
  br label %81

219:                                              ; preds = %208, %81
  %220 = load %struct.hwdec_info*, %struct.hwdec_info** %10, align 8
  %221 = call i32 @talloc_free(%struct.hwdec_info* %220)
  %222 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %223 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %222, i32 0, i32 1
  %224 = load i32, i32* %223, align 4
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %229, label %226

226:                                              ; preds = %219
  %227 = load %struct.mp_filter*, %struct.mp_filter** %2, align 8
  %228 = call i32 (%struct.mp_filter*, i8*, ...) @MP_VERBOSE(%struct.mp_filter* %227, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.12, i64 0, i64 0))
  br label %229

229:                                              ; preds = %226, %219
  br label %230

230:                                              ; preds = %229, %73
  br label %231

231:                                              ; preds = %230, %65
  %232 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %233 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %232, i32 0, i32 1
  %234 = load i32, i32* %233, align 4
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %236, label %264

236:                                              ; preds = %231
  %237 = load %struct.mp_filter*, %struct.mp_filter** %2, align 8
  %238 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %239 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %238, i32 0, i32 3
  %240 = getelementptr inbounds %struct.hwdec_info, %struct.hwdec_info* %239, i32 0, i32 1
  %241 = load i8*, i8** %240, align 8
  %242 = call i32 (%struct.mp_filter*, i8*, ...) @MP_VERBOSE(%struct.mp_filter* %237, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.13, i64 0, i64 0), i8* %241)
  %243 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %244 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %243, i32 0, i32 2
  %245 = load i8*, i8** %244, align 8
  %246 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %247 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %246, i32 0, i32 3
  %248 = getelementptr inbounds %struct.hwdec_info, %struct.hwdec_info* %247, i32 0, i32 2
  %249 = load %struct.TYPE_7__*, %struct.TYPE_7__** %248, align 8
  %250 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %249, i32 0, i32 0
  %251 = load i8*, i8** %250, align 8
  %252 = call i64 @strcmp(i8* %245, i8* %251)
  %253 = icmp ne i64 %252, 0
  br i1 %253, label %254, label %263

254:                                              ; preds = %236
  %255 = load %struct.mp_filter*, %struct.mp_filter** %2, align 8
  %256 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %257 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %256, i32 0, i32 3
  %258 = getelementptr inbounds %struct.hwdec_info, %struct.hwdec_info* %257, i32 0, i32 2
  %259 = load %struct.TYPE_7__*, %struct.TYPE_7__** %258, align 8
  %260 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %259, i32 0, i32 0
  %261 = load i8*, i8** %260, align 8
  %262 = call i32 (%struct.mp_filter*, i8*, ...) @MP_VERBOSE(%struct.mp_filter* %255, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.14, i64 0, i64 0), i8* %261)
  br label %263

263:                                              ; preds = %254, %236
  br label %267

264:                                              ; preds = %231
  %265 = load %struct.mp_filter*, %struct.mp_filter** %2, align 8
  %266 = call i32 (%struct.mp_filter*, i8*, ...) @MP_VERBOSE(%struct.mp_filter* %265, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.15, i64 0, i64 0))
  br label %267

267:                                              ; preds = %264, %263
  ret void
}

declare dso_local i32 @m_config_cache_update(i32) #1

declare dso_local i32 @bstr0(i32) #1

declare dso_local i32 @bstr_equals0(i32, i8*) #1

declare dso_local i32 @MP_VERBOSE(%struct.mp_filter*, i8*, ...) #1

declare dso_local i32 @hwdec_codec_allowed(%struct.mp_filter*, i8*) #1

declare dso_local i32 @add_all_hwdec_methods(%struct.hwdec_info**, i32*) #1

declare dso_local i8* @mp_codec_from_av_codec_id(i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @hwdec_create_dev(%struct.mp_filter*, %struct.hwdec_info*, i32) #1

declare dso_local %struct.hwcontext_fns* @hwdec_get_hwcontext_fns(i64) #1

declare dso_local i32 @av_buffer_unref(i32*) #1

declare dso_local i32 @MP_WARN(%struct.mp_filter*, i8*) #1

declare dso_local i32 @hwdec_devices_request_all(i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @talloc_free(%struct.hwdec_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
