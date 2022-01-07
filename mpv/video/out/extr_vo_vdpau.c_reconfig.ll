; ModuleID = '/home/carl/AnghaBench/mpv/video/out/extr_vo_vdpau.c_reconfig.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/extr_vo_vdpau.c_reconfig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vo = type { %struct.vdpctx* }
%struct.vdpctx = type { i64, i64, i32, i32, i32, %struct.vdp_functions* }
%struct.vdp_functions = type { i32 (i32, i32, i64*, i64*, i64*)* }
%struct.mp_image_params = type { i64, i64, i32 }

@VDP_CHROMA_TYPE_420 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"Error when calling vdp_video_surface_query_capabilities\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"Video too large for vdpau.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vo*, %struct.mp_image_params*)* @reconfig to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reconfig(%struct.vo* %0, %struct.mp_image_params* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vo*, align 8
  %5 = alloca %struct.mp_image_params*, align 8
  %6 = alloca %struct.vdpctx*, align 8
  %7 = alloca %struct.vdp_functions*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.vo* %0, %struct.vo** %4, align 8
  store %struct.mp_image_params* %1, %struct.mp_image_params** %5, align 8
  %13 = load %struct.vo*, %struct.vo** %4, align 8
  %14 = getelementptr inbounds %struct.vo, %struct.vo* %13, i32 0, i32 0
  %15 = load %struct.vdpctx*, %struct.vdpctx** %14, align 8
  store %struct.vdpctx* %15, %struct.vdpctx** %6, align 8
  %16 = load %struct.vdpctx*, %struct.vdpctx** %6, align 8
  %17 = getelementptr inbounds %struct.vdpctx, %struct.vdpctx* %16, i32 0, i32 5
  %18 = load %struct.vdp_functions*, %struct.vdp_functions** %17, align 8
  store %struct.vdp_functions* %18, %struct.vdp_functions** %7, align 8
  %19 = load %struct.vo*, %struct.vo** %4, align 8
  %20 = call i32 @check_preemption(%struct.vo* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %92

23:                                               ; preds = %2
  %24 = load i32, i32* @VDP_CHROMA_TYPE_420, align 4
  store i32 %24, i32* %9, align 4
  %25 = load %struct.mp_image_params*, %struct.mp_image_params** %5, align 8
  %26 = getelementptr inbounds %struct.mp_image_params, %struct.mp_image_params* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @mp_vdpau_get_format(i32 %27, i32* %9, i32* null)
  %29 = load %struct.vdp_functions*, %struct.vdp_functions** %7, align 8
  %30 = getelementptr inbounds %struct.vdp_functions, %struct.vdp_functions* %29, i32 0, i32 0
  %31 = load i32 (i32, i32, i64*, i64*, i64*)*, i32 (i32, i32, i64*, i64*, i64*)** %30, align 8
  %32 = load %struct.vdpctx*, %struct.vdpctx** %6, align 8
  %33 = getelementptr inbounds %struct.vdpctx, %struct.vdpctx* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* %9, align 4
  %36 = call i32 %31(i32 %34, i32 %35, i64* %10, i64* %11, i64* %12)
  store i32 %36, i32* %8, align 4
  %37 = load %struct.vo*, %struct.vo** %4, align 8
  %38 = call i32 @CHECK_VDP_ERROR(%struct.vo* %37, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0))
  %39 = load i64, i64* %10, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %23
  store i32 -1, i32* %3, align 4
  br label %92

42:                                               ; preds = %23
  %43 = load %struct.mp_image_params*, %struct.mp_image_params** %5, align 8
  %44 = getelementptr inbounds %struct.mp_image_params, %struct.mp_image_params* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* %11, align 8
  %47 = icmp sgt i64 %45, %46
  br i1 %47, label %54, label %48

48:                                               ; preds = %42
  %49 = load %struct.mp_image_params*, %struct.mp_image_params** %5, align 8
  %50 = getelementptr inbounds %struct.mp_image_params, %struct.mp_image_params* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* %12, align 8
  %53 = icmp sgt i64 %51, %52
  br i1 %53, label %54, label %61

54:                                               ; preds = %48, %42
  %55 = load i64, i64* %10, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %54
  %58 = load %struct.vo*, %struct.vo** %4, align 8
  %59 = call i32 @MP_ERR(%struct.vo* %58, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %60

60:                                               ; preds = %57, %54
  store i32 -1, i32* %3, align 4
  br label %92

61:                                               ; preds = %48
  %62 = load %struct.mp_image_params*, %struct.mp_image_params** %5, align 8
  %63 = getelementptr inbounds %struct.mp_image_params, %struct.mp_image_params* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.vdpctx*, %struct.vdpctx** %6, align 8
  %66 = getelementptr inbounds %struct.vdpctx, %struct.vdpctx* %65, i32 0, i32 3
  store i32 %64, i32* %66, align 4
  %67 = load %struct.mp_image_params*, %struct.mp_image_params** %5, align 8
  %68 = getelementptr inbounds %struct.mp_image_params, %struct.mp_image_params* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.vdpctx*, %struct.vdpctx** %6, align 8
  %71 = getelementptr inbounds %struct.vdpctx, %struct.vdpctx* %70, i32 0, i32 0
  store i64 %69, i64* %71, align 8
  %72 = load %struct.mp_image_params*, %struct.mp_image_params** %5, align 8
  %73 = getelementptr inbounds %struct.mp_image_params, %struct.mp_image_params* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.vdpctx*, %struct.vdpctx** %6, align 8
  %76 = getelementptr inbounds %struct.vdpctx, %struct.vdpctx* %75, i32 0, i32 1
  store i64 %74, i64* %76, align 8
  %77 = load %struct.mp_image_params*, %struct.mp_image_params** %5, align 8
  %78 = getelementptr inbounds %struct.mp_image_params, %struct.mp_image_params* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @mp_vdpau_get_rgb_format(i32 %79, i32* null)
  %81 = load %struct.vdpctx*, %struct.vdpctx** %6, align 8
  %82 = getelementptr inbounds %struct.vdpctx, %struct.vdpctx* %81, i32 0, i32 2
  store i32 %80, i32* %82, align 8
  %83 = load %struct.vo*, %struct.vo** %4, align 8
  %84 = call i32 @free_video_specific(%struct.vo* %83)
  %85 = load %struct.vo*, %struct.vo** %4, align 8
  %86 = call i32 @vo_x11_config_vo_window(%struct.vo* %85)
  %87 = load %struct.vo*, %struct.vo** %4, align 8
  %88 = call i64 @initialize_vdpau_objects(%struct.vo* %87)
  %89 = icmp slt i64 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %61
  store i32 -1, i32* %3, align 4
  br label %92

91:                                               ; preds = %61
  store i32 0, i32* %3, align 4
  br label %92

92:                                               ; preds = %91, %90, %60, %41, %22
  %93 = load i32, i32* %3, align 4
  ret i32 %93
}

declare dso_local i32 @check_preemption(%struct.vo*) #1

declare dso_local i32 @mp_vdpau_get_format(i32, i32*, i32*) #1

declare dso_local i32 @CHECK_VDP_ERROR(%struct.vo*, i8*) #1

declare dso_local i32 @MP_ERR(%struct.vo*, i8*) #1

declare dso_local i32 @mp_vdpau_get_rgb_format(i32, i32*) #1

declare dso_local i32 @free_video_specific(%struct.vo*) #1

declare dso_local i32 @vo_x11_config_vo_window(%struct.vo*) #1

declare dso_local i64 @initialize_vdpau_objects(%struct.vo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
