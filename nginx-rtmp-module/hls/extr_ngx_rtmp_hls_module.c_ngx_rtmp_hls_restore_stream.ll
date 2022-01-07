; ModuleID = '/home/carl/AnghaBench/nginx-rtmp-module/hls/extr_ngx_rtmp_hls_module.c_ngx_rtmp_hls_restore_stream.c'
source_filename = "/home/carl/AnghaBench/nginx-rtmp-module/hls/extr_ngx_rtmp_hls_module.c_ngx_rtmp_hls_restore_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_19__ = type { i8, i64, %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_18__ = type { i64, double, i32, i32, i8, i8, i32, i32 }

@ngx_rtmp_hls_restore_stream.buffer = internal global [4096 x i8] zeroinitializer, align 16
@ngx_rtmp_hls_module = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"m3u8\00", align 1
@NGX_FILE_RDONLY = common dso_local global i32 0, align 4
@NGX_FILE_OPEN = common dso_local global i32 0, align 4
@NGX_INVALID_FILE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"#EXT-X-MEDIA-SEQUENCE:\00", align 1
@NGX_LOG_DEBUG_RTMP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"hls: restore sequence frag=%uL\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"#EXT-X-KEY:\00", align 1
@NGX_LOG_ERR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [27 x i8] c"hls: failed to read key id\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"hls: bad character in key id\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"#EXTINF:\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"hls: restore durarion=%.3f\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"#EXT-X-DISCONTINUITY\00", align 1
@.str.9 = private unnamed_addr constant [19 x i8] c"hls: discontinuity\00", align 1
@.str.10 = private unnamed_addr constant [72 x i8] c"hls: restore fragment '%*s' id=%uL, duration=%.3f, frag=%uL, nfrags=%ui\00", align 1
@NGX_RTMP_DISCONT = common dso_local global i32 0, align 4
@NGX_RTMP_DISCONT_LEN = common dso_local global i64 0, align 8
@NGX_RTMP_EXTINF = common dso_local global i32 0, align 4
@NGX_RTMP_EXTINF_LEN = common dso_local global i64 0, align 8
@NGX_RTMP_MSEQ = common dso_local global i32 0, align 4
@NGX_RTMP_MSEQ_LEN = common dso_local global i64 0, align 8
@NGX_RTMP_XKEY = common dso_local global i32 0, align 4
@NGX_RTMP_XKEY_LEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_17__*)* @ngx_rtmp_hls_restore_stream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ngx_rtmp_hls_restore_stream(%struct.TYPE_17__* %0) #0 {
  %2 = alloca %struct.TYPE_17__*, align 8
  %3 = alloca %struct.TYPE_19__*, align 8
  %4 = alloca %struct.TYPE_18__, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8, align 1
  %14 = alloca %struct.TYPE_18__*, align 8
  %15 = alloca double, align 8
  %16 = alloca i32, align 4
  %17 = alloca i8, align 1
  %18 = alloca i8, align 1
  %19 = alloca i8, align 1
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %2, align 8
  %20 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %21 = load i32, i32* @ngx_rtmp_hls_module, align 4
  %22 = call %struct.TYPE_19__* @ngx_rtmp_get_module_ctx(%struct.TYPE_17__* %20, i32 %21)
  store %struct.TYPE_19__* %22, %struct.TYPE_19__** %3, align 8
  %23 = call i32 @ngx_memzero(%struct.TYPE_18__* %4, i32 40)
  %24 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_16__*, %struct.TYPE_16__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %4, i32 0, i32 7
  store i32 %28, i32* %29, align 8
  %30 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %4, i32 0, i32 6
  %31 = call i32 @ngx_str_set(i32* %30, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %32 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @NGX_FILE_RDONLY, align 4
  %37 = load i32, i32* @NGX_FILE_OPEN, align 4
  %38 = call i64 @ngx_open_file(i32 %35, i32 %36, i32 %37, i32 0)
  %39 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %4, i32 0, i32 0
  store i64 %38, i64* %39, align 8
  %40 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %4, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @NGX_INVALID_FILE, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %1
  br label %339

45:                                               ; preds = %1
  store i64 0, i64* %6, align 8
  %46 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %46, i32 0, i32 1
  store i64 0, i64* %47, align 8
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %14, align 8
  store double 0.000000e+00, double* %15, align 8
  store i32 0, i32* %16, align 4
  store i8 0, i8* %18, align 1
  br label %48

48:                                               ; preds = %334, %45
  %49 = load i64, i64* %6, align 8
  %50 = call i64 @ngx_read_file(%struct.TYPE_18__* %4, i8* getelementptr inbounds ([4096 x i8], [4096 x i8]* @ngx_rtmp_hls_restore_stream.buffer, i64 0, i64 0), i32 4096, i64 %49)
  store i64 %50, i64* %5, align 8
  %51 = load i64, i64* %5, align 8
  %52 = icmp sle i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %48
  br label %335

54:                                               ; preds = %48
  store i8* getelementptr inbounds ([4096 x i8], [4096 x i8]* @ngx_rtmp_hls_restore_stream.buffer, i64 0, i64 0), i8** %7, align 8
  %55 = load i64, i64* %5, align 8
  %56 = getelementptr inbounds i8, i8* getelementptr inbounds ([4096 x i8], [4096 x i8]* @ngx_rtmp_hls_restore_stream.buffer, i64 0, i64 0), i64 %55
  store i8* %56, i8** %9, align 8
  br label %57

57:                                               ; preds = %332, %54
  %58 = load i8*, i8** %7, align 8
  %59 = load i8*, i8** %9, align 8
  %60 = call i8* @ngx_strlchr(i8* %58, i8* %59, i8 signext 10)
  store i8* %60, i8** %8, align 8
  %61 = load i8*, i8** %8, align 8
  %62 = icmp eq i8* %61, null
  br i1 %62, label %63, label %68

63:                                               ; preds = %57
  %64 = load i8*, i8** %7, align 8
  %65 = icmp eq i8* %64, getelementptr inbounds ([4096 x i8], [4096 x i8]* @ngx_rtmp_hls_restore_stream.buffer, i64 0, i64 0)
  br i1 %65, label %66, label %67

66:                                               ; preds = %63
  br label %335

67:                                               ; preds = %63
  br label %334

68:                                               ; preds = %57
  %69 = load i8*, i8** %8, align 8
  %70 = getelementptr inbounds i8, i8* %69, i64 1
  store i8* %70, i8** %10, align 8
  %71 = load i8*, i8** %10, align 8
  %72 = load i8*, i8** %7, align 8
  %73 = ptrtoint i8* %71 to i64
  %74 = ptrtoint i8* %72 to i64
  %75 = sub i64 %73, %74
  %76 = load i64, i64* %6, align 8
  %77 = add nsw i64 %76, %75
  store i64 %77, i64* %6, align 8
  %78 = load i8*, i8** %7, align 8
  %79 = load i8*, i8** %8, align 8
  %80 = icmp ne i8* %78, %79
  br i1 %80, label %81, label %90

81:                                               ; preds = %68
  %82 = load i8*, i8** %8, align 8
  %83 = getelementptr inbounds i8, i8* %82, i64 -1
  %84 = load i8, i8* %83, align 1
  %85 = sext i8 %84 to i32
  %86 = icmp eq i32 %85, 13
  br i1 %86, label %87, label %90

87:                                               ; preds = %81
  %88 = load i8*, i8** %8, align 8
  %89 = getelementptr inbounds i8, i8* %88, i32 -1
  store i8* %89, i8** %8, align 8
  br label %90

90:                                               ; preds = %87, %81, %68
  %91 = load i8*, i8** %7, align 8
  %92 = call i64 @ngx_memcmp(i8* %91, i32 ptrtoint ([23 x i8]* @.str.1 to i32), i64 22)
  %93 = icmp eq i64 %92, 0
  br i1 %93, label %94, label %112

94:                                               ; preds = %90
  %95 = load i8*, i8** %7, align 8
  %96 = getelementptr inbounds i8, i8* %95, i64 22
  %97 = call double @strtod(i8* %96, i32* null)
  %98 = fptosi double %97 to i8
  %99 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %100 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %99, i32 0, i32 0
  store i8 %98, i8* %100, align 8
  %101 = load i32, i32* @NGX_LOG_DEBUG_RTMP, align 4
  %102 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %103 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %102, i32 0, i32 0
  %104 = load %struct.TYPE_16__*, %struct.TYPE_16__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %108 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %107, i32 0, i32 0
  %109 = load i8, i8* %108, align 8
  %110 = sitofp i8 %109 to double
  %111 = call i32 @ngx_log_debug1(i32 %101, i32 %106, i32 0, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), double %110)
  br label %112

