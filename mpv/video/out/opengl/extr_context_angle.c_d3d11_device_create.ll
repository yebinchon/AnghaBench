; ModuleID = '/home/carl/AnghaBench/mpv/video/out/opengl/extr_context_angle.c_d3d11_device_create.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/opengl/extr_context_angle.c_d3d11_device_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ra_ctx = type { %struct.vo*, %struct.priv* }
%struct.vo = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.priv = type { i32, i32, i32, i32, %struct.angle_opts* }
%struct.angle_opts = type { i32, i32 }
%struct.d3d11_device_opts = type { i32, i32, i32, i32, i32 }

@D3D_FEATURE_LEVEL_9_3 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"eglGetPlatformDisplayEXT\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"Missing EGL_EXT_platform_base\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"eglCreateDeviceANGLE\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"Missing EGL_EXT_platform_device\0A\00", align 1
@EGL_D3D11_DEVICE_ANGLE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [28 x i8] c"Couldn't create EGL device\0A\00", align 1
@EGL_PLATFORM_DEVICE_EXT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [26 x i8] c"Couldn't get EGL display\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ra_ctx*)* @d3d11_device_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @d3d11_device_create(%struct.ra_ctx* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ra_ctx*, align 8
  %4 = alloca %struct.priv*, align 8
  %5 = alloca %struct.vo*, align 8
  %6 = alloca %struct.angle_opts*, align 8
  %7 = alloca %struct.d3d11_device_opts, align 4
  %8 = alloca i32 (i32, i32, i32*)*, align 8
  %9 = alloca i32 (i32, i32, i32*)*, align 8
  store %struct.ra_ctx* %0, %struct.ra_ctx** %3, align 8
  %10 = load %struct.ra_ctx*, %struct.ra_ctx** %3, align 8
  %11 = getelementptr inbounds %struct.ra_ctx, %struct.ra_ctx* %10, i32 0, i32 1
  %12 = load %struct.priv*, %struct.priv** %11, align 8
  store %struct.priv* %12, %struct.priv** %4, align 8
  %13 = load %struct.ra_ctx*, %struct.ra_ctx** %3, align 8
  %14 = getelementptr inbounds %struct.ra_ctx, %struct.ra_ctx* %13, i32 0, i32 0
  %15 = load %struct.vo*, %struct.vo** %14, align 8
  store %struct.vo* %15, %struct.vo** %5, align 8
  %16 = load %struct.priv*, %struct.priv** %4, align 8
  %17 = getelementptr inbounds %struct.priv, %struct.priv* %16, i32 0, i32 4
  %18 = load %struct.angle_opts*, %struct.angle_opts** %17, align 8
  store %struct.angle_opts* %18, %struct.angle_opts** %6, align 8
  %19 = getelementptr inbounds %struct.d3d11_device_opts, %struct.d3d11_device_opts* %7, i32 0, i32 0
  %20 = load %struct.angle_opts*, %struct.angle_opts** %6, align 8
  %21 = getelementptr inbounds %struct.angle_opts, %struct.angle_opts* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  %24 = zext i1 %23 to i32
  store i32 %24, i32* %19, align 4
  %25 = getelementptr inbounds %struct.d3d11_device_opts, %struct.d3d11_device_opts* %7, i32 0, i32 1
  %26 = load %struct.angle_opts*, %struct.angle_opts** %6, align 8
  %27 = getelementptr inbounds %struct.angle_opts, %struct.angle_opts* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp eq i32 %28, 1
  %30 = zext i1 %29 to i32
  store i32 %30, i32* %25, align 4
  %31 = getelementptr inbounds %struct.d3d11_device_opts, %struct.d3d11_device_opts* %7, i32 0, i32 2
  %32 = load %struct.ra_ctx*, %struct.ra_ctx** %3, align 8
  %33 = getelementptr inbounds %struct.ra_ctx, %struct.ra_ctx* %32, i32 0, i32 0
  %34 = load %struct.vo*, %struct.vo** %33, align 8
  %35 = getelementptr inbounds %struct.vo, %struct.vo* %34, i32 0, i32 1
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %31, align 4
  %39 = getelementptr inbounds %struct.d3d11_device_opts, %struct.d3d11_device_opts* %7, i32 0, i32 3
  %40 = load i32, i32* @D3D_FEATURE_LEVEL_9_3, align 4
  store i32 %40, i32* %39, align 4
  %41 = getelementptr inbounds %struct.d3d11_device_opts, %struct.d3d11_device_opts* %7, i32 0, i32 4
  %42 = load %struct.angle_opts*, %struct.angle_opts** %6, align 8
  %43 = getelementptr inbounds %struct.angle_opts, %struct.angle_opts* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %41, align 4
  %45 = load %struct.vo*, %struct.vo** %5, align 8
  %46 = getelementptr inbounds %struct.vo, %struct.vo* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.priv*, %struct.priv** %4, align 8
  %49 = getelementptr inbounds %struct.priv, %struct.priv* %48, i32 0, i32 2
  %50 = call i32 @mp_d3d11_create_present_device(i32 %47, %struct.d3d11_device_opts* %7, i32* %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %110

53:                                               ; preds = %1
  %54 = load %struct.priv*, %struct.priv** %4, align 8
  %55 = getelementptr inbounds %struct.priv, %struct.priv* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.priv*, %struct.priv** %4, align 8
  %58 = getelementptr inbounds %struct.priv, %struct.priv* %57, i32 0, i32 3
  %59 = call i32 @ID3D11Device_GetImmediateContext(i32 %56, i32* %58)
  %60 = call i32 @eglGetProcAddress(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %61 = sext i32 %60 to i64
  %62 = inttoptr i64 %61 to i32 (i32, i32, i32*)*
  store i32 (i32, i32, i32*)* %62, i32 (i32, i32, i32*)** %8, align 8
  %63 = load i32 (i32, i32, i32*)*, i32 (i32, i32, i32*)** %8, align 8
  %64 = icmp ne i32 (i32, i32, i32*)* %63, null
  br i1 %64, label %68, label %65

65:                                               ; preds = %53
  %66 = load %struct.vo*, %struct.vo** %5, align 8
  %67 = call i32 @MP_FATAL(%struct.vo* %66, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %110

68:                                               ; preds = %53
  %69 = call i32 @eglGetProcAddress(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %70 = sext i32 %69 to i64
  %71 = inttoptr i64 %70 to i32 (i32, i32, i32*)*
  store i32 (i32, i32, i32*)* %71, i32 (i32, i32, i32*)** %9, align 8
  %72 = load i32 (i32, i32, i32*)*, i32 (i32, i32, i32*)** %9, align 8
  %73 = icmp ne i32 (i32, i32, i32*)* %72, null
  br i1 %73, label %77, label %74

74:                                               ; preds = %68
  %75 = load %struct.vo*, %struct.vo** %5, align 8
  %76 = call i32 @MP_FATAL(%struct.vo* %75, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %110

77:                                               ; preds = %68
  %78 = load i32 (i32, i32, i32*)*, i32 (i32, i32, i32*)** %9, align 8
  %79 = load i32, i32* @EGL_D3D11_DEVICE_ANGLE, align 4
  %80 = load %struct.priv*, %struct.priv** %4, align 8
  %81 = getelementptr inbounds %struct.priv, %struct.priv* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = call i32 %78(i32 %79, i32 %82, i32* null)
  %84 = load %struct.priv*, %struct.priv** %4, align 8
  %85 = getelementptr inbounds %struct.priv, %struct.priv* %84, i32 0, i32 1
  store i32 %83, i32* %85, align 4
  %86 = load %struct.priv*, %struct.priv** %4, align 8
  %87 = getelementptr inbounds %struct.priv, %struct.priv* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %93, label %90

90:                                               ; preds = %77
  %91 = load %struct.vo*, %struct.vo** %5, align 8
  %92 = call i32 @MP_FATAL(%struct.vo* %91, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %110

93:                                               ; preds = %77
  %94 = load i32 (i32, i32, i32*)*, i32 (i32, i32, i32*)** %8, align 8
  %95 = load i32, i32* @EGL_PLATFORM_DEVICE_EXT, align 4
  %96 = load %struct.priv*, %struct.priv** %4, align 8
  %97 = getelementptr inbounds %struct.priv, %struct.priv* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = call i32 %94(i32 %95, i32 %98, i32* null)
  %100 = load %struct.priv*, %struct.priv** %4, align 8
  %101 = getelementptr inbounds %struct.priv, %struct.priv* %100, i32 0, i32 0
  store i32 %99, i32* %101, align 8
  %102 = load %struct.priv*, %struct.priv** %4, align 8
  %103 = getelementptr inbounds %struct.priv, %struct.priv* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %109, label %106

106:                                              ; preds = %93
  %107 = load %struct.vo*, %struct.vo** %5, align 8
  %108 = call i32 @MP_FATAL(%struct.vo* %107, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %110

109:                                              ; preds = %93
  store i32 1, i32* %2, align 4
  br label %110

110:                                              ; preds = %109, %106, %90, %74, %65, %52
  %111 = load i32, i32* %2, align 4
  ret i32 %111
}

declare dso_local i32 @mp_d3d11_create_present_device(i32, %struct.d3d11_device_opts*, i32*) #1

declare dso_local i32 @ID3D11Device_GetImmediateContext(i32, i32*) #1

declare dso_local i32 @eglGetProcAddress(i8*) #1

declare dso_local i32 @MP_FATAL(%struct.vo*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
