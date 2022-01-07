; ModuleID = '/home/carl/AnghaBench/mpv/video/out/extr_vo_drm.c_fb_setup_single.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/extr_vo_drm.c_fb_setup_single.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vo = type { %struct.priv* }
%struct.priv = type { i32 }
%struct.framebuffer = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.drm_mode_create_dumb = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.drm_mode_map_dumb = type { i32, i32, i32, i32, i32, i32, i32 }

@BITS_PER_PIXEL = common dso_local global i32 0, align 4
@DRM_IOCTL_MODE_CREATE_DUMB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Cannot create dumb buffer: %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Cannot create framebuffer: %s\0A\00", align 1
@DRM_IOCTL_MODE_MAP_DUMB = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"Cannot map dumb buffer: %s\0A\00", align 1
@PROT_READ = common dso_local global i32 0, align 4
@PROT_WRITE = common dso_local global i32 0, align 4
@MAP_SHARED = common dso_local global i32 0, align 4
@MAP_FAILED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vo*, i32, %struct.framebuffer*)* @fb_setup_single to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fb_setup_single(%struct.vo* %0, i32 %1, %struct.framebuffer* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.vo*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.framebuffer*, align 8
  %8 = alloca %struct.priv*, align 8
  %9 = alloca %struct.drm_mode_create_dumb, align 4
  %10 = alloca %struct.drm_mode_map_dumb, align 4
  store %struct.vo* %0, %struct.vo** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.framebuffer* %2, %struct.framebuffer** %7, align 8
  %11 = load %struct.vo*, %struct.vo** %5, align 8
  %12 = getelementptr inbounds %struct.vo, %struct.vo* %11, i32 0, i32 0
  %13 = load %struct.priv*, %struct.priv** %12, align 8
  store %struct.priv* %13, %struct.priv** %8, align 8
  %14 = load %struct.framebuffer*, %struct.framebuffer** %7, align 8
  %15 = getelementptr inbounds %struct.framebuffer, %struct.framebuffer* %14, i32 0, i32 2
  store i32 0, i32* %15, align 4
  %16 = getelementptr inbounds %struct.drm_mode_create_dumb, %struct.drm_mode_create_dumb* %9, i32 0, i32 0
  store i32 0, i32* %16, align 4
  %17 = getelementptr inbounds %struct.drm_mode_create_dumb, %struct.drm_mode_create_dumb* %9, i32 0, i32 1
  store i32 0, i32* %17, align 4
  %18 = getelementptr inbounds %struct.drm_mode_create_dumb, %struct.drm_mode_create_dumb* %9, i32 0, i32 2
  %19 = load i32, i32* @BITS_PER_PIXEL, align 4
  store i32 %19, i32* %18, align 4
  %20 = getelementptr inbounds %struct.drm_mode_create_dumb, %struct.drm_mode_create_dumb* %9, i32 0, i32 3
  store i32 0, i32* %20, align 4
  %21 = getelementptr inbounds %struct.drm_mode_create_dumb, %struct.drm_mode_create_dumb* %9, i32 0, i32 4
  store i32 0, i32* %21, align 4
  %22 = getelementptr inbounds %struct.drm_mode_create_dumb, %struct.drm_mode_create_dumb* %9, i32 0, i32 5
  %23 = load %struct.framebuffer*, %struct.framebuffer** %7, align 8
  %24 = getelementptr inbounds %struct.framebuffer, %struct.framebuffer* %23, i32 0, i32 5
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %22, align 4
  %26 = getelementptr inbounds %struct.drm_mode_create_dumb, %struct.drm_mode_create_dumb* %9, i32 0, i32 6
  %27 = load %struct.framebuffer*, %struct.framebuffer** %7, align 8
  %28 = getelementptr inbounds %struct.framebuffer, %struct.framebuffer* %27, i32 0, i32 6
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %26, align 4
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* @DRM_IOCTL_MODE_CREATE_DUMB, align 4
  %32 = bitcast %struct.drm_mode_create_dumb* %9 to %struct.drm_mode_map_dumb*
  %33 = call i64 @drmIoctl(i32 %30, i32 %31, %struct.drm_mode_map_dumb* %32)
  %34 = icmp slt i64 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %3
  %36 = load %struct.vo*, %struct.vo** %5, align 8
  %37 = load i32, i32* @errno, align 4
  %38 = call i32 @mp_strerror(i32 %37)
  %39 = call i32 @MP_ERR(%struct.vo* %36, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %38)
  br label %127

40:                                               ; preds = %3
  %41 = getelementptr inbounds %struct.drm_mode_create_dumb, %struct.drm_mode_create_dumb* %9, i32 0, i32 4
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.framebuffer*, %struct.framebuffer** %7, align 8
  %44 = getelementptr inbounds %struct.framebuffer, %struct.framebuffer* %43, i32 0, i32 4
  store i32 %42, i32* %44, align 4
  %45 = getelementptr inbounds %struct.drm_mode_create_dumb, %struct.drm_mode_create_dumb* %9, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.framebuffer*, %struct.framebuffer** %7, align 8
  %48 = getelementptr inbounds %struct.framebuffer, %struct.framebuffer* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 4
  %49 = getelementptr inbounds %struct.drm_mode_create_dumb, %struct.drm_mode_create_dumb* %9, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.framebuffer*, %struct.framebuffer** %7, align 8
  %52 = getelementptr inbounds %struct.framebuffer, %struct.framebuffer* %51, i32 0, i32 2
  store i32 %50, i32* %52, align 4
  %53 = load i32, i32* %6, align 4
  %54 = load %struct.framebuffer*, %struct.framebuffer** %7, align 8
  %55 = getelementptr inbounds %struct.framebuffer, %struct.framebuffer* %54, i32 0, i32 6
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.framebuffer*, %struct.framebuffer** %7, align 8
  %58 = getelementptr inbounds %struct.framebuffer, %struct.framebuffer* %57, i32 0, i32 5
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.priv*, %struct.priv** %8, align 8
  %61 = getelementptr inbounds %struct.priv, %struct.priv* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = getelementptr inbounds %struct.drm_mode_create_dumb, %struct.drm_mode_create_dumb* %9, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.framebuffer*, %struct.framebuffer** %7, align 8
  %66 = getelementptr inbounds %struct.framebuffer, %struct.framebuffer* %65, i32 0, i32 4
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.framebuffer*, %struct.framebuffer** %7, align 8
  %69 = getelementptr inbounds %struct.framebuffer, %struct.framebuffer* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.framebuffer*, %struct.framebuffer** %7, align 8
  %72 = getelementptr inbounds %struct.framebuffer, %struct.framebuffer* %71, i32 0, i32 3
  %73 = call i64 @drmModeAddFB(i32 %53, i32 %56, i32 %59, i32 %62, i32 %64, i32 %67, i32 %70, i32* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %80

75:                                               ; preds = %40
  %76 = load %struct.vo*, %struct.vo** %5, align 8
  %77 = load i32, i32* @errno, align 4
  %78 = call i32 @mp_strerror(i32 %77)
  %79 = call i32 @MP_ERR(%struct.vo* %76, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %78)
  br label %127

80:                                               ; preds = %40
  %81 = bitcast %struct.drm_mode_map_dumb* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %81, i8 0, i64 28, i1 false)
  %82 = getelementptr inbounds %struct.drm_mode_map_dumb, %struct.drm_mode_map_dumb* %10, i32 0, i32 1
  %83 = load %struct.framebuffer*, %struct.framebuffer** %7, align 8
  %84 = getelementptr inbounds %struct.framebuffer, %struct.framebuffer* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  store i32 %85, i32* %82, align 4
  %86 = load i32, i32* %6, align 4
  %87 = load i32, i32* @DRM_IOCTL_MODE_MAP_DUMB, align 4
  %88 = call i64 @drmIoctl(i32 %86, i32 %87, %struct.drm_mode_map_dumb* %10)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %95

90:                                               ; preds = %80
  %91 = load %struct.vo*, %struct.vo** %5, align 8
  %92 = load i32, i32* @errno, align 4
  %93 = call i32 @mp_strerror(i32 %92)
  %94 = call i32 @MP_ERR(%struct.vo* %91, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %93)
  br label %127

95:                                               ; preds = %80
  %96 = load %struct.framebuffer*, %struct.framebuffer** %7, align 8
  %97 = getelementptr inbounds %struct.framebuffer, %struct.framebuffer* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @PROT_READ, align 4
  %100 = load i32, i32* @PROT_WRITE, align 4
  %101 = or i32 %99, %100
  %102 = load i32, i32* @MAP_SHARED, align 4
  %103 = load i32, i32* %6, align 4
  %104 = getelementptr inbounds %struct.drm_mode_map_dumb, %struct.drm_mode_map_dumb* %10, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @mmap(i32 0, i32 %98, i32 %101, i32 %102, i32 %103, i32 %105)
  %107 = load %struct.framebuffer*, %struct.framebuffer** %7, align 8
  %108 = getelementptr inbounds %struct.framebuffer, %struct.framebuffer* %107, i32 0, i32 1
  store i32 %106, i32* %108, align 4
  %109 = load %struct.framebuffer*, %struct.framebuffer** %7, align 8
  %110 = getelementptr inbounds %struct.framebuffer, %struct.framebuffer* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* @MAP_FAILED, align 4
  %113 = icmp eq i32 %111, %112
  br i1 %113, label %114, label %119

114:                                              ; preds = %95
  %115 = load %struct.vo*, %struct.vo** %5, align 8
  %116 = load i32, i32* @errno, align 4
  %117 = call i32 @mp_strerror(i32 %116)
  %118 = call i32 @MP_ERR(%struct.vo* %115, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %117)
  br label %127

119:                                              ; preds = %95
  %120 = load %struct.framebuffer*, %struct.framebuffer** %7, align 8
  %121 = getelementptr inbounds %struct.framebuffer, %struct.framebuffer* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.framebuffer*, %struct.framebuffer** %7, align 8
  %124 = getelementptr inbounds %struct.framebuffer, %struct.framebuffer* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @memset(i32 %122, i32 0, i32 %125)
  store i32 1, i32* %4, align 4
  br label %131

127:                                              ; preds = %114, %90, %75, %35
  %128 = load i32, i32* %6, align 4
  %129 = load %struct.framebuffer*, %struct.framebuffer** %7, align 8
  %130 = call i32 @fb_destroy(i32 %128, %struct.framebuffer* %129)
  store i32 0, i32* %4, align 4
  br label %131

131:                                              ; preds = %127, %119
  %132 = load i32, i32* %4, align 4
  ret i32 %132
}

declare dso_local i64 @drmIoctl(i32, i32, %struct.drm_mode_map_dumb*) #1

declare dso_local i32 @MP_ERR(%struct.vo*, i8*, i32) #1

declare dso_local i32 @mp_strerror(i32) #1

declare dso_local i64 @drmModeAddFB(i32, i32, i32, i32, i32, i32, i32, i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @mmap(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @fb_destroy(i32, %struct.framebuffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
