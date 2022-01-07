; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_surface.c_dds_pixel_format_to_d3dformat.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_surface.c_dds_pixel_format_to_d3dformat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dds_pixel_format = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [55 x i8] c"pixel_format: size %u, flags %#x, fourcc %#x, bpp %u.\0A\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"rmask %#x, gmask %#x, bmask %#x, amask %#x.\0A\00", align 1
@DDS_PF_FOURCC = common dso_local global i32 0, align 4
@DDS_PF_RGB = common dso_local global i32 0, align 4
@DDS_PF_LUMINANCE = common dso_local global i32 0, align 4
@DDS_PF_ALPHA_ONLY = common dso_local global i32 0, align 4
@DDS_PF_BUMPDUDV = common dso_local global i32 0, align 4
@DDS_PF_BUMPLUMINANCE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [82 x i8] c"Unknown pixel format (flags %#x, fourcc %#x, bpp %u, r %#x, g %#x, b %#x, a %#x)\0A\00", align 1
@D3DFMT_UNKNOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dds_pixel_format*)* @dds_pixel_format_to_d3dformat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dds_pixel_format_to_d3dformat(%struct.dds_pixel_format* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dds_pixel_format*, align 8
  store %struct.dds_pixel_format* %0, %struct.dds_pixel_format** %3, align 8
  %4 = load %struct.dds_pixel_format*, %struct.dds_pixel_format** %3, align 8
  %5 = getelementptr inbounds %struct.dds_pixel_format, %struct.dds_pixel_format* %4, i32 0, i32 7
  %6 = load i32, i32* %5, align 4
  %7 = load %struct.dds_pixel_format*, %struct.dds_pixel_format** %3, align 8
  %8 = getelementptr inbounds %struct.dds_pixel_format, %struct.dds_pixel_format* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.dds_pixel_format*, %struct.dds_pixel_format** %3, align 8
  %11 = getelementptr inbounds %struct.dds_pixel_format, %struct.dds_pixel_format* %10, i32 0, i32 6
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.dds_pixel_format*, %struct.dds_pixel_format** %3, align 8
  %14 = getelementptr inbounds %struct.dds_pixel_format, %struct.dds_pixel_format* %13, i32 0, i32 5
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @TRACE(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %6, i32 %9, i32 %12, i32 %15)
  %17 = load %struct.dds_pixel_format*, %struct.dds_pixel_format** %3, align 8
  %18 = getelementptr inbounds %struct.dds_pixel_format, %struct.dds_pixel_format* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.dds_pixel_format*, %struct.dds_pixel_format** %3, align 8
  %21 = getelementptr inbounds %struct.dds_pixel_format, %struct.dds_pixel_format* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.dds_pixel_format*, %struct.dds_pixel_format** %3, align 8
  %24 = getelementptr inbounds %struct.dds_pixel_format, %struct.dds_pixel_format* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.dds_pixel_format*, %struct.dds_pixel_format** %3, align 8
  %27 = getelementptr inbounds %struct.dds_pixel_format, %struct.dds_pixel_format* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @TRACE(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %19, i32 %22, i32 %25, i32 %28)
  %30 = load %struct.dds_pixel_format*, %struct.dds_pixel_format** %3, align 8
  %31 = getelementptr inbounds %struct.dds_pixel_format, %struct.dds_pixel_format* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @DDS_PF_FOURCC, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %1
  %37 = load %struct.dds_pixel_format*, %struct.dds_pixel_format** %3, align 8
  %38 = getelementptr inbounds %struct.dds_pixel_format, %struct.dds_pixel_format* %37, i32 0, i32 6
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @dds_fourcc_to_d3dformat(i32 %39)
  store i32 %40, i32* %2, align 4
  br label %115

41:                                               ; preds = %1
  %42 = load %struct.dds_pixel_format*, %struct.dds_pixel_format** %3, align 8
  %43 = getelementptr inbounds %struct.dds_pixel_format, %struct.dds_pixel_format* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @DDS_PF_RGB, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %41
  %49 = load %struct.dds_pixel_format*, %struct.dds_pixel_format** %3, align 8
  %50 = call i32 @dds_rgb_to_d3dformat(%struct.dds_pixel_format* %49)
  store i32 %50, i32* %2, align 4
  br label %115

51:                                               ; preds = %41
  %52 = load %struct.dds_pixel_format*, %struct.dds_pixel_format** %3, align 8
  %53 = getelementptr inbounds %struct.dds_pixel_format, %struct.dds_pixel_format* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @DDS_PF_LUMINANCE, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %51
  %59 = load %struct.dds_pixel_format*, %struct.dds_pixel_format** %3, align 8
  %60 = call i32 @dds_luminance_to_d3dformat(%struct.dds_pixel_format* %59)
  store i32 %60, i32* %2, align 4
  br label %115

61:                                               ; preds = %51
  %62 = load %struct.dds_pixel_format*, %struct.dds_pixel_format** %3, align 8
  %63 = getelementptr inbounds %struct.dds_pixel_format, %struct.dds_pixel_format* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @DDS_PF_ALPHA_ONLY, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %61
  %69 = load %struct.dds_pixel_format*, %struct.dds_pixel_format** %3, align 8
  %70 = call i32 @dds_alpha_to_d3dformat(%struct.dds_pixel_format* %69)
  store i32 %70, i32* %2, align 4
  br label %115

71:                                               ; preds = %61
  %72 = load %struct.dds_pixel_format*, %struct.dds_pixel_format** %3, align 8
  %73 = getelementptr inbounds %struct.dds_pixel_format, %struct.dds_pixel_format* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @DDS_PF_BUMPDUDV, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %71
  %79 = load %struct.dds_pixel_format*, %struct.dds_pixel_format** %3, align 8
  %80 = call i32 @dds_bump_to_d3dformat(%struct.dds_pixel_format* %79)
  store i32 %80, i32* %2, align 4
  br label %115

81:                                               ; preds = %71
  %82 = load %struct.dds_pixel_format*, %struct.dds_pixel_format** %3, align 8
  %83 = getelementptr inbounds %struct.dds_pixel_format, %struct.dds_pixel_format* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @DDS_PF_BUMPLUMINANCE, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %81
  %89 = load %struct.dds_pixel_format*, %struct.dds_pixel_format** %3, align 8
  %90 = call i32 @dds_bump_luminance_to_d3dformat(%struct.dds_pixel_format* %89)
  store i32 %90, i32* %2, align 4
  br label %115

91:                                               ; preds = %81
  %92 = load %struct.dds_pixel_format*, %struct.dds_pixel_format** %3, align 8
  %93 = getelementptr inbounds %struct.dds_pixel_format, %struct.dds_pixel_format* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.dds_pixel_format*, %struct.dds_pixel_format** %3, align 8
  %96 = getelementptr inbounds %struct.dds_pixel_format, %struct.dds_pixel_format* %95, i32 0, i32 6
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.dds_pixel_format*, %struct.dds_pixel_format** %3, align 8
  %99 = getelementptr inbounds %struct.dds_pixel_format, %struct.dds_pixel_format* %98, i32 0, i32 5
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.dds_pixel_format*, %struct.dds_pixel_format** %3, align 8
  %102 = getelementptr inbounds %struct.dds_pixel_format, %struct.dds_pixel_format* %101, i32 0, i32 4
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.dds_pixel_format*, %struct.dds_pixel_format** %3, align 8
  %105 = getelementptr inbounds %struct.dds_pixel_format, %struct.dds_pixel_format* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.dds_pixel_format*, %struct.dds_pixel_format** %3, align 8
  %108 = getelementptr inbounds %struct.dds_pixel_format, %struct.dds_pixel_format* %107, i32 0, i32 3
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.dds_pixel_format*, %struct.dds_pixel_format** %3, align 8
  %111 = getelementptr inbounds %struct.dds_pixel_format, %struct.dds_pixel_format* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @WARN(i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.2, i64 0, i64 0), i32 %94, i32 %97, i32 %100, i32 %103, i32 %106, i32 %109, i32 %112)
  %114 = load i32, i32* @D3DFMT_UNKNOWN, align 4
  store i32 %114, i32* %2, align 4
  br label %115

115:                                              ; preds = %91, %88, %78, %68, %58, %48, %36
  %116 = load i32, i32* %2, align 4
  ret i32 %116
}

declare dso_local i32 @TRACE(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @dds_fourcc_to_d3dformat(i32) #1

declare dso_local i32 @dds_rgb_to_d3dformat(%struct.dds_pixel_format*) #1

declare dso_local i32 @dds_luminance_to_d3dformat(%struct.dds_pixel_format*) #1

declare dso_local i32 @dds_alpha_to_d3dformat(%struct.dds_pixel_format*) #1

declare dso_local i32 @dds_bump_to_d3dformat(%struct.dds_pixel_format*) #1

declare dso_local i32 @dds_bump_luminance_to_d3dformat(%struct.dds_pixel_format*) #1

declare dso_local i32 @WARN(i8*, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
