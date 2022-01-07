; ModuleID = '/home/carl/AnghaBench/mpv/video/out/d3d11/extr_ra_d3d11.c_timer_stop.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/d3d11/extr_ra_d3d11.c_timer_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ra = type { %struct.ra_d3d11* }
%struct.ra_d3d11 = type { i32 }
%struct.d3d_timer = type { i32, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ra*, %struct.d3d_timer*)* @timer_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @timer_stop(%struct.ra* %0, %struct.d3d_timer* %1) #0 {
  %3 = alloca %struct.ra*, align 8
  %4 = alloca %struct.d3d_timer*, align 8
  %5 = alloca %struct.ra_d3d11*, align 8
  %6 = alloca %struct.d3d_timer*, align 8
  store %struct.ra* %0, %struct.ra** %3, align 8
  store %struct.d3d_timer* %1, %struct.d3d_timer** %4, align 8
  %7 = load %struct.ra*, %struct.ra** %3, align 8
  %8 = getelementptr inbounds %struct.ra, %struct.ra* %7, i32 0, i32 0
  %9 = load %struct.ra_d3d11*, %struct.ra_d3d11** %8, align 8
  store %struct.ra_d3d11* %9, %struct.ra_d3d11** %5, align 8
  %10 = load %struct.d3d_timer*, %struct.d3d_timer** %4, align 8
  store %struct.d3d_timer* %10, %struct.d3d_timer** %6, align 8
  %11 = load %struct.ra_d3d11*, %struct.ra_d3d11** %5, align 8
  %12 = getelementptr inbounds %struct.ra_d3d11, %struct.ra_d3d11* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.d3d_timer*, %struct.d3d_timer** %6, align 8
  %15 = getelementptr inbounds %struct.d3d_timer, %struct.d3d_timer* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to i32*
  %18 = call i32 @ID3D11DeviceContext_End(i32 %13, i32* %17)
  %19 = load %struct.ra_d3d11*, %struct.ra_d3d11** %5, align 8
  %20 = getelementptr inbounds %struct.ra_d3d11, %struct.ra_d3d11* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.d3d_timer*, %struct.d3d_timer** %6, align 8
  %23 = getelementptr inbounds %struct.d3d_timer, %struct.d3d_timer* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = inttoptr i64 %24 to i32*
  %26 = call i32 @ID3D11DeviceContext_End(i32 %21, i32* %25)
  %27 = load %struct.d3d_timer*, %struct.d3d_timer** %6, align 8
  %28 = getelementptr inbounds %struct.d3d_timer, %struct.d3d_timer* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  ret i32 %29
}

declare dso_local i32 @ID3D11DeviceContext_End(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
