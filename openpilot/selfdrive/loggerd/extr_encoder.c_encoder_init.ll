; ModuleID = '/home/carl/AnghaBench/openpilot/selfdrive/loggerd/extr_encoder.c_encoder_init.c'
source_filename = "/home/carl/AnghaBench/openpilot/selfdrive/loggerd/extr_encoder.c_encoder_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i8*, i32, i32, i32, i32, i32, i32, i32, i32, i64*, i32, i64*, i32, i32, i32, i32, i32*, i32, i8*, i8*, i8*, i32 }
%struct.TYPE_21__ = type { i32, i32, i32, %struct.TYPE_17__, i8*, i32 }
%struct.TYPE_17__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_19__ = type { i32, i32, i32, i8*, i32 }
%struct.TYPE_18__ = type { i32, i32, i32, i8*, i32 }
%struct.TYPE_20__ = type { i32, i32, i32, i32, i32, i32, i64, i8*, i32 }

@OMX_StateLoaded = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"OMX.qcom.video.encoder.hevc\00", align 1
@omx_callbacks = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"OMX.qcom.video.encoder.avc\00", align 1
@OMX_ErrorNone = common dso_local global i32 0, align 4
@PORT_INDEX_IN = common dso_local global i64 0, align 8
@OMX_IndexParamPortDefinition = common dso_local global i32 0, align 4
@COLOR_FMT_NV12 = common dso_local global i32 0, align 4
@OMX_VIDEO_CodingUnused = common dso_local global i32 0, align 4
@QOMX_COLOR_FORMATYUV420PackedSemiPlanar32m = common dso_local global i32 0, align 4
@PORT_INDEX_OUT = common dso_local global i64 0, align 8
@OMX_VIDEO_CodingHEVC = common dso_local global i32 0, align 4
@OMX_VIDEO_CodingAVC = common dso_local global i32 0, align 4
@OMX_COLOR_FormatUnused = common dso_local global i32 0, align 4
@OMX_IndexParamVideoBitrate = common dso_local global i32 0, align 4
@OMX_Video_ControlRateVariable = common dso_local global i32 0, align 4
@OMX_IndexParamVideoHevc = common dso_local global i64 0, align 8
@OMX_VIDEO_HEVCProfileMain = common dso_local global i32 0, align 4
@OMX_VIDEO_HEVCHighTierLevel5 = common dso_local global i32 0, align 4
@OMX_IndexParamVideoAvc = common dso_local global i32 0, align 4
@OMX_VIDEO_AVCProfileBaseline = common dso_local global i32 0, align 4
@OMX_VIDEO_AVCLevel31 = common dso_local global i32 0, align 4
@OMX_VIDEO_PictureTypeB = common dso_local global i32 0, align 4
@OMX_VIDEO_AVCLoopFilterEnable = common dso_local global i32 0, align 4
@OMX_CommandStateSet = common dso_local global i32 0, align 4
@OMX_StateIdle = common dso_local global i32 0, align 4
@OMX_StateExecuting = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @encoder_init(%struct.TYPE_22__* %0, i8* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca %struct.TYPE_22__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_21__, align 8
  %19 = alloca %struct.TYPE_21__, align 8
  %20 = alloca %struct.TYPE_19__, align 8
  %21 = alloca %struct.TYPE_18__, align 8
  %22 = alloca %struct.TYPE_20__, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %9, align 8
  store i8* %1, i8** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  %27 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %28 = call i32 @memset(%struct.TYPE_22__* %27, i32 0, i32 128)
  %29 = load i8*, i8** %10, align 8
  %30 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %31 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %30, i32 0, i32 0
  store i8* %29, i8** %31, align 8
  %32 = load i32, i32* %11, align 4
  %33 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %34 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 8
  %35 = load i32, i32* %12, align 4
  %36 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %37 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %36, i32 0, i32 2
  store i32 %35, i32* %37, align 4
  %38 = load i32, i32* %13, align 4
  %39 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %40 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %39, i32 0, i32 3
  store i32 %38, i32* %40, align 8
  %41 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %42 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %41, i32 0, i32 21
  %43 = call i32 @mutex_init_reentrant(i32* %42)
  %44 = load i32, i32* %15, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %8
  %47 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %48 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %47, i32 0, i32 4
  store i32 1, i32* %48, align 4
  br label %49

49:                                               ; preds = %46, %8
  %50 = load i32, i32* %16, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %87

52:                                               ; preds = %49
  %53 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %54 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %53, i32 0, i32 5
  store i32 1, i32* %54, align 8
  %55 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %56 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %59 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = mul nsw i32 %57, %60
  %62 = call i8* @malloc(i32 %61)
  %63 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %64 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %63, i32 0, i32 20
  store i8* %62, i8** %64, align 8
  %65 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %66 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %69 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = mul nsw i32 %67, %70
  %72 = sdiv i32 %71, 4
  %73 = call i8* @malloc(i32 %72)
  %74 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %75 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %74, i32 0, i32 19
  store i8* %73, i8** %75, align 8
  %76 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %77 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %80 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = mul nsw i32 %78, %81
  %83 = sdiv i32 %82, 4
  %84 = call i8* @malloc(i32 %83)
  %85 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %86 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %85, i32 0, i32 18
  store i8* %84, i8** %86, align 8
  br label %87

87:                                               ; preds = %52, %49
  %88 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %89 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %88, i32 0, i32 6
  store i32 -1, i32* %89, align 4
  %90 = load i32, i32* @OMX_StateLoaded, align 4
  %91 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %92 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %91, i32 0, i32 17
  store i32 %90, i32* %92, align 8
  %93 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %94 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %93, i32 0, i32 16
  store i32* null, i32** %94, align 8
  %95 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %96 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %95, i32 0, i32 10
  %97 = call i32 @queue_init(i32* %96)
  %98 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %99 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %98, i32 0, i32 15
  %100 = call i32 @queue_init(i32* %99)
  %101 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %102 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %101, i32 0, i32 14
  %103 = call i32 @pthread_mutex_init(i32* %102, i32* null)
  %104 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %105 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %104, i32 0, i32 13
  %106 = call i32 @pthread_cond_init(i32* %105, i32* null)
  %107 = load i32, i32* %15, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %114

109:                                              ; preds = %87
  %110 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %111 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %110, i32 0, i32 12
  %112 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %113 = call i32 @OMX_GetHandle(i32* %111, i32 ptrtoint ([28 x i8]* @.str to i32), %struct.TYPE_22__* %112, i32* @omx_callbacks)
  store i32 %113, i32* %17, align 4
  br label %119

114:                                              ; preds = %87
  %115 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %116 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %115, i32 0, i32 12
  %117 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %118 = call i32 @OMX_GetHandle(i32* %116, i32 ptrtoint ([27 x i8]* @.str.1 to i32), %struct.TYPE_22__* %117, i32* @omx_callbacks)
  store i32 %118, i32* %17, align 4
  br label %119

119:                                              ; preds = %114, %109
  %120 = load i32, i32* %17, align 4
  %121 = load i32, i32* @OMX_ErrorNone, align 4
  %122 = icmp eq i32 %120, %121
  %123 = zext i1 %122 to i32
  %124 = call i32 @assert(i32 %123)
  %125 = bitcast %struct.TYPE_21__* %18 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %125, i8 0, i64 64, i1 false)
  %126 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %18, i32 0, i32 0
  store i32 64, i32* %126, align 8
  %127 = load i64, i64* @PORT_INDEX_IN, align 8
  %128 = inttoptr i64 %127 to i8*
  %129 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %18, i32 0, i32 4
  store i8* %128, i8** %129, align 8
  %130 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %131 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %130, i32 0, i32 12
  %132 = load i32, i32* %131, align 8
  %133 = load i32, i32* @OMX_IndexParamPortDefinition, align 4
  %134 = bitcast %struct.TYPE_21__* %18 to %struct.TYPE_20__*
  %135 = call i32 @OMX_GetParameter(i32 %132, i32 %133, %struct.TYPE_20__* %134)
  store i32 %135, i32* %17, align 4
  %136 = load i32, i32* %17, align 4
  %137 = load i32, i32* @OMX_ErrorNone, align 4
  %138 = icmp eq i32 %136, %137
  %139 = zext i1 %138 to i32
  %140 = call i32 @assert(i32 %139)
  %141 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %142 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %18, i32 0, i32 3
  %145 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %145, i32 0, i32 0
  store i32 %143, i32* %146, align 4
  %147 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %148 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 4
  %150 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %18, i32 0, i32 3
  %151 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %151, i32 0, i32 1
  store i32 %149, i32* %152, align 4
  %153 = load i32, i32* @COLOR_FMT_NV12, align 4
  %154 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %155 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 8
  %157 = call i32 @VENUS_Y_STRIDE(i32 %153, i32 %156)
  %158 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %18, i32 0, i32 3
  %159 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %159, i32 0, i32 7
  store i32 %157, i32* %160, align 4
  %161 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %162 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %161, i32 0, i32 2
  %163 = load i32, i32* %162, align 4
  %164 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %18, i32 0, i32 3
  %165 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %165, i32 0, i32 2
  store i32 %163, i32* %166, align 4
  %167 = load i32, i32* @COLOR_FMT_NV12, align 4
  %168 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %169 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 8
  %171 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %172 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %171, i32 0, i32 2
  %173 = load i32, i32* %172, align 4
  %174 = call i32 @VENUS_BUFFER_SIZE(i32 %167, i32 %170, i32 %173)
  %175 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %18, i32 0, i32 2
  store i32 %174, i32* %175, align 8
  %176 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %177 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %176, i32 0, i32 3
  %178 = load i32, i32* %177, align 8
  %179 = mul nsw i32 %178, 65536
  %180 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %18, i32 0, i32 3
  %181 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %180, i32 0, i32 0
  %182 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %181, i32 0, i32 3
  store i32 %179, i32* %182, align 4
  %183 = load i32, i32* @OMX_VIDEO_CodingUnused, align 4
  %184 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %18, i32 0, i32 3
  %185 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %184, i32 0, i32 0
  %186 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %185, i32 0, i32 6
  store i32 %183, i32* %186, align 4
  %187 = load i32, i32* @QOMX_COLOR_FORMATYUV420PackedSemiPlanar32m, align 4
  %188 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %18, i32 0, i32 3
  %189 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %188, i32 0, i32 0
  %190 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %189, i32 0, i32 5
  store i32 %187, i32* %190, align 4
  %191 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %192 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %191, i32 0, i32 12
  %193 = load i32, i32* %192, align 8
  %194 = load i32, i32* @OMX_IndexParamPortDefinition, align 4
  %195 = bitcast %struct.TYPE_21__* %18 to %struct.TYPE_20__*
  %196 = call i32 @OMX_SetParameter(i32 %193, i32 %194, %struct.TYPE_20__* %195)
  store i32 %196, i32* %17, align 4
  %197 = load i32, i32* %17, align 4
  %198 = load i32, i32* @OMX_ErrorNone, align 4
  %199 = icmp eq i32 %197, %198
  %200 = zext i1 %199 to i32
  %201 = call i32 @assert(i32 %200)
  %202 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %203 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %202, i32 0, i32 12
  %204 = load i32, i32* %203, align 8
  %205 = load i32, i32* @OMX_IndexParamPortDefinition, align 4
  %206 = bitcast %struct.TYPE_21__* %18 to %struct.TYPE_20__*
  %207 = call i32 @OMX_GetParameter(i32 %204, i32 %205, %struct.TYPE_20__* %206)
  store i32 %207, i32* %17, align 4
  %208 = load i32, i32* %17, align 4
  %209 = load i32, i32* @OMX_ErrorNone, align 4
  %210 = icmp eq i32 %208, %209
  %211 = zext i1 %210 to i32
  %212 = call i32 @assert(i32 %211)
  %213 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %18, i32 0, i32 1
  %214 = load i32, i32* %213, align 4
  %215 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %216 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %215, i32 0, i32 7
  store i32 %214, i32* %216, align 8
  %217 = bitcast %struct.TYPE_21__* %19 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %217, i8 0, i64 64, i1 false)
  %218 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %19, i32 0, i32 0
  store i32 64, i32* %218, align 8
  %219 = load i64, i64* @PORT_INDEX_OUT, align 8
  %220 = inttoptr i64 %219 to i8*
  %221 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %19, i32 0, i32 4
  store i8* %220, i8** %221, align 8
  %222 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %223 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %222, i32 0, i32 12
  %224 = load i32, i32* %223, align 8
  %225 = load i32, i32* @OMX_IndexParamPortDefinition, align 4
  %226 = bitcast %struct.TYPE_21__* %19 to %struct.TYPE_20__*
  %227 = call i32 @OMX_GetParameter(i32 %224, i32 %225, %struct.TYPE_20__* %226)
  store i32 %227, i32* %17, align 4
  %228 = load i32, i32* %17, align 4
  %229 = load i32, i32* @OMX_ErrorNone, align 4
  %230 = icmp eq i32 %228, %229
  %231 = zext i1 %230 to i32
  %232 = call i32 @assert(i32 %231)
  %233 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %234 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %233, i32 0, i32 1
  %235 = load i32, i32* %234, align 8
  %236 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %19, i32 0, i32 3
  %237 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %236, i32 0, i32 0
  %238 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %237, i32 0, i32 0
  store i32 %235, i32* %238, align 4
  %239 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %240 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %239, i32 0, i32 2
  %241 = load i32, i32* %240, align 4
  %242 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %19, i32 0, i32 3
  %243 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %242, i32 0, i32 0
  %244 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %243, i32 0, i32 1
  store i32 %241, i32* %244, align 4
  %245 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %19, i32 0, i32 3
  %246 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %245, i32 0, i32 0
  %247 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %246, i32 0, i32 3
  store i32 0, i32* %247, align 4
  %248 = load i32, i32* %14, align 4
  %249 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %19, i32 0, i32 3
  %250 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %249, i32 0, i32 0
  %251 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %250, i32 0, i32 4
  store i32 %248, i32* %251, align 4
  %252 = load i32, i32* %15, align 4
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %254, label %259

