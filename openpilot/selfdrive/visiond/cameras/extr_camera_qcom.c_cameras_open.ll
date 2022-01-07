; ModuleID = '/home/carl/AnghaBench/openpilot/selfdrive/visiond/cameras/extr_camera_qcom.c_cameras_open.c'
source_filename = "/home/carl/AnghaBench/openpilot/selfdrive/visiond/cameras/extr_camera_qcom.c_cameras_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i64, %struct.TYPE_15__, %struct.TYPE_15__, i8* }
%struct.TYPE_15__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32* }
%struct.ispif_cfg_data = type { i32, i32, %struct.msm_ispif_param_data, %struct.TYPE_13__, i32 }
%struct.msm_ispif_param_data = type { i32, %struct.TYPE_11__*, i32 }
%struct.TYPE_11__ = type { i32, i32, i32*, i32, i8* }
%struct.TYPE_13__ = type { i32 }

@RDI0 = common dso_local global i8* null, align 8
@RDI1 = common dso_local global i8* null, align 8
@RDI2 = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [12 x i8] c"/dev/media0\00", align 1
@O_RDWR = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"/dev/video0\00", align 1
@DEVICE_LP3 = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [18 x i8] c"/dev/v4l-subdev15\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"/dev/v4l-subdev16\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"*** open front ***\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"*** open rear ***\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"CAMERA_TEST\00", align 1
@ISPIF_SET_VFE_INFO = common dso_local global i32 0, align 4
@VIDIOC_MSM_ISPIF_CFG = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [23 x i8] c"ispif set vfe info: %d\00", align 1
@ISPIF_INIT = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [16 x i8] c"ispif setup: %d\00", align 1
@ISPIF_CFG = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [14 x i8] c"ispif cfg: %d\00", align 1
@ISPIF_START_FRAME_BOUNDARY = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [31 x i8] c"ispif start_frame_boundary: %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cameras_open(%struct.TYPE_14__* %0, i32* %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.ispif_cfg_data, align 8
  %13 = alloca %struct.msm_ispif_param_data, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %16 = bitcast %struct.ispif_cfg_data* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %16, i8 0, i64 40, i1 false)
  %17 = bitcast %struct.msm_ispif_param_data* %13 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %17, i8 0, i64 24, i1 false)
  %18 = getelementptr inbounds %struct.msm_ispif_param_data, %struct.msm_ispif_param_data* %13, i32 0, i32 0
  store i32 4, i32* %18, align 8
  %19 = getelementptr inbounds %struct.msm_ispif_param_data, %struct.msm_ispif_param_data* %13, i32 0, i32 1
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i64 0
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 0
  store i32 0, i32* %22, align 8
  %23 = load i8*, i8** @RDI0, align 8
  %24 = getelementptr inbounds %struct.msm_ispif_param_data, %struct.msm_ispif_param_data* %13, i32 0, i32 1
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i64 0
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 4
  store i8* %23, i8** %27, align 8
  %28 = getelementptr inbounds %struct.msm_ispif_param_data, %struct.msm_ispif_param_data* %13, i32 0, i32 1
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i64 0
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 1
  store i32 1, i32* %31, align 4
  %32 = getelementptr inbounds %struct.msm_ispif_param_data, %struct.msm_ispif_param_data* %13, i32 0, i32 1
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i64 0
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 2
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 0
  store i32 0, i32* %37, align 4
  %38 = getelementptr inbounds %struct.msm_ispif_param_data, %struct.msm_ispif_param_data* %13, i32 0, i32 1
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i64 0
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 3
  store i32 0, i32* %41, align 8
  %42 = getelementptr inbounds %struct.msm_ispif_param_data, %struct.msm_ispif_param_data* %13, i32 0, i32 1
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i64 1
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 0
  store i32 1, i32* %45, align 8
  %46 = load i8*, i8** @RDI0, align 8
  %47 = getelementptr inbounds %struct.msm_ispif_param_data, %struct.msm_ispif_param_data* %13, i32 0, i32 1
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i64 1
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 4
  store i8* %46, i8** %50, align 8
  %51 = getelementptr inbounds %struct.msm_ispif_param_data, %struct.msm_ispif_param_data* %13, i32 0, i32 1
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i64 1
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 1
  store i32 1, i32* %54, align 4
  %55 = getelementptr inbounds %struct.msm_ispif_param_data, %struct.msm_ispif_param_data* %13, i32 0, i32 1
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i64 1
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 2
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 0
  store i32 0, i32* %60, align 4
  %61 = getelementptr inbounds %struct.msm_ispif_param_data, %struct.msm_ispif_param_data* %13, i32 0, i32 1
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i64 1
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 3
  store i32 2, i32* %64, align 8
  %65 = getelementptr inbounds %struct.msm_ispif_param_data, %struct.msm_ispif_param_data* %13, i32 0, i32 1
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i64 2
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 0
  store i32 0, i32* %68, align 8
  %69 = load i8*, i8** @RDI1, align 8
  %70 = getelementptr inbounds %struct.msm_ispif_param_data, %struct.msm_ispif_param_data* %13, i32 0, i32 1
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i64 2
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 4
  store i8* %69, i8** %73, align 8
  %74 = getelementptr inbounds %struct.msm_ispif_param_data, %struct.msm_ispif_param_data* %13, i32 0, i32 1
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i64 2
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 1
  store i32 1, i32* %77, align 4
  %78 = getelementptr inbounds %struct.msm_ispif_param_data, %struct.msm_ispif_param_data* %13, i32 0, i32 1
  %79 = load %struct.TYPE_11__*, %struct.TYPE_11__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %79, i64 2
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i32 0, i32 2
  %82 = load i32*, i32** %81, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 0
  store i32 1, i32* %83, align 4
  %84 = getelementptr inbounds %struct.msm_ispif_param_data, %struct.msm_ispif_param_data* %13, i32 0, i32 1
  %85 = load %struct.TYPE_11__*, %struct.TYPE_11__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %85, i64 2
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %86, i32 0, i32 3
  store i32 0, i32* %87, align 8
  %88 = getelementptr inbounds %struct.msm_ispif_param_data, %struct.msm_ispif_param_data* %13, i32 0, i32 1
  %89 = load %struct.TYPE_11__*, %struct.TYPE_11__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %89, i64 3
  %91 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %90, i32 0, i32 0
  store i32 0, i32* %91, align 8
  %92 = load i8*, i8** @RDI2, align 8
  %93 = getelementptr inbounds %struct.msm_ispif_param_data, %struct.msm_ispif_param_data* %13, i32 0, i32 1
  %94 = load %struct.TYPE_11__*, %struct.TYPE_11__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %94, i64 3
  %96 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %95, i32 0, i32 4
  store i8* %92, i8** %96, align 8
  %97 = getelementptr inbounds %struct.msm_ispif_param_data, %struct.msm_ispif_param_data* %13, i32 0, i32 1
  %98 = load %struct.TYPE_11__*, %struct.TYPE_11__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %98, i64 3
  %100 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %99, i32 0, i32 1
  store i32 1, i32* %100, align 4
  %101 = getelementptr inbounds %struct.msm_ispif_param_data, %struct.msm_ispif_param_data* %13, i32 0, i32 1
  %102 = load %struct.TYPE_11__*, %struct.TYPE_11__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %102, i64 3
  %104 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %103, i32 0, i32 2
  %105 = load i32*, i32** %104, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 0
  store i32 2, i32* %106, align 4
  %107 = getelementptr inbounds %struct.msm_ispif_param_data, %struct.msm_ispif_param_data* %13, i32 0, i32 1
  %108 = load %struct.TYPE_11__*, %struct.TYPE_11__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %108, i64 3
  %110 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %109, i32 0, i32 3
  store i32 0, i32* %110, align 8
  %111 = load i32*, i32** %7, align 8
  %112 = ptrtoint i32* %111 to i32
  %113 = call i32 @assert(i32 %112)
  %114 = load i32*, i32** %10, align 8
  %115 = ptrtoint i32* %114 to i32
  %116 = call i32 @assert(i32 %115)
  %117 = load i32, i32* @O_RDWR, align 4
  %118 = load i32, i32* @O_NONBLOCK, align 4
  %119 = or i32 %117, %118
  %120 = call i8* @open(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %119)
  %121 = ptrtoint i8* %120 to i32
  store i32 %121, i32* %14, align 4
  %122 = load i32, i32* %14, align 4
  %123 = icmp sge i32 %122, 0
  %124 = zext i1 %123 to i32
  %125 = call i32 @assert(i32 %124)
  %126 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %127 = call i32 @sensors_init(%struct.TYPE_14__* %126)
  %128 = load i32, i32* @O_RDWR, align 4
  %129 = load i32, i32* @O_NONBLOCK, align 4
  %130 = or i32 %128, %129
  %131 = call i8* @open(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %130)
  %132 = ptrtoint i8* %131 to i32
  store i32 %132, i32* %15, align 4
  %133 = load i32, i32* %15, align 4
  %134 = icmp sge i32 %133, 0
  %135 = zext i1 %134 to i32
  %136 = call i32 @assert(i32 %135)
  %137 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %138 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = load i64, i64* @DEVICE_LP3, align 8
  %141 = icmp eq i64 %139, %140
  br i1 %141, label %142, label %149

