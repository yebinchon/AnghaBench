; ModuleID = '/home/carl/AnghaBench/mpv/video/extr_vdpau.c_release_decoder_surface.c'
source_filename = "/home/carl/AnghaBench/mpv/video/extr_vdpau.c_release_decoder_surface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.surface_ref = type { i64, %struct.mp_vdpau_ctx* }
%struct.mp_vdpau_ctx = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @release_decoder_surface to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @release_decoder_surface(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.surface_ref*, align 8
  %4 = alloca %struct.mp_vdpau_ctx*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.surface_ref*
  store %struct.surface_ref* %6, %struct.surface_ref** %3, align 8
  %7 = load %struct.surface_ref*, %struct.surface_ref** %3, align 8
  %8 = getelementptr inbounds %struct.surface_ref, %struct.surface_ref* %7, i32 0, i32 1
  %9 = load %struct.mp_vdpau_ctx*, %struct.mp_vdpau_ctx** %8, align 8
  store %struct.mp_vdpau_ctx* %9, %struct.mp_vdpau_ctx** %4, align 8
  %10 = load %struct.mp_vdpau_ctx*, %struct.mp_vdpau_ctx** %4, align 8
  %11 = getelementptr inbounds %struct.mp_vdpau_ctx, %struct.mp_vdpau_ctx* %10, i32 0, i32 0
  %12 = call i32 @pthread_mutex_lock(i32* %11)
  %13 = load %struct.mp_vdpau_ctx*, %struct.mp_vdpau_ctx** %4, align 8
  %14 = getelementptr inbounds %struct.mp_vdpau_ctx, %struct.mp_vdpau_ctx* %13, i32 0, i32 1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = load %struct.surface_ref*, %struct.surface_ref** %3, align 8
  %17 = getelementptr inbounds %struct.surface_ref, %struct.surface_ref* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @assert(i32 %21)
  %23 = load %struct.mp_vdpau_ctx*, %struct.mp_vdpau_ctx** %4, align 8
  %24 = getelementptr inbounds %struct.mp_vdpau_ctx, %struct.mp_vdpau_ctx* %23, i32 0, i32 1
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = load %struct.surface_ref*, %struct.surface_ref** %3, align 8
  %27 = getelementptr inbounds %struct.surface_ref, %struct.surface_ref* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  store i32 0, i32* %30, align 4
  %31 = load %struct.mp_vdpau_ctx*, %struct.mp_vdpau_ctx** %4, align 8
  %32 = getelementptr inbounds %struct.mp_vdpau_ctx, %struct.mp_vdpau_ctx* %31, i32 0, i32 0
  %33 = call i32 @pthread_mutex_unlock(i32* %32)
  %34 = load %struct.surface_ref*, %struct.surface_ref** %3, align 8
  %35 = call i32 @talloc_free(%struct.surface_ref* %34)
  ret void
}

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

declare dso_local i32 @talloc_free(%struct.surface_ref*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
