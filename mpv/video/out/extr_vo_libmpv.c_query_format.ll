; ModuleID = '/home/carl/AnghaBench/mpv/video/out/extr_vo_libmpv.c_query_format.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/extr_vo_libmpv.c_query_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vo = type { %struct.vo_priv* }
%struct.vo_priv = type { %struct.mpv_render_context* }
%struct.mpv_render_context = type { i32*, i32 }

@IMGFMT_START = common dso_local global i32 0, align 4
@IMGFMT_END = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vo*, i32)* @query_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @query_format(%struct.vo* %0, i32 %1) #0 {
  %3 = alloca %struct.vo*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.vo_priv*, align 8
  %6 = alloca %struct.mpv_render_context*, align 8
  %7 = alloca i32, align 4
  store %struct.vo* %0, %struct.vo** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.vo*, %struct.vo** %3, align 8
  %9 = getelementptr inbounds %struct.vo, %struct.vo* %8, i32 0, i32 0
  %10 = load %struct.vo_priv*, %struct.vo_priv** %9, align 8
  store %struct.vo_priv* %10, %struct.vo_priv** %5, align 8
  %11 = load %struct.vo_priv*, %struct.vo_priv** %5, align 8
  %12 = getelementptr inbounds %struct.vo_priv, %struct.vo_priv* %11, i32 0, i32 0
  %13 = load %struct.mpv_render_context*, %struct.mpv_render_context** %12, align 8
  store %struct.mpv_render_context* %13, %struct.mpv_render_context** %6, align 8
  store i32 0, i32* %7, align 4
  %14 = load %struct.mpv_render_context*, %struct.mpv_render_context** %6, align 8
  %15 = getelementptr inbounds %struct.mpv_render_context, %struct.mpv_render_context* %14, i32 0, i32 1
  %16 = call i32 @pthread_mutex_lock(i32* %15)
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @IMGFMT_START, align 4
  %19 = icmp sge i32 %17, %18
  br i1 %19, label %20, label %34

20:                                               ; preds = %2
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @IMGFMT_END, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %34

24:                                               ; preds = %20
  %25 = load %struct.mpv_render_context*, %struct.mpv_render_context** %6, align 8
  %26 = getelementptr inbounds %struct.mpv_render_context, %struct.mpv_render_context* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* @IMGFMT_START, align 4
  %30 = sub nsw i32 %28, %29
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %27, i64 %31
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %7, align 4
  br label %34

34:                                               ; preds = %24, %20, %2
  %35 = load %struct.mpv_render_context*, %struct.mpv_render_context** %6, align 8
  %36 = getelementptr inbounds %struct.mpv_render_context, %struct.mpv_render_context* %35, i32 0, i32 1
  %37 = call i32 @pthread_mutex_unlock(i32* %36)
  %38 = load i32, i32* %7, align 4
  ret i32 %38
}

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
