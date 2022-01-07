; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_client.c_mp_client_api_acquire_render_context.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_client.c_mp_client_api_acquire_render_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpv_render_context = type { i32 }
%struct.mp_client_api = type { i32, %struct.mpv_render_context* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mpv_render_context* @mp_client_api_acquire_render_context(%struct.mp_client_api* %0) #0 {
  %2 = alloca %struct.mp_client_api*, align 8
  %3 = alloca %struct.mpv_render_context*, align 8
  store %struct.mp_client_api* %0, %struct.mp_client_api** %2, align 8
  store %struct.mpv_render_context* null, %struct.mpv_render_context** %3, align 8
  %4 = load %struct.mp_client_api*, %struct.mp_client_api** %2, align 8
  %5 = getelementptr inbounds %struct.mp_client_api, %struct.mp_client_api* %4, i32 0, i32 0
  %6 = call i32 @pthread_mutex_lock(i32* %5)
  %7 = load %struct.mp_client_api*, %struct.mp_client_api** %2, align 8
  %8 = getelementptr inbounds %struct.mp_client_api, %struct.mp_client_api* %7, i32 0, i32 1
  %9 = load %struct.mpv_render_context*, %struct.mpv_render_context** %8, align 8
  %10 = icmp ne %struct.mpv_render_context* %9, null
  br i1 %10, label %11, label %21

11:                                               ; preds = %1
  %12 = load %struct.mp_client_api*, %struct.mp_client_api** %2, align 8
  %13 = getelementptr inbounds %struct.mp_client_api, %struct.mp_client_api* %12, i32 0, i32 1
  %14 = load %struct.mpv_render_context*, %struct.mpv_render_context** %13, align 8
  %15 = call i64 @mp_render_context_acquire(%struct.mpv_render_context* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %11
  %18 = load %struct.mp_client_api*, %struct.mp_client_api** %2, align 8
  %19 = getelementptr inbounds %struct.mp_client_api, %struct.mp_client_api* %18, i32 0, i32 1
  %20 = load %struct.mpv_render_context*, %struct.mpv_render_context** %19, align 8
  store %struct.mpv_render_context* %20, %struct.mpv_render_context** %3, align 8
  br label %21

21:                                               ; preds = %17, %11, %1
  %22 = load %struct.mp_client_api*, %struct.mp_client_api** %2, align 8
  %23 = getelementptr inbounds %struct.mp_client_api, %struct.mp_client_api* %22, i32 0, i32 0
  %24 = call i32 @pthread_mutex_unlock(i32* %23)
  %25 = load %struct.mpv_render_context*, %struct.mpv_render_context** %3, align 8
  ret %struct.mpv_render_context* %25
}

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i64 @mp_render_context_acquire(%struct.mpv_render_context*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