112:                                              ; preds = %94, %90
  %113 = load i8*, i8** %7, align 8
  %114 = call i64 @ngx_memcmp(i8* %113, i32 ptrtoint ([12 x i8]* @.str.3 to i32), i64 11)
  %115 = icmp eq i64 %114, 0
  br i1 %115, label %116, label %193

116:                                              ; preds = %112
  store i8 0, i8* %18, align 1
  store i8 1, i8* %19, align 1
  %117 = load i8*, i8** %8, align 8
  %118 = getelementptr inbounds i8, i8* %117, i64 -1
  store i8* %118, i8** %12, align 8
  br label %119

119:                                              ; preds = %176, %116
  %120 = load i8*, i8** %12, align 8
  %121 = load i8*, i8** %7, align 8
  %122 = icmp ult i8* %120, %121
  br i1 %122, label %123, label %131

123:                                              ; preds = %119
  %124 = load i32, i32* @NGX_LOG_ERR, align 4
  %125 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %126 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %125, i32 0, i32 0
  %127 = load %struct.TYPE_16__*, %struct.TYPE_16__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @ngx_log_error(i32 %124, i32 %129, i32 0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  br label %192

131:                                              ; preds = %119
  %132 = load i8*, i8** %12, align 8
  %133 = load i8, i8* %132, align 1
  store i8 %133, i8* %13, align 1
  %134 = load i8, i8* %13, align 1
  %135 = sext i8 %134 to i32
  %136 = icmp eq i32 %135, 120
  br i1 %136, label %137, label %138

137:                                              ; preds = %131
  br label %192

138:                                              ; preds = %131
  %139 = load i8, i8* %13, align 1
  %140 = sext i8 %139 to i32
  %141 = icmp sge i32 %140, 48
  br i1 %141, label %142, label %151

142:                                              ; preds = %138
  %143 = load i8, i8* %13, align 1
  %144 = sext i8 %143 to i32
  %145 = icmp sle i32 %144, 57
  br i1 %145, label %146, label %151

146:                                              ; preds = %142
  %147 = load i8, i8* %13, align 1
  %148 = sext i8 %147 to i32
  %149 = sub nsw i32 %148, 48
  %150 = trunc i32 %149 to i8
  store i8 %150, i8* %13, align 1
  br label %176

151:                                              ; preds = %142, %138
  %152 = load i8, i8* %13, align 1
  %153 = sext i8 %152 to i32
  %154 = or i32 %153, 32
  %155 = trunc i32 %154 to i8
  store i8 %155, i8* %13, align 1
  %156 = load i8, i8* %13, align 1
  %157 = sext i8 %156 to i32
  %158 = icmp sge i32 %157, 97
  br i1 %158, label %159, label %168

159:                                              ; preds = %151
  %160 = load i8, i8* %13, align 1
  %161 = sext i8 %160 to i32
  %162 = icmp sle i32 %161, 102
  br i1 %162, label %163, label %168

163:                                              ; preds = %159
  %164 = load i8, i8* %13, align 1
  %165 = sext i8 %164 to i32
  %166 = sub nsw i32 %165, 87
  %167 = trunc i32 %166 to i8
  store i8 %167, i8* %13, align 1
  br label %176

168:                                              ; preds = %159, %151
  %169 = load i32, i32* @NGX_LOG_ERR, align 4
  %170 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %171 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %170, i32 0, i32 0
  %172 = load %struct.TYPE_16__*, %struct.TYPE_16__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 4
  %175 = call i32 @ngx_log_error(i32 %169, i32 %174, i32 0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0))
  br label %192

