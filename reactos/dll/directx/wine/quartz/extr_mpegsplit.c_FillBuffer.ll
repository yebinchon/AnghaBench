; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/quartz/extr_mpegsplit.c_FillBuffer.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/quartz/extr_mpegsplit.c_FillBuffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32, %struct.TYPE_14__, i32* }
%struct.TYPE_14__ = type { %struct.TYPE_13__, %struct.TYPE_12__, %struct.TYPE_16__*, i32* }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { double, i32 }
%struct.TYPE_16__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_17__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32, double, i32 }

@.str = private unnamed_addr constant [19 x i8] c"Source length: %u\0A\00", align 1
@S_OK = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"o_Ox%08x\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"Media time : %u.%03u\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"NewSegment returns %08x\0A\00", align 1
@S_FALSE = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [27 x i8] c"Error sending sample (%x)\0A\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"S_FALSE (%d), holding\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_18__*, i32*)* @FillBuffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @FillBuffer(%struct.TYPE_18__* %0, i32* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_18__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_16__*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %4, align 8
  store i32* %1, i32** %5, align 8
  %21 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %22, i32 0, i32 3
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 1
  %26 = load i32, i32* %25, align 4
  %27 = call %struct.TYPE_17__* @unsafe_impl_Parser_OutputPin_from_IPin(i32 %26)
  store %struct.TYPE_17__* %27, %struct.TYPE_17__** %6, align 8
  store i32 0, i32* %7, align 4
  %28 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %29, i32 0, i32 2
  %31 = load %struct.TYPE_16__*, %struct.TYPE_16__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @BYTES_FROM_MEDIATIME(i32 %33)
  store i32 %34, i32* %8, align 4
  %35 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  store i32 %37, i32* %9, align 4
  store i32* null, i32** %13, align 8
  %38 = load i32*, i32** %5, align 8
  %39 = call i64 @IMediaSample_GetActualDataLength(i32* %38)
  %40 = trunc i64 %39 to i32
  store i32 %40, i32* %14, align 4
  %41 = load i32, i32* %14, align 4
  %42 = sext i32 %41 to i64
  %43 = call i32 (i8*, i64, ...) @TRACE(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i64 %42)
  %44 = load i32*, i32** %5, align 8
  %45 = call i32 @IMediaSample_GetPointer(i32* %44, i32** %13)
  %46 = load i32*, i32** %13, align 8
  %47 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %47, i32 0, i32 0
  %49 = call i64 @parse_header(i32* %46, i32* %7, i32* %48)
  store i64 %49, i64* %12, align 8
  %50 = load i64, i64* %12, align 8
  %51 = load i64, i64* @S_OK, align 8
  %52 = icmp eq i64 %50, %51
  %53 = zext i1 %52 to i32
  %54 = call i32 @assert(i32 %53)
  %55 = load i32*, i32** %5, align 8
  %56 = load i32, i32* %7, align 4
  %57 = call i32 @IMediaSample_SetActualDataLength(i32* %55, i32 %56)
  %58 = load i32, i32* %7, align 4
  %59 = add nsw i32 %58, 4
  %60 = load i32, i32* %14, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %194

62:                                               ; preds = %2
  %63 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %64, i32 0, i32 2
  %66 = load %struct.TYPE_16__*, %struct.TYPE_16__** %65, align 8
  store %struct.TYPE_16__* %66, %struct.TYPE_16__** %15, align 8
  %67 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %68 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @BYTES_FROM_MEDIATIME(i32 %69)
  store i32 %70, i32* %16, align 4
  %71 = load i64, i64* @S_OK, align 8
  store i64 %71, i64* %12, align 8
  %72 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %72, i32 0, i32 2
  %74 = load i32*, i32** %73, align 8
  %75 = load i32*, i32** %13, align 8
  %76 = load i32, i32* %7, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  %79 = call i32 @memcpy(i32* %74, i32* %78, i32 4)
  br label %80

80:                                               ; preds = %101, %62
  %81 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %81, i32 0, i32 2
  %83 = load i32*, i32** %82, align 8
  %84 = call i64 @parse_header(i32* %83, i32* %7, i32* null)
  store i64 %84, i64* %12, align 8
  %85 = call i64 @FAILED(i64 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %112

87:                                               ; preds = %80
  %88 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %88, i32 0, i32 2
  %90 = load i32*, i32** %89, align 8
  %91 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %91, i32 0, i32 2
  %93 = load i32*, i32** %92, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 1
  %95 = call i32 @memmove(i32* %90, i32* %94, i32 3)
  %96 = load i32, i32* %8, align 4
  %97 = add nsw i32 %96, 4
  %98 = load i32, i32* %16, align 4
  %99 = icmp sge i32 %97, %98
  br i1 %99, label %100, label %101

100:                                              ; preds = %87
  br label %112

101:                                              ; preds = %87
  %102 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %103 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %102, i32 0, i32 3
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* %8, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %8, align 4
  %107 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %108 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %107, i32 0, i32 2
  %109 = load i32*, i32** %108, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 3
  %111 = call i32 @IAsyncReader_SyncRead(i32 %104, i32 %106, i32 1, i32* %110)
  br label %80

112:                                              ; preds = %100, %80
  %113 = load i32, i32* %8, align 4
  %114 = call i32 @MEDIATIME_FROM_BYTES(i32 %113)
  %115 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %116 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %115, i32 0, i32 0
  store i32 %114, i32* %116, align 4
  %117 = load i64, i64* %12, align 8
  %118 = call i64 @SUCCEEDED(i64 %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %193

120:                                              ; preds = %112
  store i32* null, i32** %17, align 8
  %121 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %122 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @MEDIATIME_FROM_BYTES(i32 4)
  %125 = sub nsw i32 %123, %124
  store i32 %125, i32* %18, align 4
  %126 = load i32, i32* %18, align 4
  %127 = load i32, i32* %7, align 4
  %128 = add nsw i32 %127, 4
  %129 = call i32 @MEDIATIME_FROM_BYTES(i32 %128)
  %130 = add nsw i32 %126, %129
  store i32 %130, i32* %19, align 4
  %131 = load i32, i32* %19, align 4
  %132 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %133 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = icmp sgt i32 %131, %134
  br i1 %135, label %136, label %146

136:                                              ; preds = %120
  %137 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %138 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = call i32 @BYTES_FROM_MEDIATIME(i32 %139)
  %141 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %142 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %141, i32 0, i32 5
  %143 = load i32, i32* %142, align 4
  %144 = call i32 @ALIGNUP(i32 %140, i32 %143)
  %145 = call i32 @MEDIATIME_FROM_BYTES(i32 %144)
  store i32 %145, i32* %19, align 4
  br label %146

146:                                              ; preds = %136, %120
  %147 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %148 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %147, i32 0, i32 4
  %149 = load i32, i32* %148, align 4
  %150 = call i64 @IMemAllocator_GetBuffer(i32 %149, i32** %17, i32* null, i32* null, i32 0)
  store i64 %150, i64* %12, align 8
  %151 = load i64, i64* %12, align 8
  %152 = call i64 @SUCCEEDED(i64 %151)
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %185

154:                                              ; preds = %146
  %155 = load i32*, i32** %17, align 8
  %156 = call i32 @IMediaSample_SetTime(i32* %155, i32* %18, i32* %19)
  %157 = load i32*, i32** %17, align 8
  %158 = load i32, i32* @FALSE, align 4
  %159 = call i32 @IMediaSample_SetPreroll(i32* %157, i32 %158)
  %160 = load i32*, i32** %17, align 8
  %161 = load i32, i32* @FALSE, align 4
  %162 = call i32 @IMediaSample_SetDiscontinuity(i32* %160, i32 %161)
  %163 = load i32*, i32** %17, align 8
  %164 = load i32, i32* @TRUE, align 4
  %165 = call i32 @IMediaSample_SetSyncPoint(i32* %163, i32 %164)
  %166 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %167 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %166, i32 0, i32 3
  %168 = load i32, i32* %167, align 4
  %169 = load i32*, i32** %17, align 8
  %170 = call i64 @IAsyncReader_Request(i32 %168, i32* %169, i32 0)
  store i64 %170, i64* %12, align 8
  %171 = load i64, i64* %12, align 8
  %172 = call i64 @SUCCEEDED(i64 %171)
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %181

174:                                              ; preds = %154
  %175 = load i32, i32* %18, align 4
  %176 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %177 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %176, i32 0, i32 2
  store i32 %175, i32* %177, align 4
  %178 = load i32, i32* %19, align 4
  %179 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %180 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %179, i32 0, i32 0
  store i32 %178, i32* %180, align 4
  br label %184

181:                                              ; preds = %154
  %182 = load i32*, i32** %17, align 8
  %183 = call i32 @IMediaSample_Release(i32* %182)
  br label %184

184:                                              ; preds = %181, %174
  br label %185

185:                                              ; preds = %184, %146
  %186 = load i64, i64* %12, align 8
  %187 = call i64 @FAILED(i64 %186)
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %189, label %192

189:                                              ; preds = %185
  %190 = load i64, i64* %12, align 8
  %191 = call i32 @FIXME(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i64 %190)
  br label %192

192:                                              ; preds = %189, %185
  br label %193

193:                                              ; preds = %192, %112
  br label %194

194:                                              ; preds = %193, %2
  %195 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %196 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 8
  %198 = sdiv i32 %197, 10000000
  %199 = sext i32 %198 to i64
  %200 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %201 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 8
  %203 = sdiv i32 %202, 10000
  %204 = srem i32 %203, 1000
  %205 = call i32 (i8*, i64, ...) @TRACE(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i64 %199, i32 %204)
  %206 = load i32*, i32** %5, align 8
  %207 = call i64 @IMediaSample_IsDiscontinuity(i32* %206)
  %208 = load i64, i64* @S_OK, align 8
  %209 = icmp eq i64 %207, %208
  br i1 %209, label %210, label %273

210:                                              ; preds = %194
  %211 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %212 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %211, i32 0, i32 1
  %213 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %212, i32 0, i32 0
  %214 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %213, i32 0, i32 0
  %215 = call i32 @EnterCriticalSection(i32* %214)
  %216 = load i32, i32* %9, align 4
  %217 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %218 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %217, i32 0, i32 0
  %219 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %218, i32 0, i32 0
  %220 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %219, i32 0, i32 0
  store i32 %216, i32* %220, align 8
  %221 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %222 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %221, i32 0, i32 1
  %223 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %222, i32 0, i32 1
  %224 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %223, i32 0, i32 0
  %225 = load double, double* %224, align 8
  %226 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %227 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %226, i32 0, i32 0
  %228 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %227, i32 0, i32 0
  %229 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %228, i32 0, i32 1
  store double %225, double* %229, align 8
  %230 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %231 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %230, i32 0, i32 0
  %232 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %231, i32 0, i32 0
  %233 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %232, i32 0, i32 2
  %234 = call i64 @IPin_ConnectedTo(i32* %233, i32** %20)
  store i64 %234, i64* %12, align 8
  %235 = load i64, i64* %12, align 8
  %236 = load i64, i64* @S_OK, align 8
  %237 = icmp eq i64 %235, %236
  br i1 %237, label %238, label %261

238:                                              ; preds = %210
  %239 = load i32*, i32** %20, align 8
  %240 = load i32, i32* %9, align 4
  %241 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %242 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %241, i32 0, i32 1
  %243 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %242, i32 0, i32 1
  %244 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %243, i32 0, i32 1
  %245 = load i32, i32* %244, align 8
  %246 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %247 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %246, i32 0, i32 1
  %248 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %247, i32 0, i32 1
  %249 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %248, i32 0, i32 0
  %250 = load double, double* %249, align 8
  %251 = call i64 @IPin_NewSegment(i32* %239, i32 %240, i32 %245, double %250)
  store i64 %251, i64* %12, align 8
  %252 = load i64, i64* %12, align 8
  %253 = load i64, i64* @S_OK, align 8
  %254 = icmp ne i64 %252, %253
  br i1 %254, label %255, label %258

255:                                              ; preds = %238
  %256 = load i64, i64* %12, align 8
  %257 = call i32 @FIXME(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i64 %256)
  br label %258

258:                                              ; preds = %255, %238
  %259 = load i32*, i32** %20, align 8
  %260 = call i32 @IPin_Release(i32* %259)
  br label %261

261:                                              ; preds = %258, %210
  %262 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %263 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %262, i32 0, i32 1
  %264 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %263, i32 0, i32 0
  %265 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %264, i32 0, i32 0
  %266 = call i32 @LeaveCriticalSection(i32* %265)
  %267 = load i64, i64* %12, align 8
  %268 = load i64, i64* @S_OK, align 8
  %269 = icmp ne i64 %267, %268
  br i1 %269, label %270, label %272

270:                                              ; preds = %261
  %271 = load i64, i64* %12, align 8
  store i64 %271, i64* %3, align 8
  br label %333

272:                                              ; preds = %261
  br label %273

273:                                              ; preds = %272, %194
  %274 = load i32, i32* %9, align 4
  %275 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %276 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %275, i32 0, i32 0
  %277 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %276, i32 0, i32 0
  %278 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %277, i32 0, i32 0
  %279 = load i32, i32* %278, align 8
  %280 = sub nsw i32 %274, %279
  %281 = sitofp i32 %280 to double
  %282 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %283 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %282, i32 0, i32 0
  %284 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %283, i32 0, i32 0
  %285 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %284, i32 0, i32 1
  %286 = load double, double* %285, align 8
  %287 = fdiv double %281, %286
  %288 = fptosi double %287 to i32
  store i32 %288, i32* %11, align 4
  %289 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %290 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %289, i32 0, i32 0
  %291 = load i32, i32* %290, align 8
  %292 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %293 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %292, i32 0, i32 0
  %294 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %293, i32 0, i32 0
  %295 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %294, i32 0, i32 0
  %296 = load i32, i32* %295, align 8
  %297 = sub nsw i32 %291, %296
  %298 = sitofp i32 %297 to double
  %299 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %300 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %299, i32 0, i32 0
  %301 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %300, i32 0, i32 0
  %302 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %301, i32 0, i32 1
  %303 = load double, double* %302, align 8
  %304 = fdiv double %298, %303
  %305 = fptosi double %304 to i32
  store i32 %305, i32* %10, align 4
  %306 = load i32*, i32** %5, align 8
  %307 = call i32 @IMediaSample_SetTime(i32* %306, i32* %11, i32* %10)
  %308 = load i32*, i32** %5, align 8
  %309 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %310 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %309, i32 0, i32 0
  %311 = call i32 @IMediaSample_SetMediaTime(i32* %308, i32* %9, i32* %310)
  %312 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %313 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %312, i32 0, i32 0
  %314 = load i32*, i32** %5, align 8
  %315 = call i64 @BaseOutputPinImpl_Deliver(%struct.TYPE_11__* %313, i32* %314)
  store i64 %315, i64* %12, align 8
  %316 = load i64, i64* %12, align 8
  %317 = load i64, i64* @S_OK, align 8
  %318 = icmp ne i64 %316, %317
  br i1 %318, label %319, label %331

319:                                              ; preds = %273
  %320 = load i64, i64* %12, align 8
  %321 = load i64, i64* @S_FALSE, align 8
  %322 = icmp ne i64 %320, %321
  br i1 %322, label %323, label %326

323:                                              ; preds = %319
  %324 = load i64, i64* %12, align 8
  %325 = call i32 (i8*, i64, ...) @TRACE(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i64 %324)
  br label %330

326:                                              ; preds = %319
  %327 = load i32*, i32** %5, align 8
  %328 = call i64 @IMediaSample_GetActualDataLength(i32* %327)
  %329 = call i32 (i8*, i64, ...) @TRACE(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i64 %328)
  br label %330

330:                                              ; preds = %326, %323
  br label %331

331:                                              ; preds = %330, %273
  %332 = load i64, i64* %12, align 8
  store i64 %332, i64* %3, align 8
  br label %333

333:                                              ; preds = %331, %270
  %334 = load i64, i64* %3, align 8
  ret i64 %334
}

declare dso_local %struct.TYPE_17__* @unsafe_impl_Parser_OutputPin_from_IPin(i32) #1

declare dso_local i32 @BYTES_FROM_MEDIATIME(i32) #1

declare dso_local i64 @IMediaSample_GetActualDataLength(i32*) #1

declare dso_local i32 @TRACE(i8*, i64, ...) #1

declare dso_local i32 @IMediaSample_GetPointer(i32*, i32**) #1

declare dso_local i64 @parse_header(i32*, i32*, i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @IMediaSample_SetActualDataLength(i32*, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i64 @FAILED(i64) #1

declare dso_local i32 @memmove(i32*, i32*, i32) #1

declare dso_local i32 @IAsyncReader_SyncRead(i32, i32, i32, i32*) #1

declare dso_local i32 @MEDIATIME_FROM_BYTES(i32) #1

declare dso_local i64 @SUCCEEDED(i64) #1

declare dso_local i32 @ALIGNUP(i32, i32) #1

declare dso_local i64 @IMemAllocator_GetBuffer(i32, i32**, i32*, i32*, i32) #1

declare dso_local i32 @IMediaSample_SetTime(i32*, i32*, i32*) #1

declare dso_local i32 @IMediaSample_SetPreroll(i32*, i32) #1

declare dso_local i32 @IMediaSample_SetDiscontinuity(i32*, i32) #1

declare dso_local i32 @IMediaSample_SetSyncPoint(i32*, i32) #1

declare dso_local i64 @IAsyncReader_Request(i32, i32*, i32) #1

declare dso_local i32 @IMediaSample_Release(i32*) #1

declare dso_local i32 @FIXME(i8*, i64) #1

declare dso_local i64 @IMediaSample_IsDiscontinuity(i32*) #1

declare dso_local i32 @EnterCriticalSection(i32*) #1

declare dso_local i64 @IPin_ConnectedTo(i32*, i32**) #1

declare dso_local i64 @IPin_NewSegment(i32*, i32, i32, double) #1

declare dso_local i32 @IPin_Release(i32*) #1

declare dso_local i32 @LeaveCriticalSection(i32*) #1

declare dso_local i32 @IMediaSample_SetMediaTime(i32*, i32*, i32*) #1

declare dso_local i64 @BaseOutputPinImpl_Deliver(%struct.TYPE_11__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
