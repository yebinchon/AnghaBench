; ModuleID = '/home/carl/AnghaBench/mpv/video/out/extr_vo_libmpv.c_preinit.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/extr_vo_libmpv.c_preinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vo = type { i32, i32, %struct.TYPE_2__*, %struct.vo_priv* }
%struct.TYPE_2__ = type { i32 }
%struct.vo_priv = type { %struct.mpv_render_context* }
%struct.mpv_render_context = type { i32, i32, i32, i32, %struct.vo* }

@.str = private unnamed_addr constant [24 x i8] c"No render context set.\0A\00", align 1
@VOCTRL_PREINIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vo*)* @preinit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @preinit(%struct.vo* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vo*, align 8
  %4 = alloca %struct.vo_priv*, align 8
  %5 = alloca %struct.mpv_render_context*, align 8
  store %struct.vo* %0, %struct.vo** %3, align 8
  %6 = load %struct.vo*, %struct.vo** %3, align 8
  %7 = getelementptr inbounds %struct.vo, %struct.vo* %6, i32 0, i32 3
  %8 = load %struct.vo_priv*, %struct.vo_priv** %7, align 8
  store %struct.vo_priv* %8, %struct.vo_priv** %4, align 8
  %9 = load %struct.vo*, %struct.vo** %3, align 8
  %10 = getelementptr inbounds %struct.vo, %struct.vo* %9, i32 0, i32 2
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.mpv_render_context* @mp_client_api_acquire_render_context(i32 %13)
  store %struct.mpv_render_context* %14, %struct.mpv_render_context** %5, align 8
  %15 = load %struct.mpv_render_context*, %struct.mpv_render_context** %5, align 8
  %16 = load %struct.vo_priv*, %struct.vo_priv** %4, align 8
  %17 = getelementptr inbounds %struct.vo_priv, %struct.vo_priv* %16, i32 0, i32 0
  store %struct.mpv_render_context* %15, %struct.mpv_render_context** %17, align 8
  %18 = load %struct.mpv_render_context*, %struct.mpv_render_context** %5, align 8
  %19 = icmp ne %struct.mpv_render_context* %18, null
  br i1 %19, label %29, label %20

20:                                               ; preds = %1
  %21 = load %struct.vo*, %struct.vo** %3, align 8
  %22 = getelementptr inbounds %struct.vo, %struct.vo* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %20
  %26 = load %struct.vo*, %struct.vo** %3, align 8
  %27 = call i32 @MP_FATAL(%struct.vo* %26, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %28

28:                                               ; preds = %25, %20
  store i32 -1, i32* %2, align 4
  br label %51

29:                                               ; preds = %1
  %30 = load %struct.mpv_render_context*, %struct.mpv_render_context** %5, align 8
  %31 = getelementptr inbounds %struct.mpv_render_context, %struct.mpv_render_context* %30, i32 0, i32 3
  %32 = call i32 @pthread_mutex_lock(i32* %31)
  %33 = load %struct.vo*, %struct.vo** %3, align 8
  %34 = load %struct.mpv_render_context*, %struct.mpv_render_context** %5, align 8
  %35 = getelementptr inbounds %struct.mpv_render_context, %struct.mpv_render_context* %34, i32 0, i32 4
  store %struct.vo* %33, %struct.vo** %35, align 8
  %36 = load %struct.mpv_render_context*, %struct.mpv_render_context** %5, align 8
  %37 = getelementptr inbounds %struct.mpv_render_context, %struct.mpv_render_context* %36, i32 0, i32 0
  store i32 1, i32* %37, align 8
  %38 = load %struct.mpv_render_context*, %struct.mpv_render_context** %5, align 8
  %39 = getelementptr inbounds %struct.mpv_render_context, %struct.mpv_render_context* %38, i32 0, i32 1
  store i32 1, i32* %39, align 4
  %40 = load %struct.mpv_render_context*, %struct.mpv_render_context** %5, align 8
  %41 = getelementptr inbounds %struct.mpv_render_context, %struct.mpv_render_context* %40, i32 0, i32 3
  %42 = call i32 @pthread_mutex_unlock(i32* %41)
  %43 = load %struct.mpv_render_context*, %struct.mpv_render_context** %5, align 8
  %44 = getelementptr inbounds %struct.mpv_render_context, %struct.mpv_render_context* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.vo*, %struct.vo** %3, align 8
  %47 = getelementptr inbounds %struct.vo, %struct.vo* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 8
  %48 = load %struct.vo*, %struct.vo** %3, align 8
  %49 = load i32, i32* @VOCTRL_PREINIT, align 4
  %50 = call i32 @control(%struct.vo* %48, i32 %49, i32* null)
  store i32 0, i32* %2, align 4
  br label %51

51:                                               ; preds = %29, %28
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local %struct.mpv_render_context* @mp_client_api_acquire_render_context(i32) #1

declare dso_local i32 @MP_FATAL(%struct.vo*, i8*) #1

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

declare dso_local i32 @control(%struct.vo*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
