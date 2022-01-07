; ModuleID = '/home/carl/AnghaBench/mpv/video/out/extr_vo_direct3d.c_draw_image.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/extr_vo_direct3d.c_draw_image.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vo = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32, i32, i32, %struct.TYPE_11__*, i64, i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_12__ = type { i32 }
%struct.mp_image = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vo*, %struct.TYPE_12__*)* @draw_image to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @draw_image(%struct.vo* %0, %struct.TYPE_12__* %1) #0 {
  %3 = alloca %struct.vo*, align 8
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca %struct.mp_image, align 4
  %7 = alloca i32, align 4
  store %struct.vo* %0, %struct.vo** %3, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %4, align 8
  %8 = load %struct.vo*, %struct.vo** %3, align 8
  %9 = getelementptr inbounds %struct.vo, %struct.vo* %8, i32 0, i32 0
  %10 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  store %struct.TYPE_13__* %10, %struct.TYPE_13__** %5, align 8
  %11 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %11, i32 0, i32 5
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  br label %61

16:                                               ; preds = %2
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %18 = call i32 @get_video_buffer(%struct.TYPE_13__* %17, %struct.mp_image* %6)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %16
  br label %61

21:                                               ; preds = %16
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %23 = call i32 @mp_image_copy(%struct.mp_image* %6, %struct.TYPE_12__* %22)
  %24 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %25 = call i32 @d3d_unlock_video_objects(%struct.TYPE_13__* %24)
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %26, i32 0, i32 4
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %51

30:                                               ; preds = %21
  store i32 0, i32* %7, align 4
  br label %31

31:                                               ; preds = %47, %30
  %32 = load i32, i32* %7, align 4
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp slt i32 %32, %35
  br i1 %36, label %37, label %50

37:                                               ; preds = %31
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %39, i32 0, i32 3
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %40, align 8
  %42 = load i32, i32* %7, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 0
  %46 = call i32 @d3dtex_update(%struct.TYPE_13__* %38, i32* %45)
  br label %47

47:                                               ; preds = %37
  %48 = load i32, i32* %7, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %7, align 4
  br label %31

50:                                               ; preds = %31
  br label %51

51:                                               ; preds = %50, %21
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %52, i32 0, i32 1
  store i32 1, i32* %53, align 4
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %57, i32 0, i32 2
  store i32 %56, i32* %58, align 8
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %60 = call i32 @d3d_draw_frame(%struct.TYPE_13__* %59)
  br label %61

61:                                               ; preds = %51, %20, %15
  %62 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %63 = call i32 @talloc_free(%struct.TYPE_12__* %62)
  ret void
}

declare dso_local i32 @get_video_buffer(%struct.TYPE_13__*, %struct.mp_image*) #1

declare dso_local i32 @mp_image_copy(%struct.mp_image*, %struct.TYPE_12__*) #1

declare dso_local i32 @d3d_unlock_video_objects(%struct.TYPE_13__*) #1

declare dso_local i32 @d3dtex_update(%struct.TYPE_13__*, i32*) #1

declare dso_local i32 @d3d_draw_frame(%struct.TYPE_13__*) #1

declare dso_local i32 @talloc_free(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
