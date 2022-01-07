; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_surface.c_dds_rgb_to_d3dformat.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_surface.c_dds_rgb_to_d3dformat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, i64, i64, i64, i32 }
%struct.dds_pixel_format = type { i64, i64, i64, i64, i32, i64 }

@rgb_pixel_formats = common dso_local global %struct.TYPE_3__* null, align 8
@DDS_PF_ALPHA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"Unknown RGB pixel format (%#x, %#x, %#x, %#x)\0A\00", align 1
@D3DFMT_UNKNOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dds_pixel_format*)* @dds_rgb_to_d3dformat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dds_rgb_to_d3dformat(%struct.dds_pixel_format* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dds_pixel_format*, align 8
  %4 = alloca i32, align 4
  store %struct.dds_pixel_format* %0, %struct.dds_pixel_format** %3, align 8
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %96, %1
  %6 = load i32, i32* %4, align 4
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** @rgb_pixel_formats, align 8
  %8 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %7)
  %9 = icmp ult i32 %6, %8
  br i1 %9, label %10, label %99

10:                                               ; preds = %5
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** @rgb_pixel_formats, align 8
  %12 = load i32, i32* %4, align 4
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i64 %13
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.dds_pixel_format*, %struct.dds_pixel_format** %3, align 8
  %18 = getelementptr inbounds %struct.dds_pixel_format, %struct.dds_pixel_format* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp eq i64 %16, %19
  br i1 %20, label %21, label %95

21:                                               ; preds = %10
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** @rgb_pixel_formats, align 8
  %23 = load i32, i32* %4, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.dds_pixel_format*, %struct.dds_pixel_format** %3, align 8
  %29 = getelementptr inbounds %struct.dds_pixel_format, %struct.dds_pixel_format* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp eq i64 %27, %30
  br i1 %31, label %32, label %95

32:                                               ; preds = %21
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** @rgb_pixel_formats, align 8
  %34 = load i32, i32* %4, align 4
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.dds_pixel_format*, %struct.dds_pixel_format** %3, align 8
  %40 = getelementptr inbounds %struct.dds_pixel_format, %struct.dds_pixel_format* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = icmp eq i64 %38, %41
  br i1 %42, label %43, label %95

43:                                               ; preds = %32
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** @rgb_pixel_formats, align 8
  %45 = load i32, i32* %4, align 4
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 3
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.dds_pixel_format*, %struct.dds_pixel_format** %3, align 8
  %51 = getelementptr inbounds %struct.dds_pixel_format, %struct.dds_pixel_format* %50, i32 0, i32 3
  %52 = load i64, i64* %51, align 8
  %53 = icmp eq i64 %49, %52
  br i1 %53, label %54, label %95

54:                                               ; preds = %43
  %55 = load %struct.dds_pixel_format*, %struct.dds_pixel_format** %3, align 8
  %56 = getelementptr inbounds %struct.dds_pixel_format, %struct.dds_pixel_format* %55, i32 0, i32 4
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @DDS_PF_ALPHA, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %79

61:                                               ; preds = %54
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** @rgb_pixel_formats, align 8
  %63 = load i32, i32* %4, align 4
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 4
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.dds_pixel_format*, %struct.dds_pixel_format** %3, align 8
  %69 = getelementptr inbounds %struct.dds_pixel_format, %struct.dds_pixel_format* %68, i32 0, i32 5
  %70 = load i64, i64* %69, align 8
  %71 = icmp eq i64 %67, %70
  br i1 %71, label %72, label %79

72:                                               ; preds = %61
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** @rgb_pixel_formats, align 8
  %74 = load i32, i32* %4, align 4
  %75 = zext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 5
  %78 = load i32, i32* %77, align 8
  store i32 %78, i32* %2, align 4
  br label %114

79:                                               ; preds = %61, %54
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** @rgb_pixel_formats, align 8
  %81 = load i32, i32* %4, align 4
  %82 = zext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 4
  %85 = load i64, i64* %84, align 8
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %87, label %94

87:                                               ; preds = %79
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** @rgb_pixel_formats, align 8
  %89 = load i32, i32* %4, align 4
  %90 = zext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 5
  %93 = load i32, i32* %92, align 8
  store i32 %93, i32* %2, align 4
  br label %114

94:                                               ; preds = %79
  br label %95

95:                                               ; preds = %94, %43, %32, %21, %10
  br label %96

96:                                               ; preds = %95
  %97 = load i32, i32* %4, align 4
  %98 = add i32 %97, 1
  store i32 %98, i32* %4, align 4
  br label %5

99:                                               ; preds = %5
  %100 = load %struct.dds_pixel_format*, %struct.dds_pixel_format** %3, align 8
  %101 = getelementptr inbounds %struct.dds_pixel_format, %struct.dds_pixel_format* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = load %struct.dds_pixel_format*, %struct.dds_pixel_format** %3, align 8
  %104 = getelementptr inbounds %struct.dds_pixel_format, %struct.dds_pixel_format* %103, i32 0, i32 2
  %105 = load i64, i64* %104, align 8
  %106 = load %struct.dds_pixel_format*, %struct.dds_pixel_format** %3, align 8
  %107 = getelementptr inbounds %struct.dds_pixel_format, %struct.dds_pixel_format* %106, i32 0, i32 3
  %108 = load i64, i64* %107, align 8
  %109 = load %struct.dds_pixel_format*, %struct.dds_pixel_format** %3, align 8
  %110 = getelementptr inbounds %struct.dds_pixel_format, %struct.dds_pixel_format* %109, i32 0, i32 5
  %111 = load i64, i64* %110, align 8
  %112 = call i32 @WARN(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i64 %102, i64 %105, i64 %108, i64 %111)
  %113 = load i32, i32* @D3DFMT_UNKNOWN, align 4
  store i32 %113, i32* %2, align 4
  br label %114

114:                                              ; preds = %99, %87, %72
  %115 = load i32, i32* %2, align 4
  ret i32 %115
}

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_3__*) #1

declare dso_local i32 @WARN(i8*, i64, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
