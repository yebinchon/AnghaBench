; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-source.c_check_to_swap_bgrx_bgra.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-source.c_check_to_swap_bgrx_bgra.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32* }
%struct.obs_source_frame = type { i64 }

@GS_BGRX = common dso_local global i32 0, align 4
@VIDEO_FORMAT_BGRA = common dso_local global i64 0, align 8
@GS_BGRA = common dso_local global i32 0, align 4
@VIDEO_FORMAT_BGRX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*, %struct.obs_source_frame*)* @check_to_swap_bgrx_bgra to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_to_swap_bgrx_bgra(%struct.TYPE_4__* %0, %struct.obs_source_frame* %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca %struct.obs_source_frame*, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store %struct.obs_source_frame* %1, %struct.obs_source_frame** %4, align 8
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = load i32*, i32** %7, align 8
  %9 = getelementptr inbounds i32, i32* %8, i64 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @gs_texture_get_color_format(i32 %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @GS_BGRX, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %25

15:                                               ; preds = %2
  %16 = load %struct.obs_source_frame*, %struct.obs_source_frame** %4, align 8
  %17 = getelementptr inbounds %struct.obs_source_frame, %struct.obs_source_frame* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @VIDEO_FORMAT_BGRA, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %15
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %23 = load i32, i32* @GS_BGRA, align 4
  %24 = call i32 @recreate_async_texture(%struct.TYPE_4__* %22, i32 %23)
  br label %40

25:                                               ; preds = %15, %2
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @GS_BGRA, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %39

29:                                               ; preds = %25
  %30 = load %struct.obs_source_frame*, %struct.obs_source_frame** %4, align 8
  %31 = getelementptr inbounds %struct.obs_source_frame, %struct.obs_source_frame* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @VIDEO_FORMAT_BGRX, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %29
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %37 = load i32, i32* @GS_BGRX, align 4
  %38 = call i32 @recreate_async_texture(%struct.TYPE_4__* %36, i32 %37)
  br label %39

39:                                               ; preds = %35, %29, %25
  br label %40

40:                                               ; preds = %39, %21
  ret void
}

declare dso_local i32 @gs_texture_get_color_format(i32) #1

declare dso_local i32 @recreate_async_texture(%struct.TYPE_4__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