254:                                              ; preds = %119
  %255 = load i32, i32* @OMX_VIDEO_CodingHEVC, align 4
  %256 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %19, i32 0, i32 3
  %257 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %256, i32 0, i32 0
  %258 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %257, i32 0, i32 6
  store i32 %255, i32* %258, align 4
  br label %264

259:                                              ; preds = %119
  %260 = load i32, i32* @OMX_VIDEO_CodingAVC, align 4
  %261 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %19, i32 0, i32 3
  %262 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %261, i32 0, i32 0
  %263 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %262, i32 0, i32 6
  store i32 %260, i32* %263, align 4
  br label %264

264:                                              ; preds = %259, %254
  %265 = load i32, i32* @OMX_COLOR_FormatUnused, align 4
  %266 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %19, i32 0, i32 3
  %267 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %266, i32 0, i32 0
  %268 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %267, i32 0, i32 5
  store i32 %265, i32* %268, align 4
  %269 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %270 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %269, i32 0, i32 12
  %271 = load i32, i32* %270, align 8
  %272 = load i32, i32* @OMX_IndexParamPortDefinition, align 4
  %273 = bitcast %struct.TYPE_21__* %19 to %struct.TYPE_20__*
  %274 = call i32 @OMX_SetParameter(i32 %271, i32 %272, %struct.TYPE_20__* %273)
  store i32 %274, i32* %17, align 4
  %275 = load i32, i32* %17, align 4
  %276 = load i32, i32* @OMX_ErrorNone, align 4
  %277 = icmp eq i32 %275, %276
  %278 = zext i1 %277 to i32
  %279 = call i32 @assert(i32 %278)
  %280 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %281 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %280, i32 0, i32 12
  %282 = load i32, i32* %281, align 8
  %283 = load i32, i32* @OMX_IndexParamPortDefinition, align 4
  %284 = bitcast %struct.TYPE_21__* %19 to %struct.TYPE_20__*
  %285 = call i32 @OMX_GetParameter(i32 %282, i32 %283, %struct.TYPE_20__* %284)
  store i32 %285, i32* %17, align 4
  %286 = load i32, i32* %17, align 4
  %287 = load i32, i32* @OMX_ErrorNone, align 4
  %288 = icmp eq i32 %286, %287
  %289 = zext i1 %288 to i32
  %290 = call i32 @assert(i32 %289)
  %291 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %19, i32 0, i32 1
  %292 = load i32, i32* %291, align 4
  %293 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %294 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %293, i32 0, i32 8
  store i32 %292, i32* %294, align 4
  %295 = bitcast %struct.TYPE_19__* %20 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %295, i8 0, i64 32, i1 false)
  %296 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %20, i32 0, i32 0
  store i32 32, i32* %296, align 8
  %297 = load i64, i64* @PORT_INDEX_OUT, align 8
  %298 = inttoptr i64 %297 to i8*
  %299 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %20, i32 0, i32 3
  store i8* %298, i8** %299, align 8
  %300 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %301 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %300, i32 0, i32 12
  %302 = load i32, i32* %301, align 8
  %303 = load i32, i32* @OMX_IndexParamVideoBitrate, align 4
  %304 = bitcast %struct.TYPE_19__* %20 to %struct.TYPE_20__*
  %305 = call i32 @OMX_GetParameter(i32 %302, i32 %303, %struct.TYPE_20__* %304)
  store i32 %305, i32* %17, align 4
  %306 = load i32, i32* %17, align 4
  %307 = load i32, i32* @OMX_ErrorNone, align 4
  %308 = icmp eq i32 %306, %307
  %309 = zext i1 %308 to i32
  %310 = call i32 @assert(i32 %309)
  %311 = load i32, i32* @OMX_Video_ControlRateVariable, align 4
  %312 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %20, i32 0, i32 2
  store i32 %311, i32* %312, align 8
  %313 = load i32, i32* %14, align 4
  %314 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %20, i32 0, i32 1
  store i32 %313, i32* %314, align 4
  %315 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %316 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %315, i32 0, i32 12
  %317 = load i32, i32* %316, align 8
  %318 = load i32, i32* @OMX_IndexParamVideoBitrate, align 4
  %319 = bitcast %struct.TYPE_19__* %20 to %struct.TYPE_20__*
  %320 = call i32 @OMX_SetParameter(i32 %317, i32 %318, %struct.TYPE_20__* %319)
  store i32 %320, i32* %17, align 4
  %321 = load i32, i32* %17, align 4
  %322 = load i32, i32* @OMX_ErrorNone, align 4
  %323 = icmp eq i32 %321, %322
  %324 = zext i1 %323 to i32
  %325 = call i32 @assert(i32 %324)
  %326 = load i32, i32* %15, align 4
  %327 = icmp ne i32 %326, 0
  br i1 %327, label %328, label %362

