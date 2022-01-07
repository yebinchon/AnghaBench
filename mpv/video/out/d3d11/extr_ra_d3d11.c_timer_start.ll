; ModuleID = '/home/carl/AnghaBench/mpv/video/out/d3d11/extr_ra_d3d11.c_timer_start.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/d3d11/extr_ra_d3d11.c_timer_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ra = type { %struct.ra_d3d11* }
%struct.ra_d3d11 = type { i32 }
%struct.d3d_timer = type { i64, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ra*, %struct.d3d_timer*)* @timer_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @timer_start(%struct.ra* %0, %struct.d3d_timer* %1) #0 {
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
  %11 = load %struct.ra*, %struct.ra** %3, align 8
  %12 = load %struct.d3d_timer*, %struct.d3d_timer** %4, align 8
  %13 = call i32 @timer_get_result(%struct.ra* %11, %struct.d3d_timer* %12)
  %14 = load %struct.d3d_timer*, %struct.d3d_timer** %6, align 8
  %15 = getelementptr inbounds %struct.d3d_timer, %struct.d3d_timer* %14, i32 0, i32 2
  store i32 %13, i32* %15, align 8
  %16 = load %struct.ra_d3d11*, %struct.ra_d3d11** %5, align 8
  %17 = getelementptr inbounds %struct.ra_d3d11, %struct.ra_d3d11* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.d3d_timer*, %struct.d3d_timer** %6, align 8
  %20 = getelementptr inbounds %struct.d3d_timer, %struct.d3d_timer* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to i32*
  %23 = call i32 @ID3D11DeviceContext_Begin(i32 %18, i32* %22)
  %24 = load %struct.ra_d3d11*, %struct.ra_d3d11** %5, align 8
  %25 = getelementptr inbounds %struct.ra_d3d11, %struct.ra_d3d11* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.d3d_timer*, %struct.d3d_timer** %6, align 8
  %28 = getelementptr inbounds %struct.d3d_timer, %struct.d3d_timer* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = inttoptr i64 %29 to i32*
  %31 = call i32 @ID3D11DeviceContext_End(i32 %26, i32* %30)
  ret void
}

declare dso_local i32 @timer_get_result(%struct.ra*, %struct.d3d_timer*) #1

declare dso_local i32 @ID3D11DeviceContext_Begin(i32, i32*) #1

declare dso_local i32 @ID3D11DeviceContext_End(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
