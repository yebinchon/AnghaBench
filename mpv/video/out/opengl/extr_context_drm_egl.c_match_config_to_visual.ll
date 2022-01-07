; ModuleID = '/home/carl/AnghaBench/mpv/video/out/opengl/extr_context_drm_egl.c_match_config_to_visual.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/opengl/extr_context_drm_egl.c_match_config_to_visual.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ra_ctx = type { %struct.priv* }
%struct.priv = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [42 x i8] c"Attempting to find EGLConfig matching %s\0A\00", align 1
@EGL_NATIVE_VISUAL_ID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Found matching EGLConfig for %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"No matching EGLConfig for %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [56 x i8] c"Could not find EGLConfig matching the GBM visual (%s).\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*, i32)* @match_config_to_visual to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @match_config_to_visual(i8* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ra_ctx*, align 8
  %9 = alloca %struct.priv*, align 8
  %10 = alloca [3 x i64], align 16
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load i8*, i8** %5, align 8
  %15 = bitcast i8* %14 to %struct.ra_ctx*
  store %struct.ra_ctx* %15, %struct.ra_ctx** %8, align 8
  %16 = load %struct.ra_ctx*, %struct.ra_ctx** %8, align 8
  %17 = getelementptr inbounds %struct.ra_ctx, %struct.ra_ctx* %16, i32 0, i32 0
  %18 = load %struct.priv*, %struct.priv** %17, align 8
  store %struct.priv* %18, %struct.priv** %9, align 8
  %19 = getelementptr inbounds [3 x i64], [3 x i64]* %10, i64 0, i64 0
  %20 = load %struct.priv*, %struct.priv** %9, align 8
  %21 = getelementptr inbounds %struct.priv, %struct.priv* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %19, align 8
  %23 = getelementptr inbounds i64, i64* %19, i64 1
  %24 = load %struct.priv*, %struct.priv** %9, align 8
  %25 = getelementptr inbounds %struct.priv, %struct.priv* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = call i32 @fallback_format_for(i64 %26)
  %28 = sext i32 %27 to i64
  store i64 %28, i64* %23, align 8
  %29 = getelementptr inbounds i64, i64* %23, i64 1
  store i64 0, i64* %29, align 8
  store i32 0, i32* %11, align 4
  br label %30

30:                                               ; preds = %90, %3
  %31 = load i32, i32* %11, align 4
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds [3 x i64], [3 x i64]* %10, i64 0, i64 %32
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %93

36:                                               ; preds = %30
  %37 = load %struct.ra_ctx*, %struct.ra_ctx** %8, align 8
  %38 = load i32, i32* %11, align 4
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds [3 x i64], [3 x i64]* %10, i64 0, i64 %39
  %41 = load i64, i64* %40, align 8
  %42 = call i32 @gbm_format_to_string(i64 %41)
  %43 = call i32 @MP_VERBOSE(%struct.ra_ctx* %37, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %42)
  store i32 0, i32* %12, align 4
  br label %44

44:                                               ; preds = %79, %36
  %45 = load i32, i32* %12, align 4
  %46 = load i32, i32* %7, align 4
  %47 = icmp ult i32 %45, %46
  br i1 %47, label %48, label %82

48:                                               ; preds = %44
  %49 = load %struct.priv*, %struct.priv** %9, align 8
  %50 = getelementptr inbounds %struct.priv, %struct.priv* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32*, i32** %6, align 8
  %54 = load i32, i32* %12, align 4
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @EGL_NATIVE_VISUAL_ID, align 4
  %59 = call i32 @eglGetConfigAttrib(i32 %52, i32 %57, i32 %58, i64* %13)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %48
  br label %79

62:                                               ; preds = %48
  %63 = load i32, i32* %11, align 4
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds [3 x i64], [3 x i64]* %10, i64 0, i64 %64
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* %13, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %78

69:                                               ; preds = %62
  %70 = load %struct.ra_ctx*, %struct.ra_ctx** %8, align 8
  %71 = load i32, i32* %11, align 4
  %72 = zext i32 %71 to i64
  %73 = getelementptr inbounds [3 x i64], [3 x i64]* %10, i64 0, i64 %72
  %74 = load i64, i64* %73, align 8
  %75 = call i32 @gbm_format_to_string(i64 %74)
  %76 = call i32 @MP_VERBOSE(%struct.ra_ctx* %70, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %75)
  %77 = load i32, i32* %12, align 4
  store i32 %77, i32* %4, align 4
  br label %100

78:                                               ; preds = %62
  br label %79

79:                                               ; preds = %78, %61
  %80 = load i32, i32* %12, align 4
  %81 = add i32 %80, 1
  store i32 %81, i32* %12, align 4
  br label %44

82:                                               ; preds = %44
  %83 = load %struct.ra_ctx*, %struct.ra_ctx** %8, align 8
  %84 = load i32, i32* %11, align 4
  %85 = zext i32 %84 to i64
  %86 = getelementptr inbounds [3 x i64], [3 x i64]* %10, i64 0, i64 %85
  %87 = load i64, i64* %86, align 8
  %88 = call i32 @gbm_format_to_string(i64 %87)
  %89 = call i32 @MP_VERBOSE(%struct.ra_ctx* %83, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %88)
  br label %90

90:                                               ; preds = %82
  %91 = load i32, i32* %11, align 4
  %92 = add i32 %91, 1
  store i32 %92, i32* %11, align 4
  br label %30

93:                                               ; preds = %30
  %94 = load %struct.ra_ctx*, %struct.ra_ctx** %8, align 8
  %95 = load %struct.priv*, %struct.priv** %9, align 8
  %96 = getelementptr inbounds %struct.priv, %struct.priv* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = call i32 @gbm_format_to_string(i64 %97)
  %99 = call i32 @MP_ERR(%struct.ra_ctx* %94, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.3, i64 0, i64 0), i32 %98)
  store i32 -1, i32* %4, align 4
  br label %100

100:                                              ; preds = %93, %69
  %101 = load i32, i32* %4, align 4
  ret i32 %101
}

declare dso_local i32 @fallback_format_for(i64) #1

declare dso_local i32 @MP_VERBOSE(%struct.ra_ctx*, i8*, i32) #1

declare dso_local i32 @gbm_format_to_string(i64) #1

declare dso_local i32 @eglGetConfigAttrib(i32, i32, i32, i64*) #1

declare dso_local i32 @MP_ERR(%struct.ra_ctx*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
