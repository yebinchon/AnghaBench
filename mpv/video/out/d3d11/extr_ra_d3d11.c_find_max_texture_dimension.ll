; ModuleID = '/home/carl/AnghaBench/mpv/video/out/d3d11/extr_ra_d3d11.c_find_max_texture_dimension.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/d3d11/extr_ra_d3d11.c_find_max_texture_dimension.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ra = type { i32, %struct.ra_d3d11* }
%struct.ra_d3d11 = type { i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@D3D11_BIND_SHADER_RESOURCE = common dso_local global i32 0, align 4
@DXGI_FORMAT_R8_UNORM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ra*)* @find_max_texture_dimension to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @find_max_texture_dimension(%struct.ra* %0) #0 {
  %2 = alloca %struct.ra*, align 8
  %3 = alloca %struct.ra_d3d11*, align 8
  %4 = alloca %struct.TYPE_5__, align 4
  store %struct.ra* %0, %struct.ra** %2, align 8
  %5 = load %struct.ra*, %struct.ra** %2, align 8
  %6 = getelementptr inbounds %struct.ra, %struct.ra* %5, i32 0, i32 1
  %7 = load %struct.ra_d3d11*, %struct.ra_d3d11** %6, align 8
  store %struct.ra_d3d11* %7, %struct.ra_d3d11** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 0
  %9 = load %struct.ra*, %struct.ra** %2, align 8
  %10 = getelementptr inbounds %struct.ra, %struct.ra* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* %8, align 4
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 1
  %13 = load %struct.ra*, %struct.ra** %2, align 8
  %14 = getelementptr inbounds %struct.ra, %struct.ra* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %12, align 4
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 2
  store i32 1, i32* %16, align 4
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 3
  store i32 1, i32* %17, align 4
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 4
  %19 = load i32, i32* @D3D11_BIND_SHADER_RESOURCE, align 4
  store i32 %19, i32* %18, align 4
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 5
  %21 = load i32, i32* @DXGI_FORMAT_R8_UNORM, align 4
  store i32 %21, i32* %20, align 4
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 6
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  store i32 1, i32* %23, align 4
  br label %24

24:                                               ; preds = %1, %41
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = mul nsw i32 %26, 2
  store i32 %27, i32* %25, align 4
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 1
  store i32 %27, i32* %28, align 4
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp uge i32 %30, 134217728
  br i1 %31, label %32, label %33

32:                                               ; preds = %24
  br label %46

33:                                               ; preds = %24
  %34 = load %struct.ra_d3d11*, %struct.ra_d3d11** %3, align 8
  %35 = getelementptr inbounds %struct.ra_d3d11, %struct.ra_d3d11* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @ID3D11Device_CreateTexture2D(i32 %36, %struct.TYPE_5__* %4, i32* null, i32* null)
  %38 = call i64 @FAILED(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %33
  br label %46

41:                                               ; preds = %33
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.ra*, %struct.ra** %2, align 8
  %45 = getelementptr inbounds %struct.ra, %struct.ra* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 8
  br label %24

46:                                               ; preds = %40, %32
  ret void
}

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @ID3D11Device_CreateTexture2D(i32, %struct.TYPE_5__*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