328:                                              ; preds = %264
  %329 = bitcast %struct.TYPE_18__* %21 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %329, i8 0, i64 32, i1 false)
  %330 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %21, i32 0, i32 0
  store i32 32, i32* %330, align 8
  %331 = load i64, i64* @PORT_INDEX_OUT, align 8
  %332 = inttoptr i64 %331 to i8*
  %333 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %21, i32 0, i32 3
  store i8* %332, i8** %333, align 8
  %334 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %335 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %334, i32 0, i32 12
  %336 = load i32, i32* %335, align 8
  %337 = load i64, i64* @OMX_IndexParamVideoHevc, align 8
  %338 = trunc i64 %337 to i32
  %339 = bitcast %struct.TYPE_18__* %21 to %struct.TYPE_20__*
  %340 = call i32 @OMX_GetParameter(i32 %336, i32 %338, %struct.TYPE_20__* %339)
  store i32 %340, i32* %17, align 4
  %341 = load i32, i32* %17, align 4
  %342 = load i32, i32* @OMX_ErrorNone, align 4
  %343 = icmp eq i32 %341, %342
  %344 = zext i1 %343 to i32
  %345 = call i32 @assert(i32 %344)
  %346 = load i32, i32* @OMX_VIDEO_HEVCProfileMain, align 4
  %347 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %21, i32 0, i32 2
  store i32 %346, i32* %347, align 8
  %348 = load i32, i32* @OMX_VIDEO_HEVCHighTierLevel5, align 4
  %349 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %21, i32 0, i32 1
  store i32 %348, i32* %349, align 4
  %350 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %351 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %350, i32 0, i32 12
  %352 = load i32, i32* %351, align 8
  %353 = load i64, i64* @OMX_IndexParamVideoHevc, align 8
  %354 = trunc i64 %353 to i32
  %355 = bitcast %struct.TYPE_18__* %21 to %struct.TYPE_20__*
  %356 = call i32 @OMX_SetParameter(i32 %352, i32 %354, %struct.TYPE_20__* %355)
  store i32 %356, i32* %17, align 4
  %357 = load i32, i32* %17, align 4
  %358 = load i32, i32* @OMX_ErrorNone, align 4
  %359 = icmp eq i32 %357, %358
  %360 = zext i1 %359 to i32
  %361 = call i32 @assert(i32 %360)
  br label %400