142:                                              ; preds = %5
  %143 = load i32, i32* @O_RDWR, align 4
  %144 = load i32, i32* @O_NONBLOCK, align 4
  %145 = or i32 %143, %144
  %146 = call i8* @open(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 %145)
  %147 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %148 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %147, i32 0, i32 3
  store i8* %146, i8** %148, align 8
  br label %156

149:                                              ; preds = %5
  %150 = load i32, i32* @O_RDWR, align 4
  %151 = load i32, i32* @O_NONBLOCK, align 4
  %152 = or i32 %150, %151
  %153 = call i8* @open(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32 %152)
  %154 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %155 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %154, i32 0, i32 3
  store i8* %153, i8** %155, align 8
  br label %156

156:                                              ; preds = %149, %142
  %157 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %158 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %157, i32 0, i32 3
  %159 = load i8*, i8** %158, align 8
  %160 = icmp uge i8* %159, null
  %161 = zext i1 %160 to i32
  %162 = call i32 @assert(i32 %161)
  %163 = call i32 (i8*, ...) @LOG(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  %164 = load i32*, i32** %10, align 8
  %165 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %166 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %165, i32 0, i32 2
  %167 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %166, i32 0, i32 0
  %168 = load %struct.TYPE_12__*, %struct.TYPE_12__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %168, i64 0
  %170 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %169, i32 0, i32 0
  store i32* %164, i32** %170, align 8
  %171 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %172 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %171, i32 0, i32 2
  %173 = call i32 @camera_open(%struct.TYPE_15__* %172, i32 0)
  %174 = call i32 (i8*, ...) @LOG(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0))
  %175 = load i32*, i32** %7, align 8
  %176 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %177 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %176, i32 0, i32 1
  %178 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %177, i32 0, i32 0
  %179 = load %struct.TYPE_12__*, %struct.TYPE_12__** %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %179, i64 0
  %181 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %180, i32 0, i32 0
  store i32* %175, i32** %181, align 8
  %182 = load i32*, i32** %8, align 8
  %183 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %184 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %183, i32 0, i32 1
  %185 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %184, i32 0, i32 0
  %186 = load %struct.TYPE_12__*, %struct.TYPE_12__** %185, align 8
  %187 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %186, i64 1
  %188 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %187, i32 0, i32 0
  store i32* %182, i32** %188, align 8
  %189 = load i32*, i32** %9, align 8
  %190 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %191 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %190, i32 0, i32 1
  %192 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %191, i32 0, i32 0
  %193 = load %struct.TYPE_12__*, %struct.TYPE_12__** %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %193, i64 2
  %195 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %194, i32 0, i32 0
  store i32* %189, i32** %195, align 8
  %196 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %197 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %196, i32 0, i32 1
  %198 = call i32 @camera_open(%struct.TYPE_15__* %197, i32 1)
  %199 = call i64 @getenv(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0))
  %200 = icmp ne i64 %199, 0
  br i1 %200, label %201, label %205

