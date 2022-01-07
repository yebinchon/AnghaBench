; ModuleID = '/home/carl/AnghaBench/mpv/video/out/gpu/extr_video.c_deband_hook.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/gpu/extr_video.c_deband_hook.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gl_video = type { %struct.TYPE_6__, i32, %struct.TYPE_4__, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.gl_transform = type { i32 }
%struct.image = type { i64 }

@.str = private unnamed_addr constant [15 x i8] c"debanding (%s)\00", align 1
@plane_names = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gl_video*, i64, %struct.gl_transform*, i8*)* @deband_hook to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @deband_hook(%struct.gl_video* %0, i64 %1, %struct.gl_transform* %2, i8* %3) #0 {
  %5 = alloca %struct.image, align 8
  %6 = alloca %struct.gl_video*, align 8
  %7 = alloca %struct.gl_transform*, align 8
  %8 = alloca i8*, align 8
  %9 = getelementptr inbounds %struct.image, %struct.image* %5, i32 0, i32 0
  store i64 %1, i64* %9, align 8
  store %struct.gl_video* %0, %struct.gl_video** %6, align 8
  store %struct.gl_transform* %2, %struct.gl_transform** %7, align 8
  store i8* %3, i8** %8, align 8
  %10 = load %struct.gl_video*, %struct.gl_video** %6, align 8
  %11 = load i32*, i32** @plane_names, align 8
  %12 = getelementptr inbounds %struct.image, %struct.image* %5, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = getelementptr inbounds i32, i32* %11, i64 %13
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @pass_describe(%struct.gl_video* %10, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = load %struct.gl_video*, %struct.gl_video** %6, align 8
  %18 = getelementptr inbounds %struct.gl_video, %struct.gl_video* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.gl_video*, %struct.gl_video** %6, align 8
  %21 = getelementptr inbounds %struct.gl_video, %struct.gl_video* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.gl_video*, %struct.gl_video** %6, align 8
  %25 = getelementptr inbounds %struct.gl_video, %struct.gl_video* %24, i32 0, i32 1
  %26 = load %struct.gl_video*, %struct.gl_video** %6, align 8
  %27 = getelementptr inbounds %struct.gl_video, %struct.gl_video* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @pass_sample_deband(i32 %19, i32 %23, i32* %25, i32 %30)
  ret void
}

declare dso_local i32 @pass_describe(%struct.gl_video*, i8*, i32) #1

declare dso_local i32 @pass_sample_deband(i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