176:                                              ; preds = %163, %146
  %177 = load i8, i8* %19, align 1
  %178 = sext i8 %177 to i32
  %179 = load i8, i8* %13, align 1
  %180 = sext i8 %179 to i32
  %181 = mul nsw i32 %178, %180
  %182 = load i8, i8* %18, align 1
  %183 = sext i8 %182 to i32
  %184 = add nsw i32 %183, %181
  %185 = trunc i32 %184 to i8
  store i8 %185, i8* %18, align 1
  %186 = load i8, i8* %19, align 1
  %187 = sext i8 %186 to i32
  %188 = mul nsw i32 %187, 16
  %189 = trunc i32 %188 to i8
  store i8 %189, i8* %19, align 1
  %190 = load i8*, i8** %12, align 8
  %191 = getelementptr inbounds i8, i8* %190, i32 -1
  store i8* %191, i8** %12, align 8
  br label %119

192:                                              ; preds = %168, %137, %123
  br label %193

193:                                              ; preds = %192, %112
  %194 = load i8*, i8** %7, align 8
  %195 = call i64 @ngx_memcmp(i8* %194, i32 ptrtoint ([9 x i8]* @.str.6 to i32), i64 8)
  %196 = icmp eq i64 %195, 0
  br i1 %196, label %197, label %209

