; ModuleID = '/home/carl/AnghaBench/mpv/video/out/opengl/extr_context_drm_egl.c_crtc_setup_atomic.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/opengl/extr_context_drm_egl.c_crtc_setup_atomic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ra_ctx = type { i32, %struct.priv* }
%struct.priv = type { %struct.TYPE_9__*, %struct.TYPE_7__, %struct.TYPE_6__* }
%struct.TYPE_9__ = type { i32, i32, %struct.TYPE_10__, %struct.drm_atomic_context* }
%struct.TYPE_10__ = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32 }
%struct.drm_atomic_context = type { i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [37 x i8] c"Failed to save old DRM atomic state\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"Failed to allocate drm atomic request\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"CRTC_ID\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"Could not set CRTC_ID on connector\0A\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"Failed to create DRM mode blob\0A\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"MODE_ID\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"Could not set MODE_ID on crtc\0A\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"ACTIVE\00", align 1
@.str.8 = private unnamed_addr constant [30 x i8] c"Could not set ACTIVE on crtc\0A\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"FB_ID\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"SRC_X\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"SRC_Y\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"SRC_W\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"SRC_H\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"CRTC_X\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"CRTC_Y\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"CRTC_W\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"CRTC_H\00", align 1
@DRM_MODE_ATOMIC_ALLOW_MODESET = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [50 x i8] c"Failed to commit ModeSetting atomic request (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ra_ctx*)* @crtc_setup_atomic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @crtc_setup_atomic(%struct.ra_ctx* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ra_ctx*, align 8
  %4 = alloca %struct.priv*, align 8
  %5 = alloca %struct.drm_atomic_context*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ra_ctx* %0, %struct.ra_ctx** %3, align 8
  %8 = load %struct.ra_ctx*, %struct.ra_ctx** %3, align 8
  %9 = getelementptr inbounds %struct.ra_ctx, %struct.ra_ctx* %8, i32 0, i32 1
  %10 = load %struct.priv*, %struct.priv** %9, align 8
  store %struct.priv* %10, %struct.priv** %4, align 8
  %11 = load %struct.priv*, %struct.priv** %4, align 8
  %12 = getelementptr inbounds %struct.priv, %struct.priv* %11, i32 0, i32 0
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 3
  %15 = load %struct.drm_atomic_context*, %struct.drm_atomic_context** %14, align 8
  store %struct.drm_atomic_context* %15, %struct.drm_atomic_context** %5, align 8
  %16 = load %struct.drm_atomic_context*, %struct.drm_atomic_context** %5, align 8
  %17 = call i32 @drm_atomic_save_old_state(%struct.drm_atomic_context* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %1
  %20 = load %struct.ra_ctx*, %struct.ra_ctx** %3, align 8
  %21 = getelementptr inbounds %struct.ra_ctx, %struct.ra_ctx* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @MP_WARN(i32 %22, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  br label %24

24:                                               ; preds = %19, %1
  %25 = call i32 (...) @drmModeAtomicAlloc()
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %24
  %29 = load %struct.ra_ctx*, %struct.ra_ctx** %3, align 8
  %30 = getelementptr inbounds %struct.ra_ctx, %struct.ra_ctx* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 (i32, i8*, ...) @MP_ERR(i32 %31, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %207

33:                                               ; preds = %24
  %34 = load i32, i32* %6, align 4
  %35 = load %struct.drm_atomic_context*, %struct.drm_atomic_context** %5, align 8
  %36 = getelementptr inbounds %struct.drm_atomic_context, %struct.drm_atomic_context* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.priv*, %struct.priv** %4, align 8
  %39 = getelementptr inbounds %struct.priv, %struct.priv* %38, i32 0, i32 0
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i64 @drm_object_set_property(i32 %34, i32 %37, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %42)
  %44 = icmp slt i64 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %33
  %46 = load %struct.ra_ctx*, %struct.ra_ctx** %3, align 8
  %47 = getelementptr inbounds %struct.ra_ctx, %struct.ra_ctx* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i32 (i32, i8*, ...) @MP_ERR(i32 %48, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %207

50:                                               ; preds = %33
  %51 = load %struct.priv*, %struct.priv** %4, align 8
  %52 = getelementptr inbounds %struct.priv, %struct.priv* %51, i32 0, i32 0
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.priv*, %struct.priv** %4, align 8
  %57 = getelementptr inbounds %struct.priv, %struct.priv* %56, i32 0, i32 0
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 2
  %60 = call i32 @drm_mode_ensure_blob(i32 %55, %struct.TYPE_10__* %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %67, label %62

62:                                               ; preds = %50
  %63 = load %struct.ra_ctx*, %struct.ra_ctx** %3, align 8
  %64 = getelementptr inbounds %struct.ra_ctx, %struct.ra_ctx* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = call i32 (i32, i8*, ...) @MP_ERR(i32 %65, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0))
  br label %204

67:                                               ; preds = %50
  %68 = load i32, i32* %6, align 4
  %69 = load %struct.drm_atomic_context*, %struct.drm_atomic_context** %5, align 8
  %70 = getelementptr inbounds %struct.drm_atomic_context, %struct.drm_atomic_context* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.priv*, %struct.priv** %4, align 8
  %73 = getelementptr inbounds %struct.priv, %struct.priv* %72, i32 0, i32 0
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = call i64 @drm_object_set_property(i32 %68, i32 %71, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32 %77)
  %79 = icmp slt i64 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %67
  %81 = load %struct.ra_ctx*, %struct.ra_ctx** %3, align 8
  %82 = getelementptr inbounds %struct.ra_ctx, %struct.ra_ctx* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = call i32 (i32, i8*, ...) @MP_ERR(i32 %83, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0))
  br label %204

85:                                               ; preds = %67
  %86 = load i32, i32* %6, align 4
  %87 = load %struct.drm_atomic_context*, %struct.drm_atomic_context** %5, align 8
  %88 = getelementptr inbounds %struct.drm_atomic_context, %struct.drm_atomic_context* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = call i64 @drm_object_set_property(i32 %86, i32 %89, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i32 1)
  %91 = icmp slt i64 %90, 0
  br i1 %91, label %92, label %97

92:                                               ; preds = %85
  %93 = load %struct.ra_ctx*, %struct.ra_ctx** %3, align 8
  %94 = getelementptr inbounds %struct.ra_ctx, %struct.ra_ctx* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = call i32 (i32, i8*, ...) @MP_ERR(i32 %95, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i64 0, i64 0))
  br label %204

97:                                               ; preds = %85
  %98 = load i32, i32* %6, align 4
  %99 = load %struct.drm_atomic_context*, %struct.drm_atomic_context** %5, align 8
  %100 = getelementptr inbounds %struct.drm_atomic_context, %struct.drm_atomic_context* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.priv*, %struct.priv** %4, align 8
  %103 = getelementptr inbounds %struct.priv, %struct.priv* %102, i32 0, i32 2
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = call i64 @drm_object_set_property(i32 %98, i32 %101, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %106)
  %108 = load i32, i32* %6, align 4
  %109 = load %struct.drm_atomic_context*, %struct.drm_atomic_context** %5, align 8
  %110 = getelementptr inbounds %struct.drm_atomic_context, %struct.drm_atomic_context* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.priv*, %struct.priv** %4, align 8
  %113 = getelementptr inbounds %struct.priv, %struct.priv* %112, i32 0, i32 0
  %114 = load %struct.TYPE_9__*, %struct.TYPE_9__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = call i64 @drm_object_set_property(i32 %108, i32 %111, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %116)
  %118 = load i32, i32* %6, align 4
  %119 = load %struct.drm_atomic_context*, %struct.drm_atomic_context** %5, align 8
  %120 = getelementptr inbounds %struct.drm_atomic_context, %struct.drm_atomic_context* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = call i64 @drm_object_set_property(i32 %118, i32 %121, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i32 0)
  %123 = load i32, i32* %6, align 4
  %124 = load %struct.drm_atomic_context*, %struct.drm_atomic_context** %5, align 8
  %125 = getelementptr inbounds %struct.drm_atomic_context, %struct.drm_atomic_context* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = call i64 @drm_object_set_property(i32 %123, i32 %126, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0), i32 0)
  %128 = load i32, i32* %6, align 4
  %129 = load %struct.drm_atomic_context*, %struct.drm_atomic_context** %5, align 8
  %130 = getelementptr inbounds %struct.drm_atomic_context, %struct.drm_atomic_context* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.priv*, %struct.priv** %4, align 8
  %133 = getelementptr inbounds %struct.priv, %struct.priv* %132, i32 0, i32 1
  %134 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = shl i32 %135, 16
  %137 = call i64 @drm_object_set_property(i32 %128, i32 %131, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0), i32 %136)
  %138 = load i32, i32* %6, align 4
  %139 = load %struct.drm_atomic_context*, %struct.drm_atomic_context** %5, align 8
  %140 = getelementptr inbounds %struct.drm_atomic_context, %struct.drm_atomic_context* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.priv*, %struct.priv** %4, align 8
  %143 = getelementptr inbounds %struct.priv, %struct.priv* %142, i32 0, i32 1
  %144 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = shl i32 %145, 16
  %147 = call i64 @drm_object_set_property(i32 %138, i32 %141, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i64 0, i64 0), i32 %146)
  %148 = load i32, i32* %6, align 4
  %149 = load %struct.drm_atomic_context*, %struct.drm_atomic_context** %5, align 8
  %150 = getelementptr inbounds %struct.drm_atomic_context, %struct.drm_atomic_context* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = call i64 @drm_object_set_property(i32 %148, i32 %151, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i64 0, i64 0), i32 0)
  %153 = load i32, i32* %6, align 4
  %154 = load %struct.drm_atomic_context*, %struct.drm_atomic_context** %5, align 8
  %155 = getelementptr inbounds %struct.drm_atomic_context, %struct.drm_atomic_context* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = call i64 @drm_object_set_property(i32 %153, i32 %156, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i64 0, i64 0), i32 0)
  %158 = load i32, i32* %6, align 4
  %159 = load %struct.drm_atomic_context*, %struct.drm_atomic_context** %5, align 8
  %160 = getelementptr inbounds %struct.drm_atomic_context, %struct.drm_atomic_context* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = load %struct.priv*, %struct.priv** %4, align 8
  %163 = getelementptr inbounds %struct.priv, %struct.priv* %162, i32 0, i32 0
  %164 = load %struct.TYPE_9__*, %struct.TYPE_9__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %164, i32 0, i32 2
  %166 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %165, i32 0, i32 1
  %167 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = call i64 @drm_object_set_property(i32 %158, i32 %161, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i64 0, i64 0), i32 %168)
  %170 = load i32, i32* %6, align 4
  %171 = load %struct.drm_atomic_context*, %struct.drm_atomic_context** %5, align 8
  %172 = getelementptr inbounds %struct.drm_atomic_context, %struct.drm_atomic_context* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  %174 = load %struct.priv*, %struct.priv** %4, align 8
  %175 = getelementptr inbounds %struct.priv, %struct.priv* %174, i32 0, i32 0
  %176 = load %struct.TYPE_9__*, %struct.TYPE_9__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %176, i32 0, i32 2
  %178 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %177, i32 0, i32 1
  %179 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 4
  %181 = call i64 @drm_object_set_property(i32 %170, i32 %173, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i64 0, i64 0), i32 %180)
  %182 = load %struct.priv*, %struct.priv** %4, align 8
  %183 = getelementptr inbounds %struct.priv, %struct.priv* %182, i32 0, i32 0
  %184 = load %struct.TYPE_9__*, %struct.TYPE_9__** %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %184, i32 0, i32 1
  %186 = load i32, i32* %185, align 4
  %187 = load i32, i32* %6, align 4
  %188 = load i32, i32* @DRM_MODE_ATOMIC_ALLOW_MODESET, align 4
  %189 = call i32 @drmModeAtomicCommit(i32 %186, i32 %187, i32 %188, i32* null)
  store i32 %189, i32* %7, align 4
  %190 = load i32, i32* %7, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %198

