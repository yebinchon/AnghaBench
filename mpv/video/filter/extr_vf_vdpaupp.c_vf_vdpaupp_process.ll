; ModuleID = '/home/carl/AnghaBench/mpv/video/filter/extr_vf_vdpaupp.c_vf_vdpaupp_process.c'
source_filename = "/home/carl/AnghaBench/mpv/video/filter/extr_vf_vdpaupp.c_vf_vdpaupp_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_filter = type { %struct.priv* }
%struct.priv = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.mp_image = type { %struct.TYPE_4__, i8** }
%struct.TYPE_4__ = type { i64 }
%struct.mp_vdpau_mixer_frame = type { i8*, i32, i8**, i8**, i32 }

@VDP_VIDEO_MIXER_PICTURE_STRUCTURE_FRAME = common dso_local global i32 0, align 4
@VDP_VIDEO_MIXER_PICTURE_STRUCTURE_TOP_FIELD = common dso_local global i32 0, align 4
@VDP_VIDEO_MIXER_PICTURE_STRUCTURE_BOTTOM_FIELD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mp_filter*)* @vf_vdpaupp_process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vf_vdpaupp_process(%struct.mp_filter* %0) #0 {
  %2 = alloca %struct.mp_filter*, align 8
  %3 = alloca %struct.priv*, align 8
  %4 = alloca %struct.mp_image*, align 8
  %5 = alloca %struct.mp_vdpau_mixer_frame*, align 8
  store %struct.mp_filter* %0, %struct.mp_filter** %2, align 8
  %6 = load %struct.mp_filter*, %struct.mp_filter** %2, align 8
  %7 = getelementptr inbounds %struct.mp_filter, %struct.mp_filter* %6, i32 0, i32 0
  %8 = load %struct.priv*, %struct.priv** %7, align 8
  store %struct.priv* %8, %struct.priv** %3, align 8
  %9 = load %struct.priv*, %struct.priv** %3, align 8
  %10 = getelementptr inbounds %struct.priv, %struct.priv* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @mp_refqueue_execute_reinit(i32 %11)
  %13 = load %struct.priv*, %struct.priv** %3, align 8
  %14 = getelementptr inbounds %struct.priv, %struct.priv* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @mp_refqueue_can_output(i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %1
  br label %106

19:                                               ; preds = %1
  %20 = load %struct.priv*, %struct.priv** %3, align 8
  %21 = getelementptr inbounds %struct.priv, %struct.priv* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @mp_refqueue_get_field(i32 %22, i32 0)
  %24 = call %struct.mp_image* @mp_vdpau_mixed_frame_create(i32 %23)
  store %struct.mp_image* %24, %struct.mp_image** %4, align 8
  %25 = load %struct.mp_image*, %struct.mp_image** %4, align 8
  %26 = icmp ne %struct.mp_image* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %19
  br label %106

28:                                               ; preds = %19
  %29 = load %struct.mp_image*, %struct.mp_image** %4, align 8
  %30 = call %struct.mp_vdpau_mixer_frame* @mp_vdpau_mixed_frame_get(%struct.mp_image* %29)
  store %struct.mp_vdpau_mixer_frame* %30, %struct.mp_vdpau_mixer_frame** %5, align 8
  %31 = load %struct.priv*, %struct.priv** %3, align 8
  %32 = getelementptr inbounds %struct.priv, %struct.priv* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @mp_refqueue_should_deint(i32 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %28
  %37 = load i32, i32* @VDP_VIDEO_MIXER_PICTURE_STRUCTURE_FRAME, align 4
  %38 = load %struct.mp_vdpau_mixer_frame*, %struct.mp_vdpau_mixer_frame** %5, align 8
  %39 = getelementptr inbounds %struct.mp_vdpau_mixer_frame, %struct.mp_vdpau_mixer_frame* %38, i32 0, i32 4
  store i32 %37, i32* %39, align 8
  br label %55

40:                                               ; preds = %28
  %41 = load %struct.priv*, %struct.priv** %3, align 8
  %42 = getelementptr inbounds %struct.priv, %struct.priv* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i64 @mp_refqueue_is_top_field(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %40
  %47 = load i32, i32* @VDP_VIDEO_MIXER_PICTURE_STRUCTURE_TOP_FIELD, align 4
  %48 = load %struct.mp_vdpau_mixer_frame*, %struct.mp_vdpau_mixer_frame** %5, align 8
  %49 = getelementptr inbounds %struct.mp_vdpau_mixer_frame, %struct.mp_vdpau_mixer_frame* %48, i32 0, i32 4
  store i32 %47, i32* %49, align 8
  br label %54

50:                                               ; preds = %40
  %51 = load i32, i32* @VDP_VIDEO_MIXER_PICTURE_STRUCTURE_BOTTOM_FIELD, align 4
  %52 = load %struct.mp_vdpau_mixer_frame*, %struct.mp_vdpau_mixer_frame** %5, align 8
  %53 = getelementptr inbounds %struct.mp_vdpau_mixer_frame, %struct.mp_vdpau_mixer_frame* %52, i32 0, i32 4
  store i32 %51, i32* %53, align 8
  br label %54

54:                                               ; preds = %50, %46
  br label %55

55:                                               ; preds = %54, %36
  %56 = load %struct.priv*, %struct.priv** %3, align 8
  %57 = load %struct.mp_vdpau_mixer_frame*, %struct.mp_vdpau_mixer_frame** %5, align 8
  %58 = call i8* @ref_field(%struct.priv* %56, %struct.mp_vdpau_mixer_frame* %57, i32 1)
  %59 = load %struct.mp_vdpau_mixer_frame*, %struct.mp_vdpau_mixer_frame** %5, align 8
  %60 = getelementptr inbounds %struct.mp_vdpau_mixer_frame, %struct.mp_vdpau_mixer_frame* %59, i32 0, i32 3
  %61 = load i8**, i8*** %60, align 8
  %62 = getelementptr inbounds i8*, i8** %61, i64 0
  store i8* %58, i8** %62, align 8
  %63 = load %struct.priv*, %struct.priv** %3, align 8
  %64 = load %struct.mp_vdpau_mixer_frame*, %struct.mp_vdpau_mixer_frame** %5, align 8
  %65 = call i8* @ref_field(%struct.priv* %63, %struct.mp_vdpau_mixer_frame* %64, i32 0)
  %66 = load %struct.mp_vdpau_mixer_frame*, %struct.mp_vdpau_mixer_frame** %5, align 8
  %67 = getelementptr inbounds %struct.mp_vdpau_mixer_frame, %struct.mp_vdpau_mixer_frame* %66, i32 0, i32 0
  store i8* %65, i8** %67, align 8
  %68 = load %struct.priv*, %struct.priv** %3, align 8
  %69 = load %struct.mp_vdpau_mixer_frame*, %struct.mp_vdpau_mixer_frame** %5, align 8
  %70 = call i8* @ref_field(%struct.priv* %68, %struct.mp_vdpau_mixer_frame* %69, i32 -1)
  %71 = load %struct.mp_vdpau_mixer_frame*, %struct.mp_vdpau_mixer_frame** %5, align 8
  %72 = getelementptr inbounds %struct.mp_vdpau_mixer_frame, %struct.mp_vdpau_mixer_frame* %71, i32 0, i32 2
  %73 = load i8**, i8*** %72, align 8
  %74 = getelementptr inbounds i8*, i8** %73, i64 0
  store i8* %70, i8** %74, align 8
  %75 = load %struct.priv*, %struct.priv** %3, align 8
  %76 = load %struct.mp_vdpau_mixer_frame*, %struct.mp_vdpau_mixer_frame** %5, align 8
  %77 = call i8* @ref_field(%struct.priv* %75, %struct.mp_vdpau_mixer_frame* %76, i32 -2)
  %78 = load %struct.mp_vdpau_mixer_frame*, %struct.mp_vdpau_mixer_frame** %5, align 8
  %79 = getelementptr inbounds %struct.mp_vdpau_mixer_frame, %struct.mp_vdpau_mixer_frame* %78, i32 0, i32 2
  %80 = load i8**, i8*** %79, align 8
  %81 = getelementptr inbounds i8*, i8** %80, i64 1
  store i8* %77, i8** %81, align 8
  %82 = load %struct.priv*, %struct.priv** %3, align 8
  %83 = getelementptr inbounds %struct.priv, %struct.priv* %82, i32 0, i32 1
  %84 = load %struct.TYPE_3__*, %struct.TYPE_3__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.mp_vdpau_mixer_frame*, %struct.mp_vdpau_mixer_frame** %5, align 8
  %88 = getelementptr inbounds %struct.mp_vdpau_mixer_frame, %struct.mp_vdpau_mixer_frame* %87, i32 0, i32 1
  store i32 %86, i32* %88, align 8
  %89 = load %struct.mp_vdpau_mixer_frame*, %struct.mp_vdpau_mixer_frame** %5, align 8
  %90 = getelementptr inbounds %struct.mp_vdpau_mixer_frame, %struct.mp_vdpau_mixer_frame* %89, i32 0, i32 0
  %91 = load i8*, i8** %90, align 8
  %92 = ptrtoint i8* %91 to i64
  %93 = inttoptr i64 %92 to i8*
  %94 = load %struct.mp_image*, %struct.mp_image** %4, align 8
  %95 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %94, i32 0, i32 1
  %96 = load i8**, i8*** %95, align 8
  %97 = getelementptr inbounds i8*, i8** %96, i64 3
  store i8* %93, i8** %97, align 8
  %98 = load %struct.mp_image*, %struct.mp_image** %4, align 8
  %99 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 0
  store i64 0, i64* %100, align 8
  %101 = load %struct.priv*, %struct.priv** %3, align 8
  %102 = getelementptr inbounds %struct.priv, %struct.priv* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = load %struct.mp_image*, %struct.mp_image** %4, align 8
  %105 = call i32 @mp_refqueue_write_out_pin(i32 %103, %struct.mp_image* %104)
  br label %106

106:                                              ; preds = %55, %27, %18
  ret void
}

declare dso_local i32 @mp_refqueue_execute_reinit(i32) #1

declare dso_local i32 @mp_refqueue_can_output(i32) #1

declare dso_local %struct.mp_image* @mp_vdpau_mixed_frame_create(i32) #1

declare dso_local i32 @mp_refqueue_get_field(i32, i32) #1

declare dso_local %struct.mp_vdpau_mixer_frame* @mp_vdpau_mixed_frame_get(%struct.mp_image*) #1

declare dso_local i32 @mp_refqueue_should_deint(i32) #1

declare dso_local i64 @mp_refqueue_is_top_field(i32) #1

declare dso_local i8* @ref_field(%struct.priv*, %struct.mp_vdpau_mixer_frame*, i32) #1

declare dso_local i32 @mp_refqueue_write_out_pin(i32, %struct.mp_image*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
