; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/obs-outputs/librtmp/extr_rtmp.c_SendConnectPacket.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/obs-outputs/librtmp/extr_rtmp.c_SendConnectPacket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i64 }
%struct.TYPE_17__ = type { i64 }
%struct.TYPE_16__ = type { double, double, double, %struct.TYPE_14__, i64, i32, i32, i64 }
%struct.TYPE_14__ = type { i32, i32, %struct.TYPE_13__, %struct.TYPE_18__, %struct.TYPE_17__, %struct.TYPE_17__, %struct.TYPE_17__, %struct.TYPE_17__, %struct.TYPE_17__ }
%struct.TYPE_13__ = type { i32, i32* }
%struct.TYPE_15__ = type { i32, i8*, i32, i64, i64, i64, i32, i8* }

@TRUE = common dso_local global i32 0, align 4
@RTMP_FEATURE_WRITE = common dso_local global i32 0, align 4
@RTMP_PACKET_SIZE_LARGE = common dso_local global i8* null, align 8
@RTMP_PACKET_TYPE_CHUNK_SIZE = common dso_local global i32 0, align 4
@RTMP_MAX_HEADER_SIZE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@RTMP_PACKET_TYPE_INVOKE = common dso_local global i32 0, align 4
@av_connect = common dso_local global %struct.TYPE_18__ zeroinitializer, align 8
@AMF_OBJECT = common dso_local global i32 0, align 4
@av_app = common dso_local global i32 0, align 4
@av_type = common dso_local global i32 0, align 4
@av_nonprivate = common dso_local global %struct.TYPE_17__ zeroinitializer, align 8
@av_flashVer = common dso_local global i32 0, align 4
@av_swfUrl = common dso_local global i32 0, align 4
@av_tcUrl = common dso_local global i32 0, align 4
@av_fpad = common dso_local global i32 0, align 4
@av_capabilities = common dso_local global i32 0, align 4
@av_audioCodecs = common dso_local global i32 0, align 4
@av_videoCodecs = common dso_local global i32 0, align 4
@av_videoFunction = common dso_local global i32 0, align 4
@av_pageUrl = common dso_local global i32 0, align 4
@av_objectEncoding = common dso_local global i32 0, align 4
@AMF_OBJECT_END = common dso_local global i32 0, align 4
@RTMP_LF_AUTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_16__*, %struct.TYPE_15__*)* @SendConnectPacket to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @SendConnectPacket(%struct.TYPE_16__* %0, %struct.TYPE_15__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca %struct.TYPE_15__, align 8
  %7 = alloca [4096 x i8], align 16
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %4, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %5, align 8
  %11 = getelementptr inbounds [4096 x i8], [4096 x i8]* %7, i64 0, i64 0
  %12 = getelementptr inbounds i8, i8* %11, i64 4096
  store i8* %12, i8** %8, align 8
  %13 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %14 = icmp ne %struct.TYPE_15__* %13, null
  br i1 %14, label %15, label %20

15:                                               ; preds = %2
  %16 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %17 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %18 = load i32, i32* @TRUE, align 4
  %19 = call i32 @RTMP_SendPacket(%struct.TYPE_16__* %16, %struct.TYPE_15__* %17, i32 %18)
  store i32 %19, i32* %3, align 4
  br label %370

20:                                               ; preds = %2
  %21 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %21, i32 0, i32 3
  %23 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @RTMP_FEATURE_WRITE, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %62

28:                                               ; preds = %20
  %29 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %29, i32 0, i32 7
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %62

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %6, i32 0, i32 0
  store i32 2, i32* %34, align 8
  %35 = load i8*, i8** @RTMP_PACKET_SIZE_LARGE, align 8
  %36 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %6, i32 0, i32 7
  store i8* %35, i8** %36, align 8
  %37 = load i32, i32* @RTMP_PACKET_TYPE_CHUNK_SIZE, align 4
  %38 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %6, i32 0, i32 6
  store i32 %37, i32* %38, align 8
  %39 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %6, i32 0, i32 5
  store i64 0, i64* %39, align 8
  %40 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %6, i32 0, i32 4
  store i64 0, i64* %40, align 8
  %41 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %6, i32 0, i32 3
  store i64 0, i64* %41, align 8
  %42 = getelementptr inbounds [4096 x i8], [4096 x i8]* %7, i64 0, i64 0
  %43 = load i32, i32* @RTMP_MAX_HEADER_SIZE, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8, i8* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %6, i32 0, i32 1
  store i8* %45, i8** %46, align 8
  %47 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %6, i32 0, i32 2
  store i32 4, i32* %47, align 8
  %48 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %6, i32 0, i32 1
  %49 = load i8*, i8** %48, align 8
  store i8* %49, i8** %9, align 8
  %50 = load i8*, i8** %9, align 8
  %51 = load i8*, i8** %8, align 8
  %52 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %52, i32 0, i32 6
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @AMF_EncodeInt32(i8* %50, i8* %51, i32 %54)
  %56 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %57 = load i32, i32* @FALSE, align 4
  %58 = call i32 @RTMP_SendPacket(%struct.TYPE_16__* %56, %struct.TYPE_15__* %6, i32 %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %33
  store i32 0, i32* %3, align 4
  br label %370

61:                                               ; preds = %33
  br label %62

62:                                               ; preds = %61, %28, %20
  %63 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %6, i32 0, i32 0
  store i32 3, i32* %63, align 8
  %64 = load i8*, i8** @RTMP_PACKET_SIZE_LARGE, align 8
  %65 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %6, i32 0, i32 7
  store i8* %64, i8** %65, align 8
  %66 = load i32, i32* @RTMP_PACKET_TYPE_INVOKE, align 4
  %67 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %6, i32 0, i32 6
  store i32 %66, i32* %67, align 8
  %68 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %6, i32 0, i32 5
  store i64 0, i64* %68, align 8
  %69 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %6, i32 0, i32 4
  store i64 0, i64* %69, align 8
  %70 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %6, i32 0, i32 3
  store i64 0, i64* %70, align 8
  %71 = getelementptr inbounds [4096 x i8], [4096 x i8]* %7, i64 0, i64 0
  %72 = load i32, i32* @RTMP_MAX_HEADER_SIZE, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i8, i8* %71, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %6, i32 0, i32 1
  store i8* %74, i8** %75, align 8
  %76 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %6, i32 0, i32 1
  %77 = load i8*, i8** %76, align 8
  store i8* %77, i8** %9, align 8
  %78 = load i8*, i8** %9, align 8
  %79 = load i8*, i8** %8, align 8
  %80 = call i8* @AMF_EncodeString(i8* %78, i8* %79, %struct.TYPE_18__* @av_connect)
  store i8* %80, i8** %9, align 8
  %81 = load i8*, i8** %9, align 8
  %82 = load i8*, i8** %8, align 8
  %83 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %83, i32 0, i32 5
  %85 = load i32, i32* %84, align 8
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %84, align 8
  %87 = call i8* @AMF_EncodeNumber(i8* %81, i8* %82, i32 %86)
  store i8* %87, i8** %9, align 8
  %88 = load i32, i32* @AMF_OBJECT, align 4
  %89 = trunc i32 %88 to i8
  %90 = load i8*, i8** %9, align 8
  %91 = getelementptr inbounds i8, i8* %90, i32 1
  store i8* %91, i8** %9, align 8
  store i8 %89, i8* %90, align 1
  %92 = load i8*, i8** %9, align 8
  %93 = load i8*, i8** %8, align 8
  %94 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %94, i32 0, i32 3
  %96 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %95, i32 0, i32 8
  %97 = call i8* @AMF_EncodeNamedString(i8* %92, i8* %93, i32* @av_app, %struct.TYPE_17__* %96)
  store i8* %97, i8** %9, align 8
  %98 = load i8*, i8** %9, align 8
  %99 = icmp ne i8* %98, null
  br i1 %99, label %102, label %100

100:                                              ; preds = %62
  %101 = load i32, i32* @FALSE, align 4
  store i32 %101, i32* %3, align 4
  br label %370

102:                                              ; preds = %62
  %103 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %104 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %103, i32 0, i32 3
  %105 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* @RTMP_FEATURE_WRITE, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %119

110:                                              ; preds = %102
  %111 = load i8*, i8** %9, align 8
  %112 = load i8*, i8** %8, align 8
  %113 = call i8* @AMF_EncodeNamedString(i8* %111, i8* %112, i32* @av_type, %struct.TYPE_17__* @av_nonprivate)
  store i8* %113, i8** %9, align 8
  %114 = load i8*, i8** %9, align 8
  %115 = icmp ne i8* %114, null
  br i1 %115, label %118, label %116

116:                                              ; preds = %110
  %117 = load i32, i32* @FALSE, align 4
  store i32 %117, i32* %3, align 4
  br label %370

118:                                              ; preds = %110
  br label %119

119:                                              ; preds = %118, %102
  %120 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %121 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %120, i32 0, i32 3
  %122 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %121, i32 0, i32 7
  %123 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %138

126:                                              ; preds = %119
  %127 = load i8*, i8** %9, align 8
  %128 = load i8*, i8** %8, align 8
  %129 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %130 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %129, i32 0, i32 3
  %131 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %130, i32 0, i32 7
  %132 = call i8* @AMF_EncodeNamedString(i8* %127, i8* %128, i32* @av_flashVer, %struct.TYPE_17__* %131)
  store i8* %132, i8** %9, align 8
  %133 = load i8*, i8** %9, align 8
  %134 = icmp ne i8* %133, null
  br i1 %134, label %137, label %135

135:                                              ; preds = %126
  %136 = load i32, i32* @FALSE, align 4
  store i32 %136, i32* %3, align 4
  br label %370

137:                                              ; preds = %126
  br label %138

138:                                              ; preds = %137, %119
  %139 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %140 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %139, i32 0, i32 3
  %141 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %140, i32 0, i32 6
  %142 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %157

145:                                              ; preds = %138
  %146 = load i8*, i8** %9, align 8
  %147 = load i8*, i8** %8, align 8
  %148 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %149 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %148, i32 0, i32 3
  %150 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %149, i32 0, i32 6
  %151 = call i8* @AMF_EncodeNamedString(i8* %146, i8* %147, i32* @av_swfUrl, %struct.TYPE_17__* %150)
  store i8* %151, i8** %9, align 8
  %152 = load i8*, i8** %9, align 8
  %153 = icmp ne i8* %152, null
  br i1 %153, label %156, label %154

154:                                              ; preds = %145
  %155 = load i32, i32* @FALSE, align 4
  store i32 %155, i32* %3, align 4
  br label %370

156:                                              ; preds = %145
  br label %157

157:                                              ; preds = %156, %138
  %158 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %159 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %158, i32 0, i32 3
  %160 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %159, i32 0, i32 5
  %161 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %160, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %176

164:                                              ; preds = %157
  %165 = load i8*, i8** %9, align 8
  %166 = load i8*, i8** %8, align 8
  %167 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %168 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %167, i32 0, i32 3
  %169 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %168, i32 0, i32 5
  %170 = call i8* @AMF_EncodeNamedString(i8* %165, i8* %166, i32* @av_tcUrl, %struct.TYPE_17__* %169)
  store i8* %170, i8** %9, align 8
  %171 = load i8*, i8** %9, align 8
  %172 = icmp ne i8* %171, null
  br i1 %172, label %175, label %173

173:                                              ; preds = %164
  %174 = load i32, i32* @FALSE, align 4
  store i32 %174, i32* %3, align 4
  br label %370

175:                                              ; preds = %164
  br label %176

176:                                              ; preds = %175, %157
  %177 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %178 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %177, i32 0, i32 3
  %179 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  %181 = load i32, i32* @RTMP_FEATURE_WRITE, align 4
  %182 = and i32 %180, %181
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %251, label %184

184:                                              ; preds = %176
  %185 = load i8*, i8** %9, align 8
  %186 = load i8*, i8** %8, align 8
  %187 = load i32, i32* @FALSE, align 4
  %188 = call i8* @AMF_EncodeNamedBoolean(i8* %185, i8* %186, i32* @av_fpad, i32 %187)
  store i8* %188, i8** %9, align 8
  %189 = load i8*, i8** %9, align 8
  %190 = icmp ne i8* %189, null
  br i1 %190, label %193, label %191

191:                                              ; preds = %184
  %192 = load i32, i32* @FALSE, align 4
  store i32 %192, i32* %3, align 4
  br label %370

193:                                              ; preds = %184
  %194 = load i8*, i8** %9, align 8
  %195 = load i8*, i8** %8, align 8
  %196 = call i8* @AMF_EncodeNamedNumber(i8* %194, i8* %195, i32* @av_capabilities, double 1.500000e+01)
  store i8* %196, i8** %9, align 8
  %197 = load i8*, i8** %9, align 8
  %198 = icmp ne i8* %197, null
  br i1 %198, label %201, label %199

199:                                              ; preds = %193
  %200 = load i32, i32* @FALSE, align 4
  store i32 %200, i32* %3, align 4
  br label %370

201:                                              ; preds = %193
  %202 = load i8*, i8** %9, align 8
  %203 = load i8*, i8** %8, align 8
  %204 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %205 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %204, i32 0, i32 0
  %206 = load double, double* %205, align 8
  %207 = call i8* @AMF_EncodeNamedNumber(i8* %202, i8* %203, i32* @av_audioCodecs, double %206)
  store i8* %207, i8** %9, align 8
  %208 = load i8*, i8** %9, align 8
  %209 = icmp ne i8* %208, null
  br i1 %209, label %212, label %210

210:                                              ; preds = %201
  %211 = load i32, i32* @FALSE, align 4
  store i32 %211, i32* %3, align 4
  br label %370

212:                                              ; preds = %201
  %213 = load i8*, i8** %9, align 8
  %214 = load i8*, i8** %8, align 8
  %215 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %216 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %215, i32 0, i32 1
  %217 = load double, double* %216, align 8
  %218 = call i8* @AMF_EncodeNamedNumber(i8* %213, i8* %214, i32* @av_videoCodecs, double %217)
  store i8* %218, i8** %9, align 8
  %219 = load i8*, i8** %9, align 8
  %220 = icmp ne i8* %219, null
  br i1 %220, label %223, label %221

221:                                              ; preds = %212
  %222 = load i32, i32* @FALSE, align 4
  store i32 %222, i32* %3, align 4
  br label %370

223:                                              ; preds = %212
  %224 = load i8*, i8** %9, align 8
  %225 = load i8*, i8** %8, align 8
  %226 = call i8* @AMF_EncodeNamedNumber(i8* %224, i8* %225, i32* @av_videoFunction, double 1.000000e+00)
  store i8* %226, i8** %9, align 8
  %227 = load i8*, i8** %9, align 8
  %228 = icmp ne i8* %227, null
  br i1 %228, label %231, label %229

229:                                              ; preds = %223
  %230 = load i32, i32* @FALSE, align 4
  store i32 %230, i32* %3, align 4
  br label %370

231:                                              ; preds = %223
  %232 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %233 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %232, i32 0, i32 3
  %234 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %233, i32 0, i32 4
  %235 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %234, i32 0, i32 0
  %236 = load i64, i64* %235, align 8
  %237 = icmp ne i64 %236, 0
  br i1 %237, label %238, label %250

238:                                              ; preds = %231
  %239 = load i8*, i8** %9, align 8
  %240 = load i8*, i8** %8, align 8
  %241 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %242 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %241, i32 0, i32 3
  %243 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %242, i32 0, i32 4
  %244 = call i8* @AMF_EncodeNamedString(i8* %239, i8* %240, i32* @av_pageUrl, %struct.TYPE_17__* %243)
  store i8* %244, i8** %9, align 8
  %245 = load i8*, i8** %9, align 8
  %246 = icmp ne i8* %245, null
  br i1 %246, label %249, label %247

247:                                              ; preds = %238
  %248 = load i32, i32* @FALSE, align 4
  store i32 %248, i32* %3, align 4
  br label %370

249:                                              ; preds = %238
  br label %250

250:                                              ; preds = %249, %231
  br label %251

251:                                              ; preds = %250, %176
  %252 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %253 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %252, i32 0, i32 2
  %254 = load double, double* %253, align 8
  %255 = fcmp une double %254, 0.000000e+00
  br i1 %255, label %261, label %256

256:                                              ; preds = %251
  %257 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %258 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %257, i32 0, i32 4
  %259 = load i64, i64* %258, align 8
  %260 = icmp ne i64 %259, 0
  br i1 %260, label %261, label %273

261:                                              ; preds = %256, %251
  %262 = load i8*, i8** %9, align 8
  %263 = load i8*, i8** %8, align 8
  %264 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %265 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %264, i32 0, i32 2
  %266 = load double, double* %265, align 8
  %267 = call i8* @AMF_EncodeNamedNumber(i8* %262, i8* %263, i32* @av_objectEncoding, double %266)
  store i8* %267, i8** %9, align 8
  %268 = load i8*, i8** %9, align 8
  %269 = icmp ne i8* %268, null
  br i1 %269, label %272, label %270

270:                                              ; preds = %261
  %271 = load i32, i32* @FALSE, align 4
  store i32 %271, i32* %3, align 4
  br label %370

272:                                              ; preds = %261
  br label %273

273:                                              ; preds = %272, %256
  %274 = load i8*, i8** %9, align 8
  %275 = getelementptr inbounds i8, i8* %274, i64 3
  %276 = load i8*, i8** %8, align 8
  %277 = icmp uge i8* %275, %276
  br i1 %277, label %278, label %280

278:                                              ; preds = %273
  %279 = load i32, i32* @FALSE, align 4
  store i32 %279, i32* %3, align 4
  br label %370

280:                                              ; preds = %273
  %281 = load i8*, i8** %9, align 8
  %282 = getelementptr inbounds i8, i8* %281, i32 1
  store i8* %282, i8** %9, align 8
  store i8 0, i8* %281, align 1
  %283 = load i8*, i8** %9, align 8
  %284 = getelementptr inbounds i8, i8* %283, i32 1
  store i8* %284, i8** %9, align 8
  store i8 0, i8* %283, align 1
  %285 = load i32, i32* @AMF_OBJECT_END, align 4
  %286 = trunc i32 %285 to i8
  %287 = load i8*, i8** %9, align 8
  %288 = getelementptr inbounds i8, i8* %287, i32 1
  store i8* %288, i8** %9, align 8
  store i8 %286, i8* %287, align 1
  %289 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %290 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %289, i32 0, i32 3
  %291 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %290, i32 0, i32 3
  %292 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %291, i32 0, i32 0
  %293 = load i64, i64* %292, align 8
  %294 = icmp ne i64 %293, 0
  br i1 %294, label %295, label %321

295:                                              ; preds = %280
  %296 = load i8*, i8** %9, align 8
  %297 = load i8*, i8** %8, align 8
  %298 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %299 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %298, i32 0, i32 3
  %300 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %299, i32 0, i32 1
  %301 = load i32, i32* %300, align 4
  %302 = load i32, i32* @RTMP_LF_AUTH, align 4
  %303 = and i32 %301, %302
  %304 = call i8* @AMF_EncodeBoolean(i8* %296, i8* %297, i32 %303)
  store i8* %304, i8** %9, align 8
  %305 = load i8*, i8** %9, align 8
  %306 = icmp ne i8* %305, null
  br i1 %306, label %309, label %307

307:                                              ; preds = %295
  %308 = load i32, i32* @FALSE, align 4
  store i32 %308, i32* %3, align 4
  br label %370

309:                                              ; preds = %295
  %310 = load i8*, i8** %9, align 8
  %311 = load i8*, i8** %8, align 8
  %312 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %313 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %312, i32 0, i32 3
  %314 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %313, i32 0, i32 3
  %315 = call i8* @AMF_EncodeString(i8* %310, i8* %311, %struct.TYPE_18__* %314)
  store i8* %315, i8** %9, align 8
  %316 = load i8*, i8** %9, align 8
  %317 = icmp ne i8* %316, null
  br i1 %317, label %320, label %318

318:                                              ; preds = %309
  %319 = load i32, i32* @FALSE, align 4
  store i32 %319, i32* %3, align 4
  br label %370

320:                                              ; preds = %309
  br label %321

321:                                              ; preds = %320, %280
  %322 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %323 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %322, i32 0, i32 3
  %324 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %323, i32 0, i32 2
  %325 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %324, i32 0, i32 0
  %326 = load i32, i32* %325, align 8
  %327 = icmp ne i32 %326, 0
  br i1 %327, label %328, label %358

328:                                              ; preds = %321
  store i32 0, i32* %10, align 4
  br label %329

329:                                              ; preds = %354, %328
  %330 = load i32, i32* %10, align 4
  %331 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %332 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %331, i32 0, i32 3
  %333 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %332, i32 0, i32 2
  %334 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %333, i32 0, i32 0
  %335 = load i32, i32* %334, align 8
  %336 = icmp slt i32 %330, %335
  br i1 %336, label %337, label %357

337:                                              ; preds = %329
  %338 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %339 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %338, i32 0, i32 3
  %340 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %339, i32 0, i32 2
  %341 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %340, i32 0, i32 1
  %342 = load i32*, i32** %341, align 8
  %343 = load i32, i32* %10, align 4
  %344 = sext i32 %343 to i64
  %345 = getelementptr inbounds i32, i32* %342, i64 %344
  %346 = load i8*, i8** %9, align 8
  %347 = load i8*, i8** %8, align 8
  %348 = call i8* @AMFProp_Encode(i32* %345, i8* %346, i8* %347)
  store i8* %348, i8** %9, align 8
  %349 = load i8*, i8** %9, align 8
  %350 = icmp ne i8* %349, null
  br i1 %350, label %353, label %351

351:                                              ; preds = %337
  %352 = load i32, i32* @FALSE, align 4
  store i32 %352, i32* %3, align 4
  br label %370

353:                                              ; preds = %337
  br label %354

354:                                              ; preds = %353
  %355 = load i32, i32* %10, align 4
  %356 = add nsw i32 %355, 1
  store i32 %356, i32* %10, align 4
  br label %329

357:                                              ; preds = %329
  br label %358

358:                                              ; preds = %357, %321
  %359 = load i8*, i8** %9, align 8
  %360 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %6, i32 0, i32 1
  %361 = load i8*, i8** %360, align 8
  %362 = ptrtoint i8* %359 to i64
  %363 = ptrtoint i8* %361 to i64
  %364 = sub i64 %362, %363
  %365 = trunc i64 %364 to i32
  %366 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %6, i32 0, i32 2
  store i32 %365, i32* %366, align 8
  %367 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %368 = load i32, i32* @TRUE, align 4
  %369 = call i32 @RTMP_SendPacket(%struct.TYPE_16__* %367, %struct.TYPE_15__* %6, i32 %368)
  store i32 %369, i32* %3, align 4
  br label %370

370:                                              ; preds = %358, %351, %318, %307, %278, %270, %247, %229, %221, %210, %199, %191, %173, %154, %135, %116, %100, %60, %15
  %371 = load i32, i32* %3, align 4
  ret i32 %371
}

declare dso_local i32 @RTMP_SendPacket(%struct.TYPE_16__*, %struct.TYPE_15__*, i32) #1

declare dso_local i32 @AMF_EncodeInt32(i8*, i8*, i32) #1

declare dso_local i8* @AMF_EncodeString(i8*, i8*, %struct.TYPE_18__*) #1

declare dso_local i8* @AMF_EncodeNumber(i8*, i8*, i32) #1

declare dso_local i8* @AMF_EncodeNamedString(i8*, i8*, i32*, %struct.TYPE_17__*) #1

declare dso_local i8* @AMF_EncodeNamedBoolean(i8*, i8*, i32*, i32) #1

declare dso_local i8* @AMF_EncodeNamedNumber(i8*, i8*, i32*, double) #1

declare dso_local i8* @AMF_EncodeBoolean(i8*, i8*, i32) #1

declare dso_local i8* @AMFProp_Encode(i32*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
