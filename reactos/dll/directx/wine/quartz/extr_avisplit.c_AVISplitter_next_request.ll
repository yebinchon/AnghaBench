; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/quartz/extr_avisplit.c_AVISplitter_next_request.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/quartz/extr_avisplit.c_AVISplitter_next_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, %struct.TYPE_12__*, %struct.TYPE_10__, %struct.TYPE_13__* }
%struct.TYPE_12__ = type { i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32, i32, i32, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_13__ = type { i64, i64, i64, i64, i64, i32, i32*, %struct.TYPE_17__**, i64, i32 }
%struct.TYPE_17__ = type { i64, i64, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32, i64 }

@.str = private unnamed_addr constant [14 x i8] c"(%p, %u)->()\0A\00", align 1
@S_OK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"... %08x?\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"END OF STREAM ON %u\0A\00", align 1
@S_FALSE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"offset(%u) size(%u)\0A\00", align 1
@AVIIF_MIDPART = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [58 x i8] c"Only stand alone frames are currently handled correctly!\0A\00", align 1
@AVIIF_LIST = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [39 x i8] c"Not sure if this is handled correctly\0A\00", align 1
@.str.6 = private unnamed_addr constant [45 x i8] c"CAN'T PLAY WITHOUT AN INDEX! SOS! SOS! SOS!\0A\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"There should be no sample!\0A\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"--> %08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_15__*, i32)* @AVISplitter_next_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @AVISplitter_next_request(%struct.TYPE_15__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_17__*, align 8
  %14 = alloca %struct.TYPE_16__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %4, align 8
  store i32 %1, i32* %5, align 4
  %17 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %17, i32 0, i32 3
  %19 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %20 = load i32, i32* %5, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i64 %21
  store %struct.TYPE_13__* %22, %struct.TYPE_13__** %6, align 8
  %23 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_14__*, %struct.TYPE_14__** %25, align 8
  store %struct.TYPE_14__* %26, %struct.TYPE_14__** %7, align 8
  store i32* null, i32** %8, align 8
  %27 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %28 = load i32, i32* %5, align 4
  %29 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), %struct.TYPE_15__* %27, i32 %28)
  %30 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @IMemAllocator_GetBuffer(i32 %32, i32** %8, i32* null, i32* null, i32 0)
  store i32 %33, i32* %9, align 4
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* @S_OK, align 4
  %36 = icmp ne i32 %34, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %2
  %38 = load i32, i32* %9, align 4
  %39 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %38)
  br label %40

