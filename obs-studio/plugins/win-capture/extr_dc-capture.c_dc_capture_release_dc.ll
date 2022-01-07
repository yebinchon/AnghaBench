; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/win-capture/extr_dc-capture.c_dc_capture_release_dc.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/win-capture/extr_dc-capture.c_dc_capture_release_dc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc_capture = type { i32, i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dc_capture*)* @dc_capture_release_dc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dc_capture_release_dc(%struct.dc_capture* %0) #0 {
  %2 = alloca %struct.dc_capture*, align 8
  store %struct.dc_capture* %0, %struct.dc_capture** %2, align 8
  %3 = load %struct.dc_capture*, %struct.dc_capture** %2, align 8
  %4 = getelementptr inbounds %struct.dc_capture, %struct.dc_capture* %3, i32 0, i32 3
  %5 = load i64, i64* %4, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %19

7:                                                ; preds = %1
  %8 = load %struct.dc_capture*, %struct.dc_capture** %2, align 8
  %9 = getelementptr inbounds %struct.dc_capture, %struct.dc_capture* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.dc_capture*, %struct.dc_capture** %2, align 8
  %12 = getelementptr inbounds %struct.dc_capture, %struct.dc_capture* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.dc_capture*, %struct.dc_capture** %2, align 8
  %15 = getelementptr inbounds %struct.dc_capture, %struct.dc_capture* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = mul nsw i32 %16, 4
  %18 = call i32 @gs_texture_set_image(i32 %10, i32 %13, i32 %17, i32 0)
  br label %24

19:                                               ; preds = %1
  %20 = load %struct.dc_capture*, %struct.dc_capture** %2, align 8
  %21 = getelementptr inbounds %struct.dc_capture, %struct.dc_capture* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @gs_texture_release_dc(i32 %22)
  br label %24

24:                                               ; preds = %19, %7
  ret void
}

declare dso_local i32 @gs_texture_set_image(i32, i32, i32, i32) #1

declare dso_local i32 @gs_texture_release_dc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
