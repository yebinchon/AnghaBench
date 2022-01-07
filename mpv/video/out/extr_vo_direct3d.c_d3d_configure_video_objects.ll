; ModuleID = '/home/carl/AnghaBench/mpv/video/out/extr_vo_direct3d.c_d3d_configure_video_objects.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/extr_vo_direct3d.c_d3d_configure_video_objects.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i32, i32, i32, i32, i32, i32, %struct.texplane*, i64 }
%struct.texplane = type { i32, i32, %struct.TYPE_9__, i32, i32 }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [29 x i8] c"Allocating plane %d failed.\0A\00", align 1
@.str.1 = private unnamed_addr constant [61 x i8] c"Allocated plane %d: %d bit, shift=%d/%d size=%d/%d (%d/%d).\0A\00", align 1
@D3DPOOL_DEFAULT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"Allocating offscreen surface failed.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*)* @d3d_configure_video_objects to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @d3d_configure_video_objects(%struct.TYPE_8__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.texplane*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  store i32 0, i32* %5, align 4
  %7 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  %11 = zext i1 %10 to i32
  %12 = call i32 @assert(i32 %11)
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 8
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %103

17:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %18

18:                                               ; preds = %93, %17
  %19 = load i32, i32* %4, align 4
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = icmp slt i32 %19, %22
  br i1 %23, label %24, label %96

24:                                               ; preds = %18
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 7
  %27 = load %struct.texplane*, %struct.texplane** %26, align 8
  %28 = load i32, i32* %4, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.texplane, %struct.texplane* %27, i64 %29
  store %struct.texplane* %30, %struct.texplane** %6, align 8
  %31 = load %struct.texplane*, %struct.texplane** %6, align 8
  %32 = getelementptr inbounds %struct.texplane, %struct.texplane* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %92, label %36

36:                                               ; preds = %24
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %38 = load %struct.texplane*, %struct.texplane** %6, align 8
  %39 = getelementptr inbounds %struct.texplane, %struct.texplane* %38, i32 0, i32 2
  %40 = load %struct.texplane*, %struct.texplane** %6, align 8
  %41 = getelementptr inbounds %struct.texplane, %struct.texplane* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.texplane*, %struct.texplane** %6, align 8
  %47 = getelementptr inbounds %struct.texplane, %struct.texplane* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = ashr i32 %45, %48
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.texplane*, %struct.texplane** %6, align 8
  %54 = getelementptr inbounds %struct.texplane, %struct.texplane* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = ashr i32 %52, %55
  %57 = call i32 @d3dtex_allocate(%struct.TYPE_8__* %37, %struct.TYPE_9__* %39, i32 %42, i32 %49, i32 %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %63, label %59

59:                                               ; preds = %36
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %61 = load i32, i32* %4, align 4
  %62 = call i32 (%struct.TYPE_8__*, i8*, ...) @MP_ERR(%struct.TYPE_8__* %60, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %61)
  store i32 0, i32* %2, align 4
  br label %132

63:                                               ; preds = %36
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %65 = load i32, i32* %4, align 4
  %66 = load %struct.texplane*, %struct.texplane** %6, align 8
  %67 = getelementptr inbounds %struct.texplane, %struct.texplane* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.texplane*, %struct.texplane** %6, align 8
  %70 = getelementptr inbounds %struct.texplane, %struct.texplane* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.texplane*, %struct.texplane** %6, align 8
  %73 = getelementptr inbounds %struct.texplane, %struct.texplane* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.texplane*, %struct.texplane** %6, align 8
  %76 = getelementptr inbounds %struct.texplane, %struct.texplane* %75, i32 0, i32 2
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.texplane*, %struct.texplane** %6, align 8
  %80 = getelementptr inbounds %struct.texplane, %struct.texplane* %79, i32 0, i32 2
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.texplane*, %struct.texplane** %6, align 8
  %84 = getelementptr inbounds %struct.texplane, %struct.texplane* %83, i32 0, i32 2
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.texplane*, %struct.texplane** %6, align 8
  %88 = getelementptr inbounds %struct.texplane, %struct.texplane* %87, i32 0, i32 2
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @MP_VERBOSE(%struct.TYPE_8__* %64, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0), i32 %65, i32 %68, i32 %71, i32 %74, i32 %78, i32 %82, i32 %86, i32 %90)
  store i32 1, i32* %5, align 4
  br label %92

92:                                               ; preds = %63, %24
  br label %93

93:                                               ; preds = %92
  %94 = load i32, i32* %4, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %4, align 4
  br label %18

96:                                               ; preds = %18
  %97 = load i32, i32* %5, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %96
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %101 = call i32 @d3d_clear_video_textures(%struct.TYPE_8__* %100)
  br label %102

102:                                              ; preds = %99, %96
  br label %131

103:                                              ; preds = %1
  %104 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 4
  %106 = load i32, i32* %105, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %130, label %108

108:                                              ; preds = %103
  %109 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 6
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 3
  %117 = load i32, i32* %116, align 8
  %118 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i32 0, i32 5
  %120 = load i32, i32* %119, align 8
  %121 = load i32, i32* @D3DPOOL_DEFAULT, align 4
  %122 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i32 0, i32 4
  %124 = call i32 @IDirect3DDevice9_CreateOffscreenPlainSurface(i32 %111, i32 %114, i32 %117, i32 %120, i32 %121, i32* %123, i32* null)
  %125 = call i64 @FAILED(i32 %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %130

127:                                              ; preds = %108
  %128 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %129 = call i32 (%struct.TYPE_8__*, i8*, ...) @MP_ERR(%struct.TYPE_8__* %128, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %132

130:                                              ; preds = %108, %103
  br label %131

131:                                              ; preds = %130, %102
  store i32 1, i32* %2, align 4
  br label %132

132:                                              ; preds = %131, %127, %59
  %133 = load i32, i32* %2, align 4
  ret i32 %133
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @d3dtex_allocate(%struct.TYPE_8__*, %struct.TYPE_9__*, i32, i32, i32) #1

declare dso_local i32 @MP_ERR(%struct.TYPE_8__*, i8*, ...) #1

declare dso_local i32 @MP_VERBOSE(%struct.TYPE_8__*, i8*, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @d3d_clear_video_textures(%struct.TYPE_8__*) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @IDirect3DDevice9_CreateOffscreenPlainSurface(i32, i32, i32, i32, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