40:                                               ; preds = %37, %2
  %41 = load i32, i32* %9, align 4
  %42 = call i64 @SUCCEEDED(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %344

44:                                               ; preds = %40
  %45 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %48, i32 0, i32 0
  store i64 %47, i64* %49, align 8
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %50, i32 0, i32 3
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %53, i32 0, i32 2
  store i64 %52, i64* %54, align 8
  %55 = load i32*, i32** %8, align 8
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %56, i32 0, i32 9
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @IMediaSample_SetDiscontinuity(i32* %55, i32 %58)
  %60 = load i32, i32* @FALSE, align 4
  %61 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %61, i32 0, i32 9
  store i32 %60, i32* %62, align 8
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %63, i32 0, i32 8
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %75

67:                                               ; preds = %44
  %68 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %68, i32 0, i32 8
  %70 = load i64, i64* %69, align 8
  %71 = add nsw i64 %70, -1
  store i64 %71, i64* %69, align 8
  %72 = load i32*, i32** %8, align 8
  %73 = load i32, i32* @TRUE, align 4
  %74 = call i32 @IMediaSample_SetPreroll(i32* %72, i32 %73)
  br label %79

75:                                               ; preds = %44
  %76 = load i32*, i32** %8, align 8
  %77 = load i32, i32* @FALSE, align 4
  %78 = call i32 @IMediaSample_SetPreroll(i32* %76, i32 %77)
  br label %79

79:                                               ; preds = %75, %67
  %80 = load i32*, i32** %8, align 8
  %81 = load i32, i32* @TRUE, align 4
  %82 = call i32 @IMediaSample_SetSyncPoint(i32* %80, i32 %81)
  %83 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %83, i32 0, i32 7
  %85 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %84, align 8
  %86 = icmp ne %struct.TYPE_17__** %85, null
  br i1 %86, label %87, label %163

87:                                               ; preds = %79
  %88 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %89 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %88, i32 0, i32 7
  %90 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %89, align 8
  %91 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %92 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %91, i32 0, i32 2
  %93 = load i64, i64* %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %90, i64 %93
  %95 = load %struct.TYPE_17__*, %struct.TYPE_17__** %94, align 8
  store %struct.TYPE_17__* %95, %struct.TYPE_17__** %13, align 8
  %96 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %97 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %96, i32 0, i32 2
  %98 = load %struct.TYPE_16__*, %struct.TYPE_16__** %97, align 8
  %99 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %100 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %98, i64 %101
  store %struct.TYPE_16__* %102, %struct.TYPE_16__** %14, align 8
  %103 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %104 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %103, i32 0, i32 2
  %105 = load i64, i64* %104, align 8
  %106 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %107 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %106, i32 0, i32 4
  %108 = load i64, i64* %107, align 8
  %109 = icmp uge i64 %105, %108
  br i1 %109, label %110, label %116

110:                                              ; preds = %87
  %111 = load i32, i32* %5, align 4
  %112 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %111)
  %113 = load i32*, i32** %8, align 8
  %114 = call i64 @IMediaSample_Release(i32* %113)
  %115 = load i32, i32* @S_FALSE, align 4
  store i32 %115, i32* %3, align 4
  br label %360

116:                                              ; preds = %87
  %117 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %118 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  store i64 %119, i64* %11, align 8
  %120 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %121 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %120, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = load i64, i64* %11, align 8
  %124 = add nsw i64 %123, %122
  store i64 %124, i64* %11, align 8
  %125 = load i64, i64* %11, align 8
  %126 = trunc i64 %125 to i32
  %127 = call i64 @MEDIATIME_FROM_BYTES(i32 %126)
  store i64 %127, i64* %11, align 8
  %128 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %129 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %128, i32 0, i32 1
  %130 = load i64, i64* %129, align 8
  %131 = add i64 %130, 1
  store i64 %131, i64* %129, align 8
  %132 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %133 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %132, i32 0, i32 1
  %134 = load i64, i64* %133, align 8
  %135 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %136 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %135, i32 0, i32 1
  %137 = load i64, i64* %136, align 8
  %138 = icmp eq i64 %134, %137
  br i1 %138, label %139, label %146

139:                                              ; preds = %116
  %140 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %141 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %140, i32 0, i32 1
  store i64 0, i64* %141, align 8
  %142 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %143 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %142, i32 0, i32 3
  %144 = load i64, i64* %143, align 8
  %145 = add i64 %144, 1
  store i64 %145, i64* %143, align 8
  br label %146

146:                                              ; preds = %139, %116
  %147 = load i64, i64* %11, align 8
  %148 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %149 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = and i32 %150, 2147483647
  %152 = call i64 @MEDIATIME_FROM_BYTES(i32 %151)
  %153 = add nsw i64 %147, %152
  store i64 %153, i64* %12, align 8
  %154 = load i64, i64* %11, align 8
  %155 = call i64 @BYTES_FROM_MEDIATIME(i64 %154)
  %156 = trunc i64 %155 to i32
  %157 = load i64, i64* %12, align 8
  %158 = load i64, i64* %11, align 8
  %159 = sub nsw i64 %157, %158
  %160 = call i64 @BYTES_FROM_MEDIATIME(i64 %159)
  %161 = trunc i64 %160 to i32
  %162 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 %156, i32 %161)
  br label %309

