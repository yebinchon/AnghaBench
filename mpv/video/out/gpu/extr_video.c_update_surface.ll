; ModuleID = '/home/carl/AnghaBench/mpv/video/out/gpu/extr_video.c_update_surface.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/gpu/extr_video.c_update_surface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gl_video = type { i32, %struct.TYPE_6__, i32, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }
%struct.mp_image = type { i32 }
%struct.surface = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gl_video*, %struct.mp_image*, i32, %struct.surface*, i32)* @update_surface to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @update_surface(%struct.gl_video* %0, %struct.mp_image* %1, i32 %2, %struct.surface* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.gl_video*, align 8
  %8 = alloca %struct.mp_image*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.surface*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.gl_video* %0, %struct.gl_video** %7, align 8
  store %struct.mp_image* %1, %struct.mp_image** %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.surface* %3, %struct.surface** %10, align 8
  store i32 %4, i32* %11, align 4
  %14 = load %struct.gl_video*, %struct.gl_video** %7, align 8
  %15 = getelementptr inbounds %struct.gl_video, %struct.gl_video* %14, i32 0, i32 3
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.gl_video*, %struct.gl_video** %7, align 8
  %19 = getelementptr inbounds %struct.gl_video, %struct.gl_video* %18, i32 0, i32 3
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = sub nsw i32 %17, %21
  store i32 %22, i32* %12, align 4
  %23 = load %struct.gl_video*, %struct.gl_video** %7, align 8
  %24 = getelementptr inbounds %struct.gl_video, %struct.gl_video* %23, i32 0, i32 3
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.gl_video*, %struct.gl_video** %7, align 8
  %28 = getelementptr inbounds %struct.gl_video, %struct.gl_video* %27, i32 0, i32 3
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = sub nsw i32 %26, %30
  store i32 %31, i32* %13, align 4
  %32 = load %struct.gl_video*, %struct.gl_video** %7, align 8
  %33 = call i32 @pass_info_reset(%struct.gl_video* %32, i32 0)
  %34 = load %struct.gl_video*, %struct.gl_video** %7, align 8
  %35 = load %struct.mp_image*, %struct.mp_image** %8, align 8
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* %11, align 4
  %38 = call i32 @pass_render_frame(%struct.gl_video* %34, %struct.mp_image* %35, i32 %36, i32 %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %73

41:                                               ; preds = %5
  %42 = load %struct.gl_video*, %struct.gl_video** %7, align 8
  %43 = getelementptr inbounds %struct.gl_video, %struct.gl_video* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %58, label %46

46:                                               ; preds = %41
  %47 = load %struct.gl_video*, %struct.gl_video** %7, align 8
  %48 = getelementptr inbounds %struct.gl_video, %struct.gl_video* %47, i32 0, i32 0
  store i32 1, i32* %48, align 4
  %49 = load %struct.gl_video*, %struct.gl_video** %7, align 8
  %50 = getelementptr inbounds %struct.gl_video, %struct.gl_video* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.gl_video*, %struct.gl_video** %7, align 8
  %53 = getelementptr inbounds %struct.gl_video, %struct.gl_video* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @pass_linearize(i32 %51, i32 %56)
  br label %58

58:                                               ; preds = %46, %41
  %59 = load %struct.gl_video*, %struct.gl_video** %7, align 8
  %60 = load %struct.surface*, %struct.surface** %10, align 8
  %61 = getelementptr inbounds %struct.surface, %struct.surface* %60, i32 0, i32 2
  %62 = load i32, i32* %12, align 4
  %63 = load i32, i32* %13, align 4
  %64 = call i32 @finish_pass_tex(%struct.gl_video* %59, i32* %61, i32 %62, i32 %63)
  %65 = load i32, i32* %9, align 4
  %66 = load %struct.surface*, %struct.surface** %10, align 8
  %67 = getelementptr inbounds %struct.surface, %struct.surface* %66, i32 0, i32 1
  store i32 %65, i32* %67, align 4
  %68 = load %struct.mp_image*, %struct.mp_image** %8, align 8
  %69 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.surface*, %struct.surface** %10, align 8
  %72 = getelementptr inbounds %struct.surface, %struct.surface* %71, i32 0, i32 0
  store i32 %70, i32* %72, align 4
  store i32 1, i32* %6, align 4
  br label %73

73:                                               ; preds = %58, %40
  %74 = load i32, i32* %6, align 4
  ret i32 %74
}

declare dso_local i32 @pass_info_reset(%struct.gl_video*, i32) #1

declare dso_local i32 @pass_render_frame(%struct.gl_video*, %struct.mp_image*, i32, i32) #1

declare dso_local i32 @pass_linearize(i32, i32) #1

declare dso_local i32 @finish_pass_tex(%struct.gl_video*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
