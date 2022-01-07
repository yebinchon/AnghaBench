; ModuleID = '/home/carl/AnghaBench/mpv/video/out/d3d11/extr_ra_d3d11.c_fmt_to_dxgi.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/d3d11/extr_ra_d3d11.c_fmt_to_dxgi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ra_format = type { %struct.d3d_fmt* }
%struct.d3d_fmt = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ra_format*)* @fmt_to_dxgi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fmt_to_dxgi(%struct.ra_format* %0) #0 {
  %2 = alloca %struct.ra_format*, align 8
  %3 = alloca %struct.d3d_fmt*, align 8
  store %struct.ra_format* %0, %struct.ra_format** %2, align 8
  %4 = load %struct.ra_format*, %struct.ra_format** %2, align 8
  %5 = getelementptr inbounds %struct.ra_format, %struct.ra_format* %4, i32 0, i32 0
  %6 = load %struct.d3d_fmt*, %struct.d3d_fmt** %5, align 8
  store %struct.d3d_fmt* %6, %struct.d3d_fmt** %3, align 8
  %7 = load %struct.d3d_fmt*, %struct.d3d_fmt** %3, align 8
  %8 = getelementptr inbounds %struct.d3d_fmt, %struct.d3d_fmt* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  ret i32 %9
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
