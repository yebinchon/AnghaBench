; ModuleID = '/home/carl/AnghaBench/mpv/video/out/extr_vo_vdpau.c_free_video_specific.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/extr_vo_vdpau.c_free_video_specific.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vo = type { %struct.vdpctx* }
%struct.vdpctx = type { i64, %struct.vdp_functions* }
%struct.vdp_functions = type { i32 (i64)* }

@VDP_INVALID_HANDLE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [46 x i8] c"Error when calling vdp_output_surface_destroy\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vo*)* @free_video_specific to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_video_specific(%struct.vo* %0) #0 {
  %2 = alloca %struct.vo*, align 8
  %3 = alloca %struct.vdpctx*, align 8
  %4 = alloca %struct.vdp_functions*, align 8
  %5 = alloca i32, align 4
  store %struct.vo* %0, %struct.vo** %2, align 8
  %6 = load %struct.vo*, %struct.vo** %2, align 8
  %7 = getelementptr inbounds %struct.vo, %struct.vo* %6, i32 0, i32 0
  %8 = load %struct.vdpctx*, %struct.vdpctx** %7, align 8
  store %struct.vdpctx* %8, %struct.vdpctx** %3, align 8
  %9 = load %struct.vdpctx*, %struct.vdpctx** %3, align 8
  %10 = getelementptr inbounds %struct.vdpctx, %struct.vdpctx* %9, i32 0, i32 1
  %11 = load %struct.vdp_functions*, %struct.vdp_functions** %10, align 8
  store %struct.vdp_functions* %11, %struct.vdp_functions** %4, align 8
  %12 = load %struct.vo*, %struct.vo** %2, align 8
  %13 = call i32 @forget_frames(%struct.vo* %12, i32 0)
  %14 = load %struct.vdpctx*, %struct.vdpctx** %3, align 8
  %15 = getelementptr inbounds %struct.vdpctx, %struct.vdpctx* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @VDP_INVALID_HANDLE, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %29

19:                                               ; preds = %1
  %20 = load %struct.vdp_functions*, %struct.vdp_functions** %4, align 8
  %21 = getelementptr inbounds %struct.vdp_functions, %struct.vdp_functions* %20, i32 0, i32 0
  %22 = load i32 (i64)*, i32 (i64)** %21, align 8
  %23 = load %struct.vdpctx*, %struct.vdpctx** %3, align 8
  %24 = getelementptr inbounds %struct.vdpctx, %struct.vdpctx* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = call i32 %22(i64 %25)
  store i32 %26, i32* %5, align 4
  %27 = load %struct.vo*, %struct.vo** %2, align 8
  %28 = call i32 @CHECK_VDP_WARNING(%struct.vo* %27, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  br label %29

29:                                               ; preds = %19, %1
  %30 = load i64, i64* @VDP_INVALID_HANDLE, align 8
  %31 = load %struct.vdpctx*, %struct.vdpctx** %3, align 8
  %32 = getelementptr inbounds %struct.vdpctx, %struct.vdpctx* %31, i32 0, i32 0
  store i64 %30, i64* %32, align 8
  ret void
}

declare dso_local i32 @forget_frames(%struct.vo*, i32) #1

declare dso_local i32 @CHECK_VDP_WARNING(%struct.vo*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