362:                                              ; preds = %264
  %363 = bitcast %struct.TYPE_20__* %22 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %363, i8 0, i64 48, i1 false)
  %364 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %22, i32 0, i32 0
  store i32 48, i32* %364, align 8
  %365 = load i64, i64* @PORT_INDEX_OUT, align 8
  %366 = inttoptr i64 %365 to i8*
  %367 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %22, i32 0, i32 7
  store i8* %366, i8** %367, align 8
  %368 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %369 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %368, i32 0, i32 12
  %370 = load i32, i32* %369, align 8
  %371 = load i32, i32* @OMX_IndexParamVideoAvc, align 4
  %372 = call i32 @OMX_GetParameter(i32 %370, i32 %371, %struct.TYPE_20__* %22)
  store i32 %372, i32* %17, align 4
  %373 = load i32, i32* %17, align 4
  %374 = load i32, i32* @OMX_ErrorNone, align 4
  %375 = icmp eq i32 %373, %374
  %376 = zext i1 %375 to i32
  %377 = call i32 @assert(i32 %376)
  %378 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %22, i32 0, i32 6
  store i64 0, i64* %378, align 8
  %379 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %22, i32 0, i32 1
  store i32 15, i32* %379, align 4
  %380 = load i32, i32* @OMX_VIDEO_AVCProfileBaseline, align 4
  %381 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %22, i32 0, i32 5
  store i32 %380, i32* %381, align 4
  %382 = load i32, i32* @OMX_VIDEO_AVCLevel31, align 4
  %383 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %22, i32 0, i32 4
  store i32 %382, i32* %383, align 8
  %384 = load i32, i32* @OMX_VIDEO_PictureTypeB, align 4
  %385 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %22, i32 0, i32 3
  %386 = load i32, i32* %385, align 4
  %387 = or i32 %386, %384
  store i32 %387, i32* %385, align 4
  %388 = load i32, i32* @OMX_VIDEO_AVCLoopFilterEnable, align 4
  %389 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %22, i32 0, i32 2
  store i32 %388, i32* %389, align 8
  %390 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %391 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %390, i32 0, i32 12
  %392 = load i32, i32* %391, align 8
  %393 = load i32, i32* @OMX_IndexParamVideoAvc, align 4
  %394 = call i32 @OMX_SetParameter(i32 %392, i32 %393, %struct.TYPE_20__* %22)
  store i32 %394, i32* %17, align 4
  %395 = load i32, i32* %17, align 4
  %396 = load i32, i32* @OMX_ErrorNone, align 4
  %397 = icmp eq i32 %395, %396
  %398 = zext i1 %397 to i32
  %399 = call i32 @assert(i32 %398)
  br label %400

