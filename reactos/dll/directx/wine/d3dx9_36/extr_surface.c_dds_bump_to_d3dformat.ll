; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_surface.c_dds_bump_to_d3dformat.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_surface.c_dds_bump_to_d3dformat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dds_pixel_format = type { i32, i32, i32, i32, i32 }

@D3DFMT_V8U8 = common dso_local global i32 0, align 4
@D3DFMT_V16U16 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"Unknown bump pixel format (%u, %#x, %#x, %#x, %#x)\0A\00", align 1
@D3DFMT_UNKNOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dds_pixel_format*)* @dds_bump_to_d3dformat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dds_bump_to_d3dformat(%struct.dds_pixel_format* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dds_pixel_format*, align 8
  store %struct.dds_pixel_format* %0, %struct.dds_pixel_format** %3, align 8
  %4 = load %struct.dds_pixel_format*, %struct.dds_pixel_format** %3, align 8
  %5 = getelementptr inbounds %struct.dds_pixel_format, %struct.dds_pixel_format* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = icmp eq i32 %6, 16
  br i1 %7, label %8, label %20

8:                                                ; preds = %1
  %9 = load %struct.dds_pixel_format*, %struct.dds_pixel_format** %3, align 8
  %10 = getelementptr inbounds %struct.dds_pixel_format, %struct.dds_pixel_format* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = icmp eq i32 %11, 255
  br i1 %12, label %13, label %20

13:                                               ; preds = %8
  %14 = load %struct.dds_pixel_format*, %struct.dds_pixel_format** %3, align 8
  %15 = getelementptr inbounds %struct.dds_pixel_format, %struct.dds_pixel_format* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = icmp eq i32 %16, 65280
  br i1 %17, label %18, label %20

18:                                               ; preds = %13
  %19 = load i32, i32* @D3DFMT_V8U8, align 4
  store i32 %19, i32* %2, align 4
  br label %55

20:                                               ; preds = %13, %8, %1
  %21 = load %struct.dds_pixel_format*, %struct.dds_pixel_format** %3, align 8
  %22 = getelementptr inbounds %struct.dds_pixel_format, %struct.dds_pixel_format* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp eq i32 %23, 32
  br i1 %24, label %25, label %37

25:                                               ; preds = %20
  %26 = load %struct.dds_pixel_format*, %struct.dds_pixel_format** %3, align 8
  %27 = getelementptr inbounds %struct.dds_pixel_format, %struct.dds_pixel_format* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = icmp eq i32 %28, 65535
  br i1 %29, label %30, label %37

30:                                               ; preds = %25
  %31 = load %struct.dds_pixel_format*, %struct.dds_pixel_format** %3, align 8
  %32 = getelementptr inbounds %struct.dds_pixel_format, %struct.dds_pixel_format* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = icmp eq i32 %33, -65536
  br i1 %34, label %35, label %37

35:                                               ; preds = %30
  %36 = load i32, i32* @D3DFMT_V16U16, align 4
  store i32 %36, i32* %2, align 4
  br label %55

37:                                               ; preds = %30, %25, %20
  %38 = load %struct.dds_pixel_format*, %struct.dds_pixel_format** %3, align 8
  %39 = getelementptr inbounds %struct.dds_pixel_format, %struct.dds_pixel_format* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.dds_pixel_format*, %struct.dds_pixel_format** %3, align 8
  %42 = getelementptr inbounds %struct.dds_pixel_format, %struct.dds_pixel_format* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.dds_pixel_format*, %struct.dds_pixel_format** %3, align 8
  %45 = getelementptr inbounds %struct.dds_pixel_format, %struct.dds_pixel_format* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.dds_pixel_format*, %struct.dds_pixel_format** %3, align 8
  %48 = getelementptr inbounds %struct.dds_pixel_format, %struct.dds_pixel_format* %47, i32 0, i32 4
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.dds_pixel_format*, %struct.dds_pixel_format** %3, align 8
  %51 = getelementptr inbounds %struct.dds_pixel_format, %struct.dds_pixel_format* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @WARN(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %40, i32 %43, i32 %46, i32 %49, i32 %52)
  %54 = load i32, i32* @D3DFMT_UNKNOWN, align 4
  store i32 %54, i32* %2, align 4
  br label %55

55:                                               ; preds = %37, %35, %18
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local i32 @WARN(i8*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
