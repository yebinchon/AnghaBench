; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_surface.c_d3dformat_to_dds_pixel_format.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_surface.c_d3dformat_to_dds_pixel_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32, i32, i32, i32, i32 }
%struct.dds_pixel_format = type { i32, i64, i32, i32, i32, i32, i32, i32 }

@rgb_pixel_formats = common dso_local global %struct.TYPE_3__* null, align 8
@DDS_PF_RGB = common dso_local global i32 0, align 4
@DDS_PF_ALPHA = common dso_local global i32 0, align 4
@D3D_OK = common dso_local global i32 0, align 4
@D3DFMT_UNKNOWN = common dso_local global i64 0, align 8
@DDS_PF_FOURCC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Unknown pixel format %#x\0A\00", align 1
@E_NOTIMPL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dds_pixel_format*, i64)* @d3dformat_to_dds_pixel_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @d3dformat_to_dds_pixel_format(%struct.dds_pixel_format* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dds_pixel_format*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.dds_pixel_format* %0, %struct.dds_pixel_format** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load %struct.dds_pixel_format*, %struct.dds_pixel_format** %4, align 8
  %8 = call i32 @memset(%struct.dds_pixel_format* %7, i32 0, i32 40)
  %9 = load %struct.dds_pixel_format*, %struct.dds_pixel_format** %4, align 8
  %10 = getelementptr inbounds %struct.dds_pixel_format, %struct.dds_pixel_format* %9, i32 0, i32 0
  store i32 40, i32* %10, align 8
  store i32 0, i32* %6, align 4
  br label %11

11:                                               ; preds = %84, %2
  %12 = load i32, i32* %6, align 4
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** @rgb_pixel_formats, align 8
  %14 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %13)
  %15 = icmp ult i32 %12, %14
  br i1 %15, label %16, label %87

16:                                               ; preds = %11
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** @rgb_pixel_formats, align 8
  %18 = load i32, i32* %6, align 4
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* %5, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %83

25:                                               ; preds = %16
  %26 = load i32, i32* @DDS_PF_RGB, align 4
  %27 = load %struct.dds_pixel_format*, %struct.dds_pixel_format** %4, align 8
  %28 = getelementptr inbounds %struct.dds_pixel_format, %struct.dds_pixel_format* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = or i32 %29, %26
  store i32 %30, i32* %28, align 8
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** @rgb_pixel_formats, align 8
  %32 = load i32, i32* %6, align 4
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 5
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.dds_pixel_format*, %struct.dds_pixel_format** %4, align 8
  %38 = getelementptr inbounds %struct.dds_pixel_format, %struct.dds_pixel_format* %37, i32 0, i32 7
  store i32 %36, i32* %38, align 4
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** @rgb_pixel_formats, align 8
  %40 = load i32, i32* %6, align 4
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 4
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.dds_pixel_format*, %struct.dds_pixel_format** %4, align 8
  %46 = getelementptr inbounds %struct.dds_pixel_format, %struct.dds_pixel_format* %45, i32 0, i32 6
  store i32 %44, i32* %46, align 8
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** @rgb_pixel_formats, align 8
  %48 = load i32, i32* %6, align 4
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.dds_pixel_format*, %struct.dds_pixel_format** %4, align 8
  %54 = getelementptr inbounds %struct.dds_pixel_format, %struct.dds_pixel_format* %53, i32 0, i32 5
  store i32 %52, i32* %54, align 4
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** @rgb_pixel_formats, align 8
  %56 = load i32, i32* %6, align 4
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.dds_pixel_format*, %struct.dds_pixel_format** %4, align 8
  %62 = getelementptr inbounds %struct.dds_pixel_format, %struct.dds_pixel_format* %61, i32 0, i32 4
  store i32 %60, i32* %62, align 8
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** @rgb_pixel_formats, align 8
  %64 = load i32, i32* %6, align 4
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.dds_pixel_format*, %struct.dds_pixel_format** %4, align 8
  %70 = getelementptr inbounds %struct.dds_pixel_format, %struct.dds_pixel_format* %69, i32 0, i32 3
  store i32 %68, i32* %70, align 4
  %71 = load %struct.dds_pixel_format*, %struct.dds_pixel_format** %4, align 8
  %72 = getelementptr inbounds %struct.dds_pixel_format, %struct.dds_pixel_format* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %81

75:                                               ; preds = %25
  %76 = load i32, i32* @DDS_PF_ALPHA, align 4
  %77 = load %struct.dds_pixel_format*, %struct.dds_pixel_format** %4, align 8
  %78 = getelementptr inbounds %struct.dds_pixel_format, %struct.dds_pixel_format* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = or i32 %79, %76
  store i32 %80, i32* %78, align 8
  br label %81

81:                                               ; preds = %75, %25
  %82 = load i32, i32* @D3D_OK, align 4
  store i32 %82, i32* %3, align 4
  br label %106

83:                                               ; preds = %16
  br label %84

84:                                               ; preds = %83
  %85 = load i32, i32* %6, align 4
  %86 = add i32 %85, 1
  store i32 %86, i32* %6, align 4
  br label %11

87:                                               ; preds = %11
  %88 = load i64, i64* %5, align 8
  %89 = call i64 @dds_fourcc_to_d3dformat(i64 %88)
  %90 = load i64, i64* @D3DFMT_UNKNOWN, align 8
  %91 = icmp ne i64 %89, %90
  br i1 %91, label %92, label %102

92:                                               ; preds = %87
  %93 = load i32, i32* @DDS_PF_FOURCC, align 4
  %94 = load %struct.dds_pixel_format*, %struct.dds_pixel_format** %4, align 8
  %95 = getelementptr inbounds %struct.dds_pixel_format, %struct.dds_pixel_format* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = or i32 %96, %93
  store i32 %97, i32* %95, align 8
  %98 = load i64, i64* %5, align 8
  %99 = load %struct.dds_pixel_format*, %struct.dds_pixel_format** %4, align 8
  %100 = getelementptr inbounds %struct.dds_pixel_format, %struct.dds_pixel_format* %99, i32 0, i32 1
  store i64 %98, i64* %100, align 8
  %101 = load i32, i32* @D3D_OK, align 4
  store i32 %101, i32* %3, align 4
  br label %106

102:                                              ; preds = %87
  %103 = load i64, i64* %5, align 8
  %104 = call i32 @WARN(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i64 %103)
  %105 = load i32, i32* @E_NOTIMPL, align 4
  store i32 %105, i32* %3, align 4
  br label %106

106:                                              ; preds = %102, %92, %81
  %107 = load i32, i32* %3, align 4
  ret i32 %107
}

declare dso_local i32 @memset(%struct.dds_pixel_format*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_3__*) #1

declare dso_local i64 @dds_fourcc_to_d3dformat(i64) #1

declare dso_local i32 @WARN(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
