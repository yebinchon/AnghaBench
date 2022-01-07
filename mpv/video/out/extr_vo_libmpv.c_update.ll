; ModuleID = '/home/carl/AnghaBench/mpv/video/out/extr_vo_libmpv.c_update.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/extr_vo_libmpv.c_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpv_render_context = type { i32, i32, i32, i32 (i32)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mpv_render_context*)* @update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update(%struct.mpv_render_context* %0) #0 {
  %2 = alloca %struct.mpv_render_context*, align 8
  store %struct.mpv_render_context* %0, %struct.mpv_render_context** %2, align 8
  %3 = load %struct.mpv_render_context*, %struct.mpv_render_context** %2, align 8
  %4 = getelementptr inbounds %struct.mpv_render_context, %struct.mpv_render_context* %3, i32 0, i32 0
  %5 = call i32 @pthread_mutex_lock(i32* %4)
  %6 = load %struct.mpv_render_context*, %struct.mpv_render_context** %2, align 8
  %7 = getelementptr inbounds %struct.mpv_render_context, %struct.mpv_render_context* %6, i32 0, i32 3
  %8 = load i32 (i32)*, i32 (i32)** %7, align 8
  %9 = icmp ne i32 (i32)* %8, null
  br i1 %9, label %10, label %18

10:                                               ; preds = %1
  %11 = load %struct.mpv_render_context*, %struct.mpv_render_context** %2, align 8
  %12 = getelementptr inbounds %struct.mpv_render_context, %struct.mpv_render_context* %11, i32 0, i32 3
  %13 = load i32 (i32)*, i32 (i32)** %12, align 8
  %14 = load %struct.mpv_render_context*, %struct.mpv_render_context** %2, align 8
  %15 = getelementptr inbounds %struct.mpv_render_context, %struct.mpv_render_context* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = call i32 %13(i32 %16)
  br label %18

18:                                               ; preds = %10, %1
  %19 = load %struct.mpv_render_context*, %struct.mpv_render_context** %2, align 8
  %20 = getelementptr inbounds %struct.mpv_render_context, %struct.mpv_render_context* %19, i32 0, i32 1
  %21 = call i32 @pthread_cond_broadcast(i32* %20)
  %22 = load %struct.mpv_render_context*, %struct.mpv_render_context** %2, align 8
  %23 = getelementptr inbounds %struct.mpv_render_context, %struct.mpv_render_context* %22, i32 0, i32 0
  %24 = call i32 @pthread_mutex_unlock(i32* %23)
  ret void
}

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @pthread_cond_broadcast(i32*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
