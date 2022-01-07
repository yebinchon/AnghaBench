; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/win-capture/extr_dc-capture.c_dc_capture_free.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/win-capture/extr_dc-capture.c_dc_capture_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc_capture = type { i32, i32, i64, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dc_capture_free(%struct.dc_capture* %0) #0 {
  %2 = alloca %struct.dc_capture*, align 8
  store %struct.dc_capture* %0, %struct.dc_capture** %2, align 8
  %3 = load %struct.dc_capture*, %struct.dc_capture** %2, align 8
  %4 = getelementptr inbounds %struct.dc_capture, %struct.dc_capture* %3, i32 0, i32 2
  %5 = load i64, i64* %4, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %23

7:                                                ; preds = %1
  %8 = load %struct.dc_capture*, %struct.dc_capture** %2, align 8
  %9 = getelementptr inbounds %struct.dc_capture, %struct.dc_capture* %8, i32 0, i32 2
  %10 = load i64, i64* %9, align 8
  %11 = load %struct.dc_capture*, %struct.dc_capture** %2, align 8
  %12 = getelementptr inbounds %struct.dc_capture, %struct.dc_capture* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @SelectObject(i64 %10, i32 %13)
  %15 = load %struct.dc_capture*, %struct.dc_capture** %2, align 8
  %16 = getelementptr inbounds %struct.dc_capture, %struct.dc_capture* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = call i32 @DeleteDC(i64 %17)
  %19 = load %struct.dc_capture*, %struct.dc_capture** %2, align 8
  %20 = getelementptr inbounds %struct.dc_capture, %struct.dc_capture* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @DeleteObject(i32 %21)
  br label %23

23:                                               ; preds = %7, %1
  %24 = call i32 (...) @obs_enter_graphics()
  %25 = load %struct.dc_capture*, %struct.dc_capture** %2, align 8
  %26 = getelementptr inbounds %struct.dc_capture, %struct.dc_capture* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @gs_texture_destroy(i32 %27)
  %29 = call i32 (...) @obs_leave_graphics()
  %30 = load %struct.dc_capture*, %struct.dc_capture** %2, align 8
  %31 = call i32 @memset(%struct.dc_capture* %30, i32 0, i32 24)
  ret void
}

declare dso_local i32 @SelectObject(i64, i32) #1

declare dso_local i32 @DeleteDC(i64) #1

declare dso_local i32 @DeleteObject(i32) #1

declare dso_local i32 @obs_enter_graphics(...) #1

declare dso_local i32 @gs_texture_destroy(i32) #1

declare dso_local i32 @obs_leave_graphics(...) #1

declare dso_local i32 @memset(%struct.dc_capture*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
