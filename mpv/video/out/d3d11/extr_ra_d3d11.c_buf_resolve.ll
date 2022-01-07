; ModuleID = '/home/carl/AnghaBench/mpv/video/out/d3d11/extr_ra_d3d11.c_buf_resolve.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/d3d11/extr_ra_d3d11.c_buf_resolve.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ra = type { %struct.ra_d3d11* }
%struct.ra_d3d11 = type { i32 }
%struct.ra_buf = type { %struct.TYPE_2__, %struct.d3d_buf* }
%struct.TYPE_2__ = type { i32 }
%struct.d3d_buf = type { i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ra*, %struct.ra_buf*)* @buf_resolve to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @buf_resolve(%struct.ra* %0, %struct.ra_buf* %1) #0 {
  %3 = alloca %struct.ra*, align 8
  %4 = alloca %struct.ra_buf*, align 8
  %5 = alloca %struct.ra_d3d11*, align 8
  %6 = alloca %struct.d3d_buf*, align 8
  store %struct.ra* %0, %struct.ra** %3, align 8
  store %struct.ra_buf* %1, %struct.ra_buf** %4, align 8
  %7 = load %struct.ra*, %struct.ra** %3, align 8
  %8 = getelementptr inbounds %struct.ra, %struct.ra* %7, i32 0, i32 0
  %9 = load %struct.ra_d3d11*, %struct.ra_d3d11** %8, align 8
  store %struct.ra_d3d11* %9, %struct.ra_d3d11** %5, align 8
  %10 = load %struct.ra_buf*, %struct.ra_buf** %4, align 8
  %11 = getelementptr inbounds %struct.ra_buf, %struct.ra_buf* %10, i32 0, i32 1
  %12 = load %struct.d3d_buf*, %struct.d3d_buf** %11, align 8
  store %struct.d3d_buf* %12, %struct.d3d_buf** %6, align 8
  %13 = load %struct.ra_buf*, %struct.ra_buf** %4, align 8
  %14 = getelementptr inbounds %struct.ra_buf, %struct.ra_buf* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %2
  %19 = load %struct.d3d_buf*, %struct.d3d_buf** %6, align 8
  %20 = getelementptr inbounds %struct.d3d_buf, %struct.d3d_buf* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %18, %2
  br label %38

24:                                               ; preds = %18
  %25 = load %struct.ra_d3d11*, %struct.ra_d3d11** %5, align 8
  %26 = getelementptr inbounds %struct.ra_d3d11, %struct.ra_d3d11* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.d3d_buf*, %struct.d3d_buf** %6, align 8
  %29 = getelementptr inbounds %struct.d3d_buf, %struct.d3d_buf* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = inttoptr i64 %30 to i32*
  %32 = load %struct.d3d_buf*, %struct.d3d_buf** %6, align 8
  %33 = getelementptr inbounds %struct.d3d_buf, %struct.d3d_buf* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @ID3D11DeviceContext_UpdateSubresource(i32 %27, i32* %31, i32 0, i32* null, i32 %34, i32 0, i32 0)
  %36 = load %struct.d3d_buf*, %struct.d3d_buf** %6, align 8
  %37 = getelementptr inbounds %struct.d3d_buf, %struct.d3d_buf* %36, i32 0, i32 0
  store i32 0, i32* %37, align 8
  br label %38

38:                                               ; preds = %24, %23
  ret void
}

declare dso_local i32 @ID3D11DeviceContext_UpdateSubresource(i32, i32*, i32, i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
