; ModuleID = '/home/carl/AnghaBench/mpv/video/out/d3d11/extr_hwdec_dxva2dxgi.c_surf_destroy.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/d3d11/extr_hwdec_dxva2dxgi.c_surf_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ra_hwdec_mapper = type { i32 }
%struct.queue_surf = type { i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ra_hwdec_mapper*, %struct.queue_surf*)* @surf_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @surf_destroy(%struct.ra_hwdec_mapper* %0, %struct.queue_surf* %1) #0 {
  %3 = alloca %struct.ra_hwdec_mapper*, align 8
  %4 = alloca %struct.queue_surf*, align 8
  store %struct.ra_hwdec_mapper* %0, %struct.ra_hwdec_mapper** %3, align 8
  store %struct.queue_surf* %1, %struct.queue_surf** %4, align 8
  %5 = load %struct.queue_surf*, %struct.queue_surf** %4, align 8
  %6 = icmp ne %struct.queue_surf* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %2
  br label %41

8:                                                ; preds = %2
  %9 = load %struct.queue_surf*, %struct.queue_surf** %4, align 8
  %10 = getelementptr inbounds %struct.queue_surf, %struct.queue_surf* %9, i32 0, i32 6
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @SAFE_RELEASE(i32 %11)
  %13 = load %struct.queue_surf*, %struct.queue_surf** %4, align 8
  %14 = getelementptr inbounds %struct.queue_surf, %struct.queue_surf* %13, i32 0, i32 5
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @SAFE_RELEASE(i32 %15)
  %17 = load %struct.queue_surf*, %struct.queue_surf** %4, align 8
  %18 = getelementptr inbounds %struct.queue_surf, %struct.queue_surf* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @SAFE_RELEASE(i32 %19)
  %21 = load %struct.queue_surf*, %struct.queue_surf** %4, align 8
  %22 = getelementptr inbounds %struct.queue_surf, %struct.queue_surf* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @SAFE_RELEASE(i32 %23)
  %25 = load %struct.queue_surf*, %struct.queue_surf** %4, align 8
  %26 = getelementptr inbounds %struct.queue_surf, %struct.queue_surf* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @SAFE_RELEASE(i32 %27)
  %29 = load %struct.queue_surf*, %struct.queue_surf** %4, align 8
  %30 = getelementptr inbounds %struct.queue_surf, %struct.queue_surf* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @SAFE_RELEASE(i32 %31)
  %33 = load %struct.ra_hwdec_mapper*, %struct.ra_hwdec_mapper** %3, align 8
  %34 = getelementptr inbounds %struct.ra_hwdec_mapper, %struct.ra_hwdec_mapper* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.queue_surf*, %struct.queue_surf** %4, align 8
  %37 = getelementptr inbounds %struct.queue_surf, %struct.queue_surf* %36, i32 0, i32 0
  %38 = call i32 @ra_tex_free(i32 %35, i32* %37)
  %39 = load %struct.queue_surf*, %struct.queue_surf** %4, align 8
  %40 = call i32 @talloc_free(%struct.queue_surf* %39)
  br label %41

41:                                               ; preds = %8, %7
  ret void
}

declare dso_local i32 @SAFE_RELEASE(i32) #1

declare dso_local i32 @ra_tex_free(i32, i32*) #1

declare dso_local i32 @talloc_free(%struct.queue_surf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
