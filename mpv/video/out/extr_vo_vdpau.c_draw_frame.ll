; ModuleID = '/home/carl/AnghaBench/mpv/video/out/extr_vo_vdpau.c_draw_frame.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/extr_vo_vdpau.c_draw_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vo = type { %struct.vdpctx* }
%struct.vdpctx = type { %struct.mp_image*, i32, i32, i32 }
%struct.mp_image = type { i32 }
%struct.vo_frame = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [25 x i8] c"Could not upload image.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vo*, %struct.vo_frame*)* @draw_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @draw_frame(%struct.vo* %0, %struct.vo_frame* %1) #0 {
  %3 = alloca %struct.vo*, align 8
  %4 = alloca %struct.vo_frame*, align 8
  %5 = alloca %struct.vdpctx*, align 8
  %6 = alloca %struct.mp_image*, align 8
  store %struct.vo* %0, %struct.vo** %3, align 8
  store %struct.vo_frame* %1, %struct.vo_frame** %4, align 8
  %7 = load %struct.vo*, %struct.vo** %3, align 8
  %8 = getelementptr inbounds %struct.vo, %struct.vo* %7, i32 0, i32 0
  %9 = load %struct.vdpctx*, %struct.vdpctx** %8, align 8
  store %struct.vdpctx* %9, %struct.vdpctx** %5, align 8
  %10 = load %struct.vo*, %struct.vo** %3, align 8
  %11 = call i32 @check_preemption(%struct.vo* %10)
  %12 = load %struct.vo_frame*, %struct.vo_frame** %4, align 8
  %13 = getelementptr inbounds %struct.vo_frame, %struct.vo_frame* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %42

16:                                               ; preds = %2
  %17 = load %struct.vo_frame*, %struct.vo_frame** %4, align 8
  %18 = getelementptr inbounds %struct.vo_frame, %struct.vo_frame* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %42, label %21

21:                                               ; preds = %16
  %22 = load %struct.vdpctx*, %struct.vdpctx** %5, align 8
  %23 = getelementptr inbounds %struct.vdpctx, %struct.vdpctx* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.vo_frame*, %struct.vo_frame** %4, align 8
  %26 = getelementptr inbounds %struct.vo_frame, %struct.vo_frame* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = call %struct.mp_image* @mp_vdpau_upload_video_surface(i32 %24, i32 %27)
  store %struct.mp_image* %28, %struct.mp_image** %6, align 8
  %29 = load %struct.mp_image*, %struct.mp_image** %6, align 8
  %30 = icmp ne %struct.mp_image* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %21
  %32 = load %struct.vo*, %struct.vo** %3, align 8
  %33 = call i32 @MP_ERR(%struct.vo* %32, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %34

34:                                               ; preds = %31, %21
  %35 = load %struct.vdpctx*, %struct.vdpctx** %5, align 8
  %36 = getelementptr inbounds %struct.vdpctx, %struct.vdpctx* %35, i32 0, i32 0
  %37 = load %struct.mp_image*, %struct.mp_image** %36, align 8
  %38 = call i32 @talloc_free(%struct.mp_image* %37)
  %39 = load %struct.mp_image*, %struct.mp_image** %6, align 8
  %40 = load %struct.vdpctx*, %struct.vdpctx** %5, align 8
  %41 = getelementptr inbounds %struct.vdpctx, %struct.vdpctx* %40, i32 0, i32 0
  store %struct.mp_image* %39, %struct.mp_image** %41, align 8
  br label %42

42:                                               ; preds = %34, %16, %2
  %43 = load %struct.vo_frame*, %struct.vo_frame** %4, align 8
  %44 = getelementptr inbounds %struct.vo_frame, %struct.vo_frame* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.vdpctx*, %struct.vdpctx** %5, align 8
  %47 = getelementptr inbounds %struct.vdpctx, %struct.vdpctx* %46, i32 0, i32 2
  store i32 %45, i32* %47, align 4
  %48 = load %struct.vo_frame*, %struct.vo_frame** %4, align 8
  %49 = getelementptr inbounds %struct.vo_frame, %struct.vo_frame* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.vdpctx*, %struct.vdpctx** %5, align 8
  %52 = getelementptr inbounds %struct.vdpctx, %struct.vdpctx* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 8
  %53 = load %struct.vo*, %struct.vo** %3, align 8
  %54 = call i64 @status_ok(%struct.vo* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %64

56:                                               ; preds = %42
  %57 = load %struct.vo*, %struct.vo** %3, align 8
  %58 = load %struct.vdpctx*, %struct.vdpctx** %5, align 8
  %59 = getelementptr inbounds %struct.vdpctx, %struct.vdpctx* %58, i32 0, i32 0
  %60 = load %struct.mp_image*, %struct.mp_image** %59, align 8
  %61 = call i32 @video_to_output_surface(%struct.vo* %57, %struct.mp_image* %60)
  %62 = load %struct.vo*, %struct.vo** %3, align 8
  %63 = call i32 @draw_osd(%struct.vo* %62)
  br label %64

64:                                               ; preds = %56, %42
  ret void
}

declare dso_local i32 @check_preemption(%struct.vo*) #1

declare dso_local %struct.mp_image* @mp_vdpau_upload_video_surface(i32, i32) #1

declare dso_local i32 @MP_ERR(%struct.vo*, i8*) #1

declare dso_local i32 @talloc_free(%struct.mp_image*) #1

declare dso_local i64 @status_ok(%struct.vo*) #1

declare dso_local i32 @video_to_output_surface(%struct.vo*, %struct.mp_image*) #1

declare dso_local i32 @draw_osd(%struct.vo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