400:                                              ; preds = %362, %328
  %401 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %402 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %401, i32 0, i32 12
  %403 = load i32, i32* %402, align 8
  %404 = load i32, i32* @OMX_CommandStateSet, align 4
  %405 = load i32, i32* @OMX_StateIdle, align 4
  %406 = call i32 @OMX_SendCommand(i32 %403, i32 %404, i32 %405, i32* null)
  store i32 %406, i32* %17, align 4
  %407 = load i32, i32* %17, align 4
  %408 = load i32, i32* @OMX_ErrorNone, align 4
  %409 = icmp eq i32 %407, %408
  %410 = zext i1 %409 to i32
  %411 = call i32 @assert(i32 %410)
  %412 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %413 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %412, i32 0, i32 7
  %414 = load i32, i32* %413, align 8
  %415 = call i8* @calloc(i32 %414, i32 8)
  %416 = bitcast i8* %415 to i64*
  %417 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %418 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %417, i32 0, i32 9
  store i64* %416, i64** %418, align 8
  store i32 0, i32* %23, align 4
  br label %419

419:                                              ; preds = %445, %400
  %420 = load i32, i32* %23, align 4
  %421 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %422 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %421, i32 0, i32 7
  %423 = load i32, i32* %422, align 8
  %424 = icmp slt i32 %420, %423
  br i1 %424, label %425, label %448