163:                                              ; preds = %79
  %164 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %165 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %164, i32 0, i32 1
  %166 = load %struct.TYPE_12__*, %struct.TYPE_12__** %165, align 8
  %167 = icmp ne %struct.TYPE_12__* %166, null
  br i1 %167, label %168, label %305

168:                                              ; preds = %163
  %169 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %170 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %169, i32 0, i32 1
  %171 = load %struct.TYPE_12__*, %struct.TYPE_12__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %171, i32 0, i32 1
  %173 = load %struct.TYPE_11__*, %struct.TYPE_11__** %172, align 8
  %174 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %175 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %174, i32 0, i32 0
  %176 = load i64, i64* %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %173, i64 %176
  %178 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 4
  store i32 %179, i32* %15, align 4
  %180 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %181 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %180, i32 0, i32 1
  %182 = load %struct.TYPE_12__*, %struct.TYPE_12__** %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %182, i32 0, i32 1
  %184 = load %struct.TYPE_11__*, %struct.TYPE_11__** %183, align 8
  %185 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %186 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %185, i32 0, i32 0
  %187 = load i64, i64* %186, align 8
  %188 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %184, i64 %187
  %189 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %188, i32 0, i32 1
  %190 = load i32, i32* %189, align 4
  store i32 %190, i32* %16, align 4
  %191 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %192 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %191, i32 0, i32 2
  %193 = load i64, i64* %192, align 8
  %194 = icmp ne i64 %193, 0
  br i1 %194, label %195, label %201

195:                                              ; preds = %168
  %196 = load i32, i32* %5, align 4
  %197 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %196)
  %198 = load i32*, i32** %8, align 8
  %199 = call i64 @IMediaSample_Release(i32* %198)
  %200 = load i32, i32* @S_FALSE, align 4
  store i32 %200, i32* %3, align 4
  br label %360

201:                                              ; preds = %168
  %202 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %203 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 8
  %205 = call i64 @MEDIATIME_FROM_BYTES(i32 %204)
  store i64 %205, i64* %11, align 8
  %206 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %207 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %206, i32 0, i32 1
  %208 = load %struct.TYPE_12__*, %struct.TYPE_12__** %207, align 8
  %209 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %208, i32 0, i32 1
  %210 = load %struct.TYPE_11__*, %struct.TYPE_11__** %209, align 8
  %211 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %212 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %211, i32 0, i32 0
  %213 = load i64, i64* %212, align 8
  %214 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %210, i64 %213
  %215 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %214, i32 0, i32 2
  %216 = load i32, i32* %215, align 4
  %217 = call i64 @MEDIATIME_FROM_BYTES(i32 %216)
  %218 = load i64, i64* %11, align 8
  %219 = add nsw i64 %218, %217
  store i64 %219, i64* %11, align 8
  %220 = load i64, i64* %11, align 8
  %221 = load i32, i32* %16, align 4
  %222 = call i64 @MEDIATIME_FROM_BYTES(i32 %221)
  %223 = add nsw i64 %220, %222
  store i64 %223, i64* %12, align 8
  %224 = load i32, i32* %15, align 4
  %225 = load i32, i32* @AVIIF_MIDPART, align 4
  %226 = and i32 %224, %225
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %228, label %230

228:                                              ; preds = %201
  %229 = call i32 @FIXME(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.4, i64 0, i64 0))
  br label %230

230:                                              ; preds = %228, %201
  %231 = load i32, i32* %15, align 4
  %232 = load i32, i32* @AVIIF_LIST, align 4
  %233 = and i32 %231, %232
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %235, label %243

235:                                              ; preds = %230
  %236 = call i32 @FIXME(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0))
  %237 = call i64 @MEDIATIME_FROM_BYTES(i32 4)
  %238 = load i64, i64* %11, align 8
  %239 = add nsw i64 %238, %237
  store i64 %239, i64* %11, align 8
  %240 = call i64 @MEDIATIME_FROM_BYTES(i32 4)
  %241 = load i64, i64* %12, align 8
  %242 = add nsw i64 %241, %240
  store i64 %242, i64* %12, align 8
  br label %250

