; ModuleID = '/home/carl/AnghaBench/mpv/video/out/opengl/extr_oml_sync.c_oml_sync_get_info.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/opengl/extr_oml_sync.c_oml_sync_get_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.oml_sync = type { i32, i32, i32, i32 }
%struct.vo_vsync_info = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @oml_sync_get_info(%struct.oml_sync* %0, %struct.vo_vsync_info* %1) #0 {
  %3 = alloca %struct.oml_sync*, align 8
  %4 = alloca %struct.vo_vsync_info*, align 8
  store %struct.oml_sync* %0, %struct.oml_sync** %3, align 8
  store %struct.vo_vsync_info* %1, %struct.vo_vsync_info** %4, align 8
  %5 = load %struct.oml_sync*, %struct.oml_sync** %3, align 8
  %6 = getelementptr inbounds %struct.oml_sync, %struct.oml_sync* %5, i32 0, i32 3
  %7 = load i32, i32* %6, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %2
  %10 = load %struct.oml_sync*, %struct.oml_sync** %3, align 8
  %11 = call i32 @oml_sync_reset(%struct.oml_sync* %10)
  br label %12

12:                                               ; preds = %9, %2
  %13 = load %struct.oml_sync*, %struct.oml_sync** %3, align 8
  %14 = getelementptr inbounds %struct.oml_sync, %struct.oml_sync* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.vo_vsync_info*, %struct.vo_vsync_info** %4, align 8
  %17 = getelementptr inbounds %struct.vo_vsync_info, %struct.vo_vsync_info* %16, i32 0, i32 2
  store i32 %15, i32* %17, align 4
  %18 = load %struct.oml_sync*, %struct.oml_sync** %3, align 8
  %19 = getelementptr inbounds %struct.oml_sync, %struct.oml_sync* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.vo_vsync_info*, %struct.vo_vsync_info** %4, align 8
  %22 = getelementptr inbounds %struct.vo_vsync_info, %struct.vo_vsync_info* %21, i32 0, i32 1
  store i32 %20, i32* %22, align 4
  %23 = load %struct.oml_sync*, %struct.oml_sync** %3, align 8
  %24 = getelementptr inbounds %struct.oml_sync, %struct.oml_sync* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.vo_vsync_info*, %struct.vo_vsync_info** %4, align 8
  %27 = getelementptr inbounds %struct.vo_vsync_info, %struct.vo_vsync_info* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 4
  ret void
}

declare dso_local i32 @oml_sync_reset(%struct.oml_sync*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
