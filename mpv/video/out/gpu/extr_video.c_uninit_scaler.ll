; ModuleID = '/home/carl/AnghaBench/mpv/video/out/gpu/extr_video.c_uninit_scaler.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/gpu/extr_video.c_uninit_scaler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gl_video = type { i32 }
%struct.scaler = type { i32, i32*, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gl_video*, %struct.scaler*)* @uninit_scaler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uninit_scaler(%struct.gl_video* %0, %struct.scaler* %1) #0 {
  %3 = alloca %struct.gl_video*, align 8
  %4 = alloca %struct.scaler*, align 8
  store %struct.gl_video* %0, %struct.gl_video** %3, align 8
  store %struct.scaler* %1, %struct.scaler** %4, align 8
  %5 = load %struct.gl_video*, %struct.gl_video** %3, align 8
  %6 = getelementptr inbounds %struct.gl_video, %struct.gl_video* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.scaler*, %struct.scaler** %4, align 8
  %9 = getelementptr inbounds %struct.scaler, %struct.scaler* %8, i32 0, i32 3
  %10 = call i32 @ra_tex_free(i32 %7, i32* %9)
  %11 = load %struct.gl_video*, %struct.gl_video** %3, align 8
  %12 = getelementptr inbounds %struct.gl_video, %struct.gl_video* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.scaler*, %struct.scaler** %4, align 8
  %15 = getelementptr inbounds %struct.scaler, %struct.scaler* %14, i32 0, i32 2
  %16 = call i32 @ra_tex_free(i32 %13, i32* %15)
  %17 = load %struct.scaler*, %struct.scaler** %4, align 8
  %18 = getelementptr inbounds %struct.scaler, %struct.scaler* %17, i32 0, i32 1
  store i32* null, i32** %18, align 8
  %19 = load %struct.scaler*, %struct.scaler** %4, align 8
  %20 = getelementptr inbounds %struct.scaler, %struct.scaler* %19, i32 0, i32 0
  store i32 0, i32* %20, align 8
  ret void
}

declare dso_local i32 @ra_tex_free(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