243:                                              ; preds = %230
  %244 = call i64 @MEDIATIME_FROM_BYTES(i32 4)
  %245 = load i64, i64* %11, align 8
  %246 = add nsw i64 %245, %244
  store i64 %246, i64* %11, align 8
  %247 = call i64 @MEDIATIME_FROM_BYTES(i32 4)
  %248 = load i64, i64* %12, align 8
  %249 = add nsw i64 %248, %247
  store i64 %249, i64* %12, align 8
  br label %250

250:                                              ; preds = %243, %235
  br label %251

251:                                              ; preds = %283, %250
  %252 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %253 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %252, i32 0, i32 1
  %254 = load i64, i64* %253, align 8
  %255 = add i64 %254, 1
  store i64 %255, i64* %253, align 8
  br label %256

256:                                              ; preds = %251
  %257 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %258 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %257, i32 0, i32 1
  %259 = load i64, i64* %258, align 8
  %260 = mul i64 %259, 16
  %261 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %262 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %261, i32 0, i32 1
  %263 = load %struct.TYPE_12__*, %struct.TYPE_12__** %262, align 8
  %264 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %263, i32 0, i32 0
  %265 = load i32, i32* %264, align 8
  %266 = sext i32 %265 to i64
  %267 = icmp ult i64 %260, %266
  br i1 %267, label %268, label %283

268:                                              ; preds = %256
  %269 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %270 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %269, i32 0, i32 1
  %271 = load %struct.TYPE_12__*, %struct.TYPE_12__** %270, align 8
  %272 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %271, i32 0, i32 1
  %273 = load %struct.TYPE_11__*, %struct.TYPE_11__** %272, align 8
  %274 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %275 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %274, i32 0, i32 1
  %276 = load i64, i64* %275, align 8
  %277 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %273, i64 %276
  %278 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %277, i32 0, i32 3
  %279 = load i32, i32* %278, align 4
  %280 = call i32 @StreamFromFOURCC(i32 %279)
  %281 = load i32, i32* %5, align 4
  %282 = icmp ne i32 %280, %281
  br label %283

283:                                              ; preds = %268, %256
  %284 = phi i1 [ false, %256 ], [ %282, %268 ]
  br i1 %284, label %251, label %285

285:                                              ; preds = %283
  %286 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %287 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %286, i32 0, i32 1
  %288 = load i64, i64* %287, align 8
  %289 = mul i64 %288, 16
  %290 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %291 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %290, i32 0, i32 1
  %292 = load %struct.TYPE_12__*, %struct.TYPE_12__** %291, align 8
  %293 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %292, i32 0, i32 0
  %294 = load i32, i32* %293, align 8
  %295 = sext i32 %294 to i64
  %296 = icmp uge i64 %289, %295
  br i1 %296, label %297, label %304

297:                                              ; preds = %285
  %298 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %299 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %298, i32 0, i32 1
  store i64 0, i64* %299, align 8
  %300 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %301 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %300, i32 0, i32 3
  %302 = load i64, i64* %301, align 8
  %303 = add i64 %302, 1
  store i64 %303, i64* %301, align 8
  br label %304

304:                                              ; preds = %297, %285
  br label %308

305:                                              ; preds = %163
  %306 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.6, i64 0, i64 0))
  %307 = call i32 @assert(i32 0)
  br label %308

308:                                              ; preds = %305, %304
  br label %309

309:                                              ; preds = %308, %146
  %310 = load i64, i64* %11, align 8
  %311 = load i64, i64* %12, align 8
  %312 = icmp ne i64 %310, %311
  br i1 %312, label %313, label %333

