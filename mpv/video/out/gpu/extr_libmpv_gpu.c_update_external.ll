; ModuleID = '/home/carl/AnghaBench/mpv/video/out/gpu/extr_libmpv_gpu.c_update_external.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/gpu/extr_libmpv_gpu.c_update_external.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.render_backend = type { %struct.priv* }
%struct.priv = type { i32 }
%struct.vo = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.render_backend*, %struct.vo*)* @update_external to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_external(%struct.render_backend* %0, %struct.vo* %1) #0 {
  %3 = alloca %struct.render_backend*, align 8
  %4 = alloca %struct.vo*, align 8
  %5 = alloca %struct.priv*, align 8
  store %struct.render_backend* %0, %struct.render_backend** %3, align 8
  store %struct.vo* %1, %struct.vo** %4, align 8
  %6 = load %struct.render_backend*, %struct.render_backend** %3, align 8
  %7 = getelementptr inbounds %struct.render_backend, %struct.render_backend* %6, i32 0, i32 0
  %8 = load %struct.priv*, %struct.priv** %7, align 8
  store %struct.priv* %8, %struct.priv** %5, align 8
  %9 = load %struct.priv*, %struct.priv** %5, align 8
  %10 = getelementptr inbounds %struct.priv, %struct.priv* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.vo*, %struct.vo** %4, align 8
  %13 = icmp ne %struct.vo* %12, null
  br i1 %13, label %14, label %18

14:                                               ; preds = %2
  %15 = load %struct.vo*, %struct.vo** %4, align 8
  %16 = getelementptr inbounds %struct.vo, %struct.vo* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  br label %19

18:                                               ; preds = %2
  br label %19

19:                                               ; preds = %18, %14
  %20 = phi i32* [ %17, %14 ], [ null, %18 ]
  %21 = call i32 @gl_video_set_osd_source(i32 %11, i32* %20)
  %22 = load %struct.vo*, %struct.vo** %4, align 8
  %23 = icmp ne %struct.vo* %22, null
  br i1 %23, label %24, label %30

24:                                               ; preds = %19
  %25 = load %struct.priv*, %struct.priv** %5, align 8
  %26 = getelementptr inbounds %struct.priv, %struct.priv* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.vo*, %struct.vo** %4, align 8
  %29 = call i32 @gl_video_configure_queue(i32 %27, %struct.vo* %28)
  br label %30

30:                                               ; preds = %24, %19
  ret void
}

declare dso_local i32 @gl_video_set_osd_source(i32, i32*) #1

declare dso_local i32 @gl_video_configure_queue(i32, %struct.vo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