192:                                              ; preds = %97
  %193 = load %struct.ra_ctx*, %struct.ra_ctx** %3, align 8
  %194 = getelementptr inbounds %struct.ra_ctx, %struct.ra_ctx* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 8
  %196 = load i32, i32* %7, align 4
  %197 = call i32 (i32, i8*, ...) @MP_ERR(i32 %195, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.18, i64 0, i64 0), i32 %196)
  br label %198

198:                                              ; preds = %192, %97
  %199 = load i32, i32* %6, align 4
  %200 = call i32 @drmModeAtomicFree(i32 %199)
  %201 = load i32, i32* %7, align 4
  %202 = icmp eq i32 %201, 0
  %203 = zext i1 %202 to i32
  store i32 %203, i32* %2, align 4
  br label %207

204:                                              ; preds = %92, %80, %62
  %205 = load i32, i32* %6, align 4
  %206 = call i32 @drmModeAtomicFree(i32 %205)
  store i32 0, i32* %2, align 4
  br label %207

207:                                              ; preds = %204, %198, %45, %28
  %208 = load i32, i32* %2, align 4
  ret i32 %208
}

declare dso_local i32 @drm_atomic_save_old_state(%struct.drm_atomic_context*) #1

declare dso_local i32 @MP_WARN(i32, i8*) #1

declare dso_local i32 @drmModeAtomicAlloc(...) #1

declare dso_local i32 @MP_ERR(i32, i8*, ...) #1

declare dso_local i64 @drm_object_set_property(i32, i32, i8*, i32) #1

declare dso_local i32 @drm_mode_ensure_blob(i32, %struct.TYPE_10__*) #1

declare dso_local i32 @drmModeAtomicCommit(i32, i32, i32, i32*) #1

declare dso_local i32 @drmModeAtomicFree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
