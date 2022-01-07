; ModuleID = '/home/carl/AnghaBench/mpv/video/out/hwdec/extr_hwdec_vaapi_gl.c_vaapi_gl_init.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/hwdec/extr_hwdec_vaapi_gl.c_vaapi_gl_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ra_hwdec = type { i32, %struct.priv_owner* }
%struct.priv_owner = type { i32, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i8*, i32 }

@EGL_EXTENSIONS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"EXT_image_dma_buf_import\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"EGL_KHR_image_base\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"GL_OES_EGL_image\00", align 1
@MPGL_CAP_TEX_RG = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"using VAAPI EGL interop\0A\00", align 1
@vaapi_gl_mapper_init = common dso_local global i32 0, align 4
@vaapi_gl_mapper_uninit = common dso_local global i32 0, align 4
@vaapi_gl_map = common dso_local global i32 0, align 4
@vaapi_gl_map_legacy = common dso_local global i32 0, align 4
@vaapi_gl_unmap = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vaapi_gl_init(%struct.ra_hwdec* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ra_hwdec*, align 8
  %4 = alloca %struct.priv_owner*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  store %struct.ra_hwdec* %0, %struct.ra_hwdec** %3, align 8
  %7 = load %struct.ra_hwdec*, %struct.ra_hwdec** %3, align 8
  %8 = getelementptr inbounds %struct.ra_hwdec, %struct.ra_hwdec* %7, i32 0, i32 1
  %9 = load %struct.priv_owner*, %struct.priv_owner** %8, align 8
  store %struct.priv_owner* %9, %struct.priv_owner** %4, align 8
  %10 = load %struct.ra_hwdec*, %struct.ra_hwdec** %3, align 8
  %11 = getelementptr inbounds %struct.ra_hwdec, %struct.ra_hwdec* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @ra_is_gl(i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %71

16:                                               ; preds = %1
  %17 = call i32 (...) @eglGetCurrentContext()
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %16
  store i32 0, i32* %2, align 4
  br label %71

20:                                               ; preds = %16
  %21 = call i32 (...) @eglGetCurrentDisplay()
  %22 = load i32, i32* @EGL_EXTENSIONS, align 4
  %23 = call i8* @eglQueryString(i32 %21, i32 %22)
  store i8* %23, i8** %5, align 8
  %24 = load i8*, i8** %5, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %20
  store i32 0, i32* %2, align 4
  br label %71

27:                                               ; preds = %20
  %28 = load %struct.ra_hwdec*, %struct.ra_hwdec** %3, align 8
  %29 = getelementptr inbounds %struct.ra_hwdec, %struct.ra_hwdec* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call %struct.TYPE_3__* @ra_gl_get(i32 %30)
  store %struct.TYPE_3__* %31, %struct.TYPE_3__** %6, align 8
  %32 = load i8*, i8** %5, align 8
  %33 = call i32 @strstr(i8* %32, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %52

35:                                               ; preds = %27
  %36 = load i8*, i8** %5, align 8
  %37 = call i32 @strstr(i8* %36, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %52

39:                                               ; preds = %35
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  %43 = call i32 @strstr(i8* %42, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %39
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @MPGL_CAP_TEX_RG, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %45, %39, %35, %27
  store i32 0, i32* %2, align 4
  br label %71

53:                                               ; preds = %45
  %54 = load %struct.ra_hwdec*, %struct.ra_hwdec** %3, align 8
  %55 = call i32 @MP_VERBOSE(%struct.ra_hwdec* %54, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  %56 = load i32, i32* @vaapi_gl_mapper_init, align 4
  %57 = load %struct.priv_owner*, %struct.priv_owner** %4, align 8
  %58 = getelementptr inbounds %struct.priv_owner, %struct.priv_owner* %57, i32 0, i32 4
  store i32 %56, i32* %58, align 4
  %59 = load i32, i32* @vaapi_gl_mapper_uninit, align 4
  %60 = load %struct.priv_owner*, %struct.priv_owner** %4, align 8
  %61 = getelementptr inbounds %struct.priv_owner, %struct.priv_owner* %60, i32 0, i32 3
  store i32 %59, i32* %61, align 4
  %62 = load i32, i32* @vaapi_gl_map, align 4
  %63 = load %struct.priv_owner*, %struct.priv_owner** %4, align 8
  %64 = getelementptr inbounds %struct.priv_owner, %struct.priv_owner* %63, i32 0, i32 2
  store i32 %62, i32* %64, align 4
  %65 = load i32, i32* @vaapi_gl_map_legacy, align 4
  %66 = load %struct.priv_owner*, %struct.priv_owner** %4, align 8
  %67 = getelementptr inbounds %struct.priv_owner, %struct.priv_owner* %66, i32 0, i32 1
  store i32 %65, i32* %67, align 4
  %68 = load i32, i32* @vaapi_gl_unmap, align 4
  %69 = load %struct.priv_owner*, %struct.priv_owner** %4, align 8
  %70 = getelementptr inbounds %struct.priv_owner, %struct.priv_owner* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 4
  store i32 1, i32* %2, align 4
  br label %71

71:                                               ; preds = %53, %52, %26, %19, %15
  %72 = load i32, i32* %2, align 4
  ret i32 %72
}

declare dso_local i32 @ra_is_gl(i32) #1

declare dso_local i32 @eglGetCurrentContext(...) #1

declare dso_local i8* @eglQueryString(i32, i32) #1

declare dso_local i32 @eglGetCurrentDisplay(...) #1

declare dso_local %struct.TYPE_3__* @ra_gl_get(i32) #1

declare dso_local i32 @strstr(i8*, i8*) #1

declare dso_local i32 @MP_VERBOSE(%struct.ra_hwdec*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
