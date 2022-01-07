; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/win-capture/extr_dc-capture.c_dc_capture_get_dc.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/win-capture/extr_dc-capture.c_dc_capture_get_dc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc_capture = type { i32, i32*, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.dc_capture*)* @dc_capture_get_dc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @dc_capture_get_dc(%struct.dc_capture* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.dc_capture*, align 8
  store %struct.dc_capture* %0, %struct.dc_capture** %3, align 8
  %4 = load %struct.dc_capture*, %struct.dc_capture** %3, align 8
  %5 = getelementptr inbounds %struct.dc_capture, %struct.dc_capture* %4, i32 0, i32 3
  %6 = load i32, i32* %5, align 8
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  store i32* null, i32** %2, align 8
  br label %23

9:                                                ; preds = %1
  %10 = load %struct.dc_capture*, %struct.dc_capture** %3, align 8
  %11 = getelementptr inbounds %struct.dc_capture, %struct.dc_capture* %10, i32 0, i32 2
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %9
  %15 = load %struct.dc_capture*, %struct.dc_capture** %3, align 8
  %16 = getelementptr inbounds %struct.dc_capture, %struct.dc_capture* %15, i32 0, i32 1
  %17 = load i32*, i32** %16, align 8
  store i32* %17, i32** %2, align 8
  br label %23

18:                                               ; preds = %9
  %19 = load %struct.dc_capture*, %struct.dc_capture** %3, align 8
  %20 = getelementptr inbounds %struct.dc_capture, %struct.dc_capture* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32* @gs_texture_get_dc(i32 %21)
  store i32* %22, i32** %2, align 8
  br label %23

23:                                               ; preds = %18, %14, %8
  %24 = load i32*, i32** %2, align 8
  ret i32* %24
}

declare dso_local i32* @gs_texture_get_dc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