425:                                              ; preds = %419
  %426 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %427 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %426, i32 0, i32 12
  %428 = load i32, i32* %427, align 8
  %429 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %430 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %429, i32 0, i32 9
  %431 = load i64*, i64** %430, align 8
  %432 = load i32, i32* %23, align 4
  %433 = sext i32 %432 to i64
  %434 = getelementptr inbounds i64, i64* %431, i64 %433
  %435 = load i64, i64* @PORT_INDEX_IN, align 8
  %436 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %437 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %18, i32 0, i32 2
  %438 = load i32, i32* %437, align 8
  %439 = call i32 @OMX_AllocateBuffer(i32 %428, i64* %434, i64 %435, %struct.TYPE_22__* %436, i32 %438)
  store i32 %439, i32* %17, align 4
  %440 = load i32, i32* %17, align 4
  %441 = load i32, i32* @OMX_ErrorNone, align 4
  %442 = icmp eq i32 %440, %441
  %443 = zext i1 %442 to i32
  %444 = call i32 @assert(i32 %443)
  br label %445

445:                                              ; preds = %425
  %446 = load i32, i32* %23, align 4
  %447 = add nsw i32 %446, 1
  store i32 %447, i32* %23, align 4
  br label %419

448:                                              ; preds = %419
  %449 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %450 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %449, i32 0, i32 8
  %451 = load i32, i32* %450, align 4
  %452 = call i8* @calloc(i32 %451, i32 8)
  %453 = bitcast i8* %452 to i64*
  %454 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %455 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %454, i32 0, i32 11
  store i64* %453, i64** %455, align 8
  store i32 0, i32* %24, align 4
  br label %456

