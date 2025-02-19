; ModuleID = '/home/carl/AnghaBench/mpv/video/out/extr_vo_rpi.c_uninit.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/extr_vo_rpi.c_uninit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vo = type { %struct.priv* }
%struct.priv = type { i32, i32, i64, i64, i32 }

@tv_callback = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vo*)* @uninit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uninit(%struct.vo* %0) #0 {
  %2 = alloca %struct.vo*, align 8
  %3 = alloca %struct.priv*, align 8
  store %struct.vo* %0, %struct.vo** %2, align 8
  %4 = load %struct.vo*, %struct.vo** %2, align 8
  %5 = getelementptr inbounds %struct.vo, %struct.vo* %4, i32 0, i32 0
  %6 = load %struct.priv*, %struct.priv** %5, align 8
  store %struct.priv* %6, %struct.priv** %3, align 8
  %7 = load i32, i32* @tv_callback, align 4
  %8 = load %struct.vo*, %struct.vo** %2, align 8
  %9 = call i32 @vc_tv_unregister_callback_full(i32 %7, %struct.vo* %8)
  %10 = load %struct.priv*, %struct.priv** %3, align 8
  %11 = getelementptr inbounds %struct.priv, %struct.priv* %10, i32 0, i32 4
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @talloc_free(i32 %12)
  %14 = load %struct.vo*, %struct.vo** %2, align 8
  %15 = call i32 @destroy_dispmanx(%struct.vo* %14)
  %16 = load %struct.priv*, %struct.priv** %3, align 8
  %17 = getelementptr inbounds %struct.priv, %struct.priv* %16, i32 0, i32 3
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %1
  %21 = load %struct.priv*, %struct.priv** %3, align 8
  %22 = getelementptr inbounds %struct.priv, %struct.priv* %21, i32 0, i32 3
  %23 = load i64, i64* %22, align 8
  %24 = call i32 @vc_dispmanx_update_submit_sync(i64 %23)
  br label %25

25:                                               ; preds = %20, %1
  %26 = load %struct.priv*, %struct.priv** %3, align 8
  %27 = getelementptr inbounds %struct.priv, %struct.priv* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %25
  %31 = load %struct.priv*, %struct.priv** %3, align 8
  %32 = getelementptr inbounds %struct.priv, %struct.priv* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @mmal_component_release(i64 %33)
  br label %35

35:                                               ; preds = %30, %25
  %36 = call i32 (...) @mmal_vc_deinit()
  %37 = load %struct.priv*, %struct.priv** %3, align 8
  %38 = getelementptr inbounds %struct.priv, %struct.priv* %37, i32 0, i32 1
  %39 = call i32 @pthread_cond_destroy(i32* %38)
  %40 = load %struct.priv*, %struct.priv** %3, align 8
  %41 = getelementptr inbounds %struct.priv, %struct.priv* %40, i32 0, i32 0
  %42 = call i32 @pthread_mutex_destroy(i32* %41)
  ret void
}

declare dso_local i32 @vc_tv_unregister_callback_full(i32, %struct.vo*) #1

declare dso_local i32 @talloc_free(i32) #1

declare dso_local i32 @destroy_dispmanx(%struct.vo*) #1

declare dso_local i32 @vc_dispmanx_update_submit_sync(i64) #1

declare dso_local i32 @mmal_component_release(i64) #1

declare dso_local i32 @mmal_vc_deinit(...) #1

declare dso_local i32 @pthread_cond_destroy(i32*) #1

declare dso_local i32 @pthread_mutex_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
