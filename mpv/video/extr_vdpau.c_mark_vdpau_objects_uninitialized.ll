; ModuleID = '/home/carl/AnghaBench/mpv/video/extr_vdpau.c_mark_vdpau_objects_uninitialized.c'
source_filename = "/home/carl/AnghaBench/mpv/video/extr_vdpau.c_mark_vdpau_objects_uninitialized.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_vdpau_ctx = type { i8*, i8*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i8*, i8* }

@MAX_VIDEO_SURFACES = common dso_local global i32 0, align 4
@VDP_INVALID_HANDLE = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mp_vdpau_ctx*)* @mark_vdpau_objects_uninitialized to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mark_vdpau_objects_uninitialized(%struct.mp_vdpau_ctx* %0) #0 {
  %2 = alloca %struct.mp_vdpau_ctx*, align 8
  %3 = alloca i32, align 4
  store %struct.mp_vdpau_ctx* %0, %struct.mp_vdpau_ctx** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %32, %1
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* @MAX_VIDEO_SURFACES, align 4
  %7 = icmp slt i32 %5, %6
  br i1 %7, label %8, label %35

8:                                                ; preds = %4
  %9 = load i8*, i8** @VDP_INVALID_HANDLE, align 8
  %10 = load %struct.mp_vdpau_ctx*, %struct.mp_vdpau_ctx** %2, align 8
  %11 = getelementptr inbounds %struct.mp_vdpau_ctx, %struct.mp_vdpau_ctx* %10, i32 0, i32 2
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = load i32, i32* %3, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i64 %14
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 2
  store i8* %9, i8** %16, align 8
  %17 = load i8*, i8** @VDP_INVALID_HANDLE, align 8
  %18 = load %struct.mp_vdpau_ctx*, %struct.mp_vdpau_ctx** %2, align 8
  %19 = getelementptr inbounds %struct.mp_vdpau_ctx, %struct.mp_vdpau_ctx* %18, i32 0, i32 2
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = load i32, i32* %3, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  store i8* %17, i8** %24, align 8
  %25 = load %struct.mp_vdpau_ctx*, %struct.mp_vdpau_ctx** %2, align 8
  %26 = getelementptr inbounds %struct.mp_vdpau_ctx, %struct.mp_vdpau_ctx* %25, i32 0, i32 2
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = load i32, i32* %3, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  store i32 0, i32* %31, align 8
  br label %32

32:                                               ; preds = %8
  %33 = load i32, i32* %3, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %3, align 4
  br label %4

35:                                               ; preds = %4
  %36 = load i8*, i8** @VDP_INVALID_HANDLE, align 8
  %37 = load %struct.mp_vdpau_ctx*, %struct.mp_vdpau_ctx** %2, align 8
  %38 = getelementptr inbounds %struct.mp_vdpau_ctx, %struct.mp_vdpau_ctx* %37, i32 0, i32 1
  store i8* %36, i8** %38, align 8
  %39 = load i8*, i8** @VDP_INVALID_HANDLE, align 8
  %40 = load %struct.mp_vdpau_ctx*, %struct.mp_vdpau_ctx** %2, align 8
  %41 = getelementptr inbounds %struct.mp_vdpau_ctx, %struct.mp_vdpau_ctx* %40, i32 0, i32 0
  store i8* %39, i8** %41, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