201:                                              ; preds = %156
  %202 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %203 = call i32 @cameras_close(%struct.TYPE_14__* %202)
  %204 = call i32 @exit(i32 0) #4
  unreachable

205:                                              ; preds = %156
  %206 = call i32 @memset(%struct.ispif_cfg_data* %12, i32 0, i32 40)
  %207 = load i32, i32* @ISPIF_SET_VFE_INFO, align 4
  %208 = getelementptr inbounds %struct.ispif_cfg_data, %struct.ispif_cfg_data* %12, i32 0, i32 1
  store i32 %207, i32* %208, align 4
  %209 = getelementptr inbounds %struct.ispif_cfg_data, %struct.ispif_cfg_data* %12, i32 0, i32 3
  %210 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %209, i32 0, i32 0
  store i32 2, i32* %210, align 8
  %211 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %212 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %211, i32 0, i32 3
  %213 = load i8*, i8** %212, align 8
  %214 = load i32, i32* @VIDIOC_MSM_ISPIF_CFG, align 4
  %215 = call i32 @ioctl(i8* %213, i32 %214, %struct.ispif_cfg_data* %12)
  store i32 %215, i32* %11, align 4
  %216 = load i32, i32* %11, align 4
  %217 = call i32 (i8*, ...) @LOG(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i32 %216)
  %218 = call i32 @memset(%struct.ispif_cfg_data* %12, i32 0, i32 40)
  %219 = load i32, i32* @ISPIF_INIT, align 4
  %220 = getelementptr inbounds %struct.ispif_cfg_data, %struct.ispif_cfg_data* %12, i32 0, i32 1
  store i32 %219, i32* %220, align 4
  %221 = getelementptr inbounds %struct.ispif_cfg_data, %struct.ispif_cfg_data* %12, i32 0, i32 0
  store i32 805634048, i32* %221, align 8
  %222 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %223 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %222, i32 0, i32 3
  %224 = load i8*, i8** %223, align 8
  %225 = load i32, i32* @VIDIOC_MSM_ISPIF_CFG, align 4
  %226 = call i32 @ioctl(i8* %224, i32 %225, %struct.ispif_cfg_data* %12)
  store i32 %226, i32* %11, align 4
  %227 = load i32, i32* %11, align 4
  %228 = call i32 (i8*, ...) @LOG(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0), i32 %227)
  %229 = call i32 @memset(%struct.ispif_cfg_data* %12, i32 0, i32 40)
  %230 = load i32, i32* @ISPIF_CFG, align 4
  %231 = getelementptr inbounds %struct.ispif_cfg_data, %struct.ispif_cfg_data* %12, i32 0, i32 1
  store i32 %230, i32* %231, align 4
  %232 = getelementptr inbounds %struct.ispif_cfg_data, %struct.ispif_cfg_data* %12, i32 0, i32 2
  %233 = bitcast %struct.msm_ispif_param_data* %232 to i8*
  %234 = bitcast %struct.msm_ispif_param_data* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %233, i8* align 8 %234, i64 24, i1 false)
  %235 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %236 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %235, i32 0, i32 3
  %237 = load i8*, i8** %236, align 8
  %238 = load i32, i32* @VIDIOC_MSM_ISPIF_CFG, align 4
  %239 = call i32 @ioctl(i8* %237, i32 %238, %struct.ispif_cfg_data* %12)
  store i32 %239, i32* %11, align 4
  %240 = load i32, i32* %11, align 4
  %241 = call i32 (i8*, ...) @LOG(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0), i32 %240)
  %242 = load i32, i32* @ISPIF_START_FRAME_BOUNDARY, align 4
  %243 = getelementptr inbounds %struct.ispif_cfg_data, %struct.ispif_cfg_data* %12, i32 0, i32 1
  store i32 %242, i32* %243, align 4
  %244 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %245 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %244, i32 0, i32 3
  %246 = load i8*, i8** %245, align 8
  %247 = load i32, i32* @VIDIOC_MSM_ISPIF_CFG, align 4
  %248 = call i32 @ioctl(i8* %246, i32 %247, %struct.ispif_cfg_data* %12)
  store i32 %248, i32* %11, align 4
  %249 = load i32, i32* %11, align 4
  %250 = call i32 (i8*, ...) @LOG(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.10, i64 0, i64 0), i32 %249)
  %251 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %252 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %251, i32 0, i32 2
  %253 = call i32 @front_start(%struct.TYPE_15__* %252)
  %254 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %255 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %254, i32 0, i32 1
  %256 = call i32 @rear_start(%struct.TYPE_15__* %255)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @assert(i32) #2

declare dso_local i8* @open(i8*, i32) #2

declare dso_local i32 @sensors_init(%struct.TYPE_14__*) #2

declare dso_local i32 @LOG(i8*, ...) #2

declare dso_local i32 @camera_open(%struct.TYPE_15__*, i32) #2

declare dso_local i64 @getenv(i8*) #2

declare dso_local i32 @cameras_close(%struct.TYPE_14__*) #2

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

declare dso_local i32 @memset(%struct.ispif_cfg_data*, i32, i32) #2

declare dso_local i32 @ioctl(i8*, i32, %struct.ispif_cfg_data*) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @front_start(%struct.TYPE_15__*) #2

declare dso_local i32 @rear_start(%struct.TYPE_15__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