313:                                              ; preds = %309
  %314 = load i32*, i32** %8, align 8
  %315 = call i32 @IMediaSample_SetTime(i32* %314, i64* %11, i64* %12)
  %316 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %317 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %316, i32 0, i32 0
  %318 = load i32, i32* %317, align 4
  %319 = load i32*, i32** %8, align 8
  %320 = load i32, i32* %5, align 4
  %321 = call i32 @IAsyncReader_Request(i32 %318, i32* %319, i32 %320)
  store i32 %321, i32* %9, align 4
  %322 = load i32, i32* %9, align 4
  %323 = call i64 @FAILED(i32 %322)
  %324 = icmp ne i64 %323, 0
  br i1 %324, label %325, label %332

325:                                              ; preds = %313
  %326 = load i32*, i32** %8, align 8
  %327 = call i64 @IMediaSample_Release(i32* %326)
  store i64 %327, i64* %10, align 8
  %328 = load i64, i64* %10, align 8
  %329 = icmp eq i64 %328, 0
  %330 = zext i1 %329 to i32
  %331 = call i32 @assert(i32 %330)
  br label %332

332:                                              ; preds = %325, %313
  br label %343

333:                                              ; preds = %309
  %334 = load i32*, i32** %8, align 8
  %335 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %336 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %335, i32 0, i32 6
  store i32* %334, i32** %336, align 8
  %337 = load i32*, i32** %8, align 8
  %338 = call i32 @IMediaSample_SetActualDataLength(i32* %337, i32 0)
  %339 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %340 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %339, i32 0, i32 5
  %341 = load i32, i32* %340, align 8
  %342 = call i32 @SetEvent(i32 %341)
  br label %343

343:                                              ; preds = %333, %332
  br label %356

344:                                              ; preds = %40
  %345 = load i32*, i32** %8, align 8
  %346 = icmp ne i32* %345, null
  br i1 %346, label %347, label %355

347:                                              ; preds = %344
  %348 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0))
  %349 = load i32*, i32** %8, align 8
  %350 = call i64 @IMediaSample_Release(i32* %349)
  store i64 %350, i64* %10, align 8
  %351 = load i64, i64* %10, align 8
  %352 = icmp eq i64 %351, 0
  %353 = zext i1 %352 to i32
  %354 = call i32 @assert(i32 %353)
  br label %355

355:                                              ; preds = %347, %344
  br label %356

356:                                              ; preds = %355, %343
  %357 = load i32, i32* %9, align 4
  %358 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i32 %357)
  %359 = load i32, i32* %9, align 4
  store i32 %359, i32* %3, align 4
  br label %360

360:                                              ; preds = %356, %195, %110
  %361 = load i32, i32* %3, align 4
  ret i32 %361
}

declare dso_local i32 @TRACE(i8*, ...) #1

declare dso_local i32 @IMemAllocator_GetBuffer(i32, i32**, i32*, i32*, i32) #1

declare dso_local i32 @ERR(i8*, ...) #1

declare dso_local i64 @SUCCEEDED(i32) #1

declare dso_local i32 @IMediaSample_SetDiscontinuity(i32*, i32) #1

declare dso_local i32 @IMediaSample_SetPreroll(i32*, i32) #1

declare dso_local i32 @IMediaSample_SetSyncPoint(i32*, i32) #1

declare dso_local i64 @IMediaSample_Release(i32*) #1

declare dso_local i64 @MEDIATIME_FROM_BYTES(i32) #1

declare dso_local i64 @BYTES_FROM_MEDIATIME(i64) #1

declare dso_local i32 @FIXME(i8*) #1

declare dso_local i32 @StreamFromFOURCC(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @IMediaSample_SetTime(i32*, i64*, i64*) #1

declare dso_local i32 @IAsyncReader_Request(i32, i32*, i32) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @IMediaSample_SetActualDataLength(i32*, i32) #1

declare dso_local i32 @SetEvent(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
