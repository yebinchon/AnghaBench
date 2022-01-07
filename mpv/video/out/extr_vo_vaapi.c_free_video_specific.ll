; ModuleID = '/home/carl/AnghaBench/mpv/video/out/extr_vo_vaapi.c_free_video_specific.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/extr_vo_vaapi.c_free_video_specific.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.priv = type { i64, i32*, i32 }

@MAX_OUTPUT_SURFACES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.priv*)* @free_video_specific to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_video_specific(%struct.priv* %0) #0 {
  %2 = alloca %struct.priv*, align 8
  %3 = alloca i32, align 4
  store %struct.priv* %0, %struct.priv** %2, align 8
  %4 = load %struct.priv*, %struct.priv** %2, align 8
  %5 = call i32 @flush_output_surfaces(%struct.priv* %4)
  %6 = load %struct.priv*, %struct.priv** %2, align 8
  %7 = getelementptr inbounds %struct.priv, %struct.priv* %6, i32 0, i32 2
  %8 = call i32 @mp_image_unrefp(i32* %7)
  store i32 0, i32* %3, align 4
  br label %9

9:                                                ; preds = %21, %1
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @MAX_OUTPUT_SURFACES, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %24

13:                                               ; preds = %9
  %14 = load %struct.priv*, %struct.priv** %2, align 8
  %15 = getelementptr inbounds %struct.priv, %struct.priv* %14, i32 0, i32 1
  %16 = load i32*, i32** %15, align 8
  %17 = load i32, i32* %3, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %16, i64 %18
  %20 = call i32 @mp_image_unrefp(i32* %19)
  br label %21

21:                                               ; preds = %13
  %22 = load i32, i32* %3, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %3, align 4
  br label %9

24:                                               ; preds = %9
  %25 = load %struct.priv*, %struct.priv** %2, align 8
  %26 = getelementptr inbounds %struct.priv, %struct.priv* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %24
  %30 = load %struct.priv*, %struct.priv** %2, align 8
  %31 = getelementptr inbounds %struct.priv, %struct.priv* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = call i32 @mp_image_pool_clear(i64 %32)
  br label %34

34:                                               ; preds = %29, %24
  ret void
}

declare dso_local i32 @flush_output_surfaces(%struct.priv*) #1

declare dso_local i32 @mp_image_unrefp(i32*) #1

declare dso_local i32 @mp_image_pool_clear(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