456:                                              ; preds = %482, %448
  %457 = load i32, i32* %24, align 4
  %458 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %459 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %458, i32 0, i32 8
  %460 = load i32, i32* %459, align 4
  %461 = icmp slt i32 %457, %460
  br i1 %461, label %462, label %485

462:                                              ; preds = %456
  %463 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %464 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %463, i32 0, i32 12
  %465 = load i32, i32* %464, align 8
  %466 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %467 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %466, i32 0, i32 11
  %468 = load i64*, i64** %467, align 8
  %469 = load i32, i32* %24, align 4
  %470 = sext i32 %469 to i64
  %471 = getelementptr inbounds i64, i64* %468, i64 %470
  %472 = load i64, i64* @PORT_INDEX_OUT, align 8
  %473 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %474 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %19, i32 0, i32 2
  %475 = load i32, i32* %474, align 8
  %476 = call i32 @OMX_AllocateBuffer(i32 %465, i64* %471, i64 %472, %struct.TYPE_22__* %473, i32 %475)
  store i32 %476, i32* %17, align 4
  %477 = load i32, i32* %17, align 4
  %478 = load i32, i32* @OMX_ErrorNone, align 4
  %479 = icmp eq i32 %477, %478
  %480 = zext i1 %479 to i32
  %481 = call i32 @assert(i32 %480)
  br label %482

482:                                              ; preds = %462
  %483 = load i32, i32* %24, align 4
  %484 = add nsw i32 %483, 1
  store i32 %484, i32* %24, align 4
  br label %456

485:                                              ; preds = %456
  %486 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %487 = load i32, i32* @OMX_StateIdle, align 4
  %488 = call i32 @wait_for_state(%struct.TYPE_22__* %486, i32 %487)
  %489 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %490 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %489, i32 0, i32 12
  %491 = load i32, i32* %490, align 8
  %492 = load i32, i32* @OMX_CommandStateSet, align 4
  %493 = load i32, i32* @OMX_StateExecuting, align 4
  %494 = call i32 @OMX_SendCommand(i32 %491, i32 %492, i32 %493, i32* null)
  store i32 %494, i32* %17, align 4
  %495 = load i32, i32* %17, align 4
  %496 = load i32, i32* @OMX_ErrorNone, align 4
  %497 = icmp eq i32 %495, %496
  %498 = zext i1 %497 to i32
  %499 = call i32 @assert(i32 %498)
  %500 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %501 = load i32, i32* @OMX_StateExecuting, align 4
  %502 = call i32 @wait_for_state(%struct.TYPE_22__* %500, i32 %501)
  store i32 0, i32* %25, align 4
  br label %503