197:                                              ; preds = %193
  %198 = load i8*, i8** %7, align 8
  %199 = getelementptr inbounds i8, i8* %198, i64 8
  %200 = call double @strtod(i8* %199, i32* null)
  store double %200, double* %15, align 8
  %201 = load i32, i32* @NGX_LOG_DEBUG_RTMP, align 4
  %202 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %203 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %202, i32 0, i32 0
  %204 = load %struct.TYPE_16__*, %struct.TYPE_16__** %203, align 8
  %205 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 4
  %207 = load double, double* %15, align 8
  %208 = call i32 @ngx_log_debug1(i32 %201, i32 %206, i32 0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0), double %207)
  br label %209

209:                                              ; preds = %197, %193
  %210 = load i8*, i8** %7, align 8
  %211 = call i64 @ngx_memcmp(i8* %210, i32 ptrtoint ([21 x i8]* @.str.8 to i32), i64 20)
  %212 = icmp eq i64 %211, 0
  br i1 %212, label %213, label %221

213:                                              ; preds = %209
  store i32 1, i32* %16, align 4
  %214 = load i32, i32* @NGX_LOG_DEBUG_RTMP, align 4
  %215 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %216 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %215, i32 0, i32 0
  %217 = load %struct.TYPE_16__*, %struct.TYPE_16__** %216, align 8
  %218 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 4
  %220 = call i32 @ngx_log_debug0(i32 %214, i32 %219, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i64 0, i64 0))
  br label %221

221:                                              ; preds = %213, %209
  %222 = load i8*, i8** %7, align 8
  %223 = getelementptr inbounds i8, i8* %222, i64 4
  %224 = load i8*, i8** %8, align 8
  %225 = icmp ule i8* %223, %224
  br i1 %225, label %226, label %332

226:                                              ; preds = %221
  %227 = load i8*, i8** %8, align 8
  %228 = getelementptr inbounds i8, i8* %227, i64 -3
  %229 = load i8, i8* %228, align 1
  %230 = sext i8 %229 to i32
  %231 = icmp eq i32 %230, 46
  br i1 %231, label %232, label %332

232:                                              ; preds = %226
  %233 = load i8*, i8** %8, align 8
  %234 = getelementptr inbounds i8, i8* %233, i64 -2
  %235 = load i8, i8* %234, align 1
  %236 = sext i8 %235 to i32
  %237 = icmp eq i32 %236, 116
  br i1 %237, label %238, label %332

238:                                              ; preds = %232
  %239 = load i8*, i8** %8, align 8
  %240 = getelementptr inbounds i8, i8* %239, i64 -1
  %241 = load i8, i8* %240, align 1
  %242 = sext i8 %241 to i32
  %243 = icmp eq i32 %242, 115
  br i1 %243, label %244, label %332

244:                                              ; preds = %238
  %245 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %246 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %247 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %246, i32 0, i32 1
  %248 = load i64, i64* %247, align 8
  %249 = call %struct.TYPE_18__* @ngx_rtmp_hls_get_frag(%struct.TYPE_17__* %245, i64 %248)
  store %struct.TYPE_18__* %249, %struct.TYPE_18__** %14, align 8
  %250 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %251 = call i32 @ngx_memzero(%struct.TYPE_18__* %250, i32 40)
  %252 = load double, double* %15, align 8
  %253 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %254 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %253, i32 0, i32 1
  store double %252, double* %254, align 8
  %255 = load i32, i32* %16, align 4
  %256 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %257 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %256, i32 0, i32 2
  store i32 %255, i32* %257, align 8
  %258 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %259 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %258, i32 0, i32 3
  store i32 1, i32* %259, align 4
  %260 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %261 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %260, i32 0, i32 4
  store i8 0, i8* %261, align 8
  store i32 0, i32* %16, align 4
  store i8 1, i8* %17, align 1
  %262 = load i8*, i8** %8, align 8
  %263 = getelementptr inbounds i8, i8* %262, i64 -4
  store i8* %263, i8** %11, align 8
  br label %264

264:                                              ; preds = %297, %244
  %265 = load i8*, i8** %11, align 8
  %266 = load i8*, i8** %7, align 8
  %267 = icmp uge i8* %265, %266
  br i1 %267, label %268, label %300

268:                                              ; preds = %264
  %269 = load i8*, i8** %11, align 8
  %270 = load i8, i8* %269, align 1
  %271 = sext i8 %270 to i32
  %272 = icmp slt i32 %271, 48
  br i1 %272, label %278, label %273

273:                                              ; preds = %268
  %274 = load i8*, i8** %11, align 8
  %275 = load i8, i8* %274, align 1
  %276 = sext i8 %275 to i32
  %277 = icmp sgt i32 %276, 57
  br i1 %277, label %278, label %279

