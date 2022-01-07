; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs-opengl/extr_gl-subsystem.c_device_copy_texture_region.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs-opengl/extr_gl-subsystem.c_device_copy_texture_region.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i64 }
%struct.gs_texture_2d = type { i64, i64 }

@LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Source texture is NULL\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"Destination texture is NULL\00", align 1
@GS_TEXTURE_2D = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [52 x i8] c"Source and destination textures must be 2D textures\00", align 1
@.str.3 = private unnamed_addr constant [44 x i8] c"Source and destination formats do not match\00", align 1
@.str.4 = private unnamed_addr constant [71 x i8] c"Destination texture region is not big enough to hold the source region\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"device_copy_texture (GL) failed\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @device_copy_texture_region(i32* %0, %struct.TYPE_6__* %1, i64 %2, i64 %3, %struct.TYPE_6__* %4, i64 %5, i64 %6, i64 %7, i64 %8) #0 {
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_6__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_6__*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca %struct.gs_texture_2d*, align 8
  %20 = alloca %struct.gs_texture_2d*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  store i32* %0, i32** %10, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %11, align 8
  store i64 %2, i64* %12, align 8
  store i64 %3, i64* %13, align 8
  store %struct.TYPE_6__* %4, %struct.TYPE_6__** %14, align 8
  store i64 %5, i64* %15, align 8
  store i64 %6, i64* %16, align 8
  store i64 %7, i64* %17, align 8
  store i64 %8, i64* %18, align 8
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %24 = bitcast %struct.TYPE_6__* %23 to %struct.gs_texture_2d*
  store %struct.gs_texture_2d* %24, %struct.gs_texture_2d** %19, align 8
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %26 = bitcast %struct.TYPE_6__* %25 to %struct.gs_texture_2d*
  store %struct.gs_texture_2d* %26, %struct.gs_texture_2d** %20, align 8
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %28 = icmp ne %struct.TYPE_6__* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %9
  %30 = load i32, i32* @LOG_ERROR, align 4
  %31 = call i32 @blog(i32 %30, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %121

32:                                               ; preds = %9
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %34 = icmp ne %struct.TYPE_6__* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %32
  %36 = load i32, i32* @LOG_ERROR, align 4
  %37 = call i32 @blog(i32 %36, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %121

38:                                               ; preds = %32
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @GS_TEXTURE_2D, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %50, label %44

44:                                               ; preds = %38
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @GS_TEXTURE_2D, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %44, %38
  %51 = load i32, i32* @LOG_ERROR, align 4
  %52 = call i32 @blog(i32 %51, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0))
  br label %121

53:                                               ; preds = %44
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %56, %59
  br i1 %60, label %61, label %64

61:                                               ; preds = %53
  %62 = load i32, i32* @LOG_ERROR, align 4
  %63 = call i32 @blog(i32 %62, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0))
  br label %121

64:                                               ; preds = %53
  %65 = load i64, i64* %17, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %64
  %68 = load i64, i64* %17, align 8
  br label %75

69:                                               ; preds = %64
  %70 = load %struct.gs_texture_2d*, %struct.gs_texture_2d** %19, align 8
  %71 = getelementptr inbounds %struct.gs_texture_2d, %struct.gs_texture_2d* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* %15, align 8
  %74 = sub nsw i64 %72, %73
  br label %75

75:                                               ; preds = %69, %67
  %76 = phi i64 [ %68, %67 ], [ %74, %69 ]
  store i64 %76, i64* %21, align 8
  %77 = load i64, i64* %18, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %75
  %80 = load i64, i64* %18, align 8
  br label %87

81:                                               ; preds = %75
  %82 = load %struct.gs_texture_2d*, %struct.gs_texture_2d** %19, align 8
  %83 = getelementptr inbounds %struct.gs_texture_2d, %struct.gs_texture_2d* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* %16, align 8
  %86 = sub nsw i64 %84, %85
  br label %87

87:                                               ; preds = %81, %79
  %88 = phi i64 [ %80, %79 ], [ %86, %81 ]
  store i64 %88, i64* %22, align 8
  %89 = load %struct.gs_texture_2d*, %struct.gs_texture_2d** %20, align 8
  %90 = getelementptr inbounds %struct.gs_texture_2d, %struct.gs_texture_2d* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* %12, align 8
  %93 = sub nsw i64 %91, %92
  %94 = load i64, i64* %21, align 8
  %95 = icmp slt i64 %93, %94
  br i1 %95, label %104, label %96

96:                                               ; preds = %87
  %97 = load %struct.gs_texture_2d*, %struct.gs_texture_2d** %20, align 8
  %98 = getelementptr inbounds %struct.gs_texture_2d, %struct.gs_texture_2d* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* %13, align 8
  %101 = sub nsw i64 %99, %100
  %102 = load i64, i64* %22, align 8
  %103 = icmp slt i64 %101, %102
  br i1 %103, label %104, label %107

104:                                              ; preds = %96, %87
  %105 = load i32, i32* @LOG_ERROR, align 4
  %106 = call i32 @blog(i32 %105, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.4, i64 0, i64 0))
  br label %121

107:                                              ; preds = %96
  %108 = load i32*, i32** %10, align 8
  %109 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %110 = load i64, i64* %12, align 8
  %111 = load i64, i64* %13, align 8
  %112 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %113 = load i64, i64* %15, align 8
  %114 = load i64, i64* %16, align 8
  %115 = load i64, i64* %21, align 8
  %116 = load i64, i64* %22, align 8
  %117 = call i32 @gl_copy_texture(i32* %108, %struct.TYPE_6__* %109, i64 %110, i64 %111, %struct.TYPE_6__* %112, i64 %113, i64 %114, i64 %115, i64 %116)
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %120, label %119

119:                                              ; preds = %107
  br label %121

120:                                              ; preds = %107
  br label %124

121:                                              ; preds = %119, %104, %61, %50, %35, %29
  %122 = load i32, i32* @LOG_ERROR, align 4
  %123 = call i32 @blog(i32 %122, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0))
  br label %124

124:                                              ; preds = %121, %120
  ret void
}

declare dso_local i32 @blog(i32, i8*) #1

declare dso_local i32 @gl_copy_texture(i32*, %struct.TYPE_6__*, i64, i64, %struct.TYPE_6__*, i64, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
