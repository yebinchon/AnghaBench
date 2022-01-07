; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_surface.c_dds_luminance_to_d3dformat.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_surface.c_dds_luminance_to_d3dformat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dds_pixel_format = type { i32, i32, i32, i32 }

@D3DFMT_L8 = common dso_local global i32 0, align 4
@DDS_PF_ALPHA = common dso_local global i32 0, align 4
@D3DFMT_A4L4 = common dso_local global i32 0, align 4
@D3DFMT_L16 = common dso_local global i32 0, align 4
@D3DFMT_A8L8 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"Unknown luminance pixel format (bpp %u, l %#x, a %#x)\0A\00", align 1
@D3DFMT_UNKNOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dds_pixel_format*)* @dds_luminance_to_d3dformat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dds_luminance_to_d3dformat(%struct.dds_pixel_format* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dds_pixel_format*, align 8
  store %struct.dds_pixel_format* %0, %struct.dds_pixel_format** %3, align 8
  %4 = load %struct.dds_pixel_format*, %struct.dds_pixel_format** %3, align 8
  %5 = getelementptr inbounds %struct.dds_pixel_format, %struct.dds_pixel_format* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = icmp eq i32 %6, 8
  br i1 %7, label %8, label %35

8:                                                ; preds = %1
  %9 = load %struct.dds_pixel_format*, %struct.dds_pixel_format** %3, align 8
  %10 = getelementptr inbounds %struct.dds_pixel_format, %struct.dds_pixel_format* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = icmp eq i32 %11, 255
  br i1 %12, label %13, label %15

13:                                               ; preds = %8
  %14 = load i32, i32* @D3DFMT_L8, align 4
  store i32 %14, i32* %2, align 4
  br label %79

15:                                               ; preds = %8
  %16 = load %struct.dds_pixel_format*, %struct.dds_pixel_format** %3, align 8
  %17 = getelementptr inbounds %struct.dds_pixel_format, %struct.dds_pixel_format* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @DDS_PF_ALPHA, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %34

22:                                               ; preds = %15
  %23 = load %struct.dds_pixel_format*, %struct.dds_pixel_format** %3, align 8
  %24 = getelementptr inbounds %struct.dds_pixel_format, %struct.dds_pixel_format* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = icmp eq i32 %25, 15
  br i1 %26, label %27, label %34

27:                                               ; preds = %22
  %28 = load %struct.dds_pixel_format*, %struct.dds_pixel_format** %3, align 8
  %29 = getelementptr inbounds %struct.dds_pixel_format, %struct.dds_pixel_format* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = icmp eq i32 %30, 240
  br i1 %31, label %32, label %34

32:                                               ; preds = %27
  %33 = load i32, i32* @D3DFMT_A4L4, align 4
  store i32 %33, i32* %2, align 4
  br label %79

34:                                               ; preds = %27, %22, %15
  br label %35

35:                                               ; preds = %34, %1
  %36 = load %struct.dds_pixel_format*, %struct.dds_pixel_format** %3, align 8
  %37 = getelementptr inbounds %struct.dds_pixel_format, %struct.dds_pixel_format* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp eq i32 %38, 16
  br i1 %39, label %40, label %67

40:                                               ; preds = %35
  %41 = load %struct.dds_pixel_format*, %struct.dds_pixel_format** %3, align 8
  %42 = getelementptr inbounds %struct.dds_pixel_format, %struct.dds_pixel_format* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = icmp eq i32 %43, 65535
  br i1 %44, label %45, label %47

45:                                               ; preds = %40
  %46 = load i32, i32* @D3DFMT_L16, align 4
  store i32 %46, i32* %2, align 4
  br label %79

47:                                               ; preds = %40
  %48 = load %struct.dds_pixel_format*, %struct.dds_pixel_format** %3, align 8
  %49 = getelementptr inbounds %struct.dds_pixel_format, %struct.dds_pixel_format* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @DDS_PF_ALPHA, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %66

54:                                               ; preds = %47
  %55 = load %struct.dds_pixel_format*, %struct.dds_pixel_format** %3, align 8
  %56 = getelementptr inbounds %struct.dds_pixel_format, %struct.dds_pixel_format* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = icmp eq i32 %57, 255
  br i1 %58, label %59, label %66

59:                                               ; preds = %54
  %60 = load %struct.dds_pixel_format*, %struct.dds_pixel_format** %3, align 8
  %61 = getelementptr inbounds %struct.dds_pixel_format, %struct.dds_pixel_format* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  %63 = icmp eq i32 %62, 65280
  br i1 %63, label %64, label %66

64:                                               ; preds = %59
  %65 = load i32, i32* @D3DFMT_A8L8, align 4
  store i32 %65, i32* %2, align 4
  br label %79

66:                                               ; preds = %59, %54, %47
  br label %67

67:                                               ; preds = %66, %35
  %68 = load %struct.dds_pixel_format*, %struct.dds_pixel_format** %3, align 8
  %69 = getelementptr inbounds %struct.dds_pixel_format, %struct.dds_pixel_format* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.dds_pixel_format*, %struct.dds_pixel_format** %3, align 8
  %72 = getelementptr inbounds %struct.dds_pixel_format, %struct.dds_pixel_format* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.dds_pixel_format*, %struct.dds_pixel_format** %3, align 8
  %75 = getelementptr inbounds %struct.dds_pixel_format, %struct.dds_pixel_format* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @WARN(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %70, i32 %73, i32 %76)
  %78 = load i32, i32* @D3DFMT_UNKNOWN, align 4
  store i32 %78, i32* %2, align 4
  br label %79

79:                                               ; preds = %67, %64, %45, %32, %13
  %80 = load i32, i32* %2, align 4
  ret i32 %80
}

declare dso_local i32 @WARN(i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