503:                                              ; preds = %526, %485
  %504 = load i32, i32* %25, align 4
  %505 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %506 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %505, i32 0, i32 8
  %507 = load i32, i32* %506, align 4
  %508 = icmp slt i32 %504, %507
  br i1 %508, label %509, label %529

509:                                              ; preds = %503
  %510 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %511 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %510, i32 0, i32 12
  %512 = load i32, i32* %511, align 8
  %513 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %514 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %513, i32 0, i32 11
  %515 = load i64*, i64** %514, align 8
  %516 = load i32, i32* %25, align 4
  %517 = sext i32 %516 to i64
  %518 = getelementptr inbounds i64, i64* %515, i64 %517
  %519 = load i64, i64* %518, align 8
  %520 = call i32 @OMX_FillThisBuffer(i32 %512, i64 %519)
  store i32 %520, i32* %17, align 4
  %521 = load i32, i32* %17, align 4
  %522 = load i32, i32* @OMX_ErrorNone, align 4
  %523 = icmp eq i32 %521, %522
  %524 = zext i1 %523 to i32
  %525 = call i32 @assert(i32 %524)
  br label %526

526:                                              ; preds = %509
  %527 = load i32, i32* %25, align 4
  %528 = add nsw i32 %527, 1
  store i32 %528, i32* %25, align 4
  br label %503

529:                                              ; preds = %503
  store i32 0, i32* %26, align 4
  br label %530

530:                                              ; preds = %548, %529
  %531 = load i32, i32* %26, align 4
  %532 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %533 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %532, i32 0, i32 7
  %534 = load i32, i32* %533, align 8
  %535 = icmp slt i32 %531, %534
  br i1 %535, label %536, label %551

536:                                              ; preds = %530
  %537 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %538 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %537, i32 0, i32 10
  %539 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %540 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %539, i32 0, i32 9
  %541 = load i64*, i64** %540, align 8
  %542 = load i32, i32* %26, align 4
  %543 = sext i32 %542 to i64
  %544 = getelementptr inbounds i64, i64* %541, i64 %543
  %545 = load i64, i64* %544, align 8
  %546 = inttoptr i64 %545 to i8*
  %547 = call i32 @queue_push(i32* %538, i8* %546)
  br label %548

548:                                              ; preds = %536
  %549 = load i32, i32* %26, align 4
  %550 = add nsw i32 %549, 1
  store i32 %550, i32* %26, align 4
  br label %530

551:                                              ; preds = %530
  ret void
}

declare dso_local i32 @memset(%struct.TYPE_22__*, i32, i32) #1

declare dso_local i32 @mutex_init_reentrant(i32*) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @queue_init(i32*) #1

declare dso_local i32 @pthread_mutex_init(i32*, i32*) #1

declare dso_local i32 @pthread_cond_init(i32*, i32*) #1

declare dso_local i32 @OMX_GetHandle(i32*, i32, %struct.TYPE_22__*, i32*) #1

declare dso_local i32 @assert(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @OMX_GetParameter(i32, i32, %struct.TYPE_20__*) #1

declare dso_local i32 @VENUS_Y_STRIDE(i32, i32) #1

declare dso_local i32 @VENUS_BUFFER_SIZE(i32, i32, i32) #1

declare dso_local i32 @OMX_SetParameter(i32, i32, %struct.TYPE_20__*) #1

declare dso_local i32 @OMX_SendCommand(i32, i32, i32, i32*) #1

declare dso_local i8* @calloc(i32, i32) #1

declare dso_local i32 @OMX_AllocateBuffer(i32, i64*, i64, %struct.TYPE_22__*, i32) #1

declare dso_local i32 @wait_for_state(%struct.TYPE_22__*, i32) #1

declare dso_local i32 @OMX_FillThisBuffer(i32, i64) #1

declare dso_local i32 @queue_push(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