278:                                              ; preds = %273, %268
  br label %300

279:                                              ; preds = %273
  %280 = load i8*, i8** %11, align 8
  %281 = load i8, i8* %280, align 1
  %282 = sext i8 %281 to i32
  %283 = sub nsw i32 %282, 48
  %284 = load i8, i8* %17, align 1
  %285 = sext i8 %284 to i32
  %286 = mul nsw i32 %283, %285
  %287 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %288 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %287, i32 0, i32 4
  %289 = load i8, i8* %288, align 8
  %290 = sext i8 %289 to i32
  %291 = add nsw i32 %290, %286
  %292 = trunc i32 %291 to i8
  store i8 %292, i8* %288, align 8
  %293 = load i8, i8* %17, align 1
  %294 = sext i8 %293 to i32
  %295 = mul nsw i32 %294, 10
  %296 = trunc i32 %295 to i8
  store i8 %296, i8* %17, align 1
  br label %297

297:                                              ; preds = %279
  %298 = load i8*, i8** %11, align 8
  %299 = getelementptr inbounds i8, i8* %298, i32 -1
  store i8* %299, i8** %11, align 8
  br label %264

300:                                              ; preds = %278, %264
  %301 = load i8, i8* %18, align 1
  %302 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %303 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %302, i32 0, i32 5
  store i8 %301, i8* %303, align 1
  %304 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %305 = call i32 @ngx_rtmp_hls_next_frag(%struct.TYPE_17__* %304)
  %306 = load i32, i32* @NGX_LOG_DEBUG_RTMP, align 4
  %307 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %308 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %307, i32 0, i32 0
  %309 = load %struct.TYPE_16__*, %struct.TYPE_16__** %308, align 8
  %310 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %309, i32 0, i32 0
  %311 = load i32, i32* %310, align 4
  %312 = load i8*, i8** %8, align 8
  %313 = load i8*, i8** %7, align 8
  %314 = ptrtoint i8* %312 to i64
  %315 = ptrtoint i8* %313 to i64
  %316 = sub i64 %314, %315
  %317 = load i8*, i8** %7, align 8
  %318 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %319 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %318, i32 0, i32 4
  %320 = load i8, i8* %319, align 8
  %321 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %322 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %321, i32 0, i32 1
  %323 = load double, double* %322, align 8
  %324 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %325 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %324, i32 0, i32 0
  %326 = load i8, i8* %325, align 8
  %327 = sitofp i8 %326 to double
  %328 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %329 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %328, i32 0, i32 1
  %330 = load i64, i64* %329, align 8
  %331 = call i32 @ngx_log_debug6(i32 %306, i32 %311, i32 0, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.10, i64 0, i64 0), i64 %316, i8* %317, i8 signext %320, double %323, double %327, i64 %330)
  br label %332

332:                                              ; preds = %300, %238, %232, %226, %221
  %333 = load i8*, i8** %10, align 8
  store i8* %333, i8** %7, align 8
  br label %57

334:                                              ; preds = %67
  br label %48

335:                                              ; preds = %66, %53
  %336 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %4, i32 0, i32 0
  %337 = load i64, i64* %336, align 8
  %338 = call i32 @ngx_close_file(i64 %337)
  br label %339

339:                                              ; preds = %335, %44
  ret void
}

declare dso_local %struct.TYPE_19__* @ngx_rtmp_get_module_ctx(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @ngx_memzero(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @ngx_str_set(i32*, i8*) #1

declare dso_local i64 @ngx_open_file(i32, i32, i32, i32) #1

declare dso_local i64 @ngx_read_file(%struct.TYPE_18__*, i8*, i32, i64) #1

declare dso_local i8* @ngx_strlchr(i8*, i8*, i8 signext) #1

declare dso_local i64 @ngx_memcmp(i8*, i32, i64) #1

declare dso_local double @strtod(i8*, i32*) #1

declare dso_local i32 @ngx_log_debug1(i32, i32, i32, i8*, double) #1

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*) #1

declare dso_local i32 @ngx_log_debug0(i32, i32, i32, i8*) #1

declare dso_local %struct.TYPE_18__* @ngx_rtmp_hls_get_frag(%struct.TYPE_17__*, i64) #1

declare dso_local i32 @ngx_rtmp_hls_next_frag(%struct.TYPE_17__*) #1

declare dso_local i32 @ngx_log_debug6(i32, i32, i32, i8*, i64, i8*, i8 signext, double, double, i64) #1

declare dso_local i32 @ngx_close_file(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
