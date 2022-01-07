; ModuleID = '/home/carl/AnghaBench/mpv/video/filter/extr_vf_vapoursynth.c_copy_mp_to_vs_frame_props_map.c'
source_filename = "/home/carl/AnghaBench/mpv/video/filter/extr_vf_vapoursynth.c_copy_mp_to_vs_frame_props_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.priv = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (i32*, i8*, i32, i32)*, i32 (i32*, i8*, i8*, i32, i32)* }
%struct.mp_image = type { i32, i32, %struct.mp_image_params }
%struct.mp_image_params = type { i32, i32, i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i32 }

@.str = private unnamed_addr constant [8 x i8] c"_SARNum\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"_SARDen\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"_ColorRange\00", align 1
@MP_CSP_LEVELS_TV = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [12 x i8] c"_ColorSpace\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"_ChromaLocation\00", align 1
@MP_CHROMA_CENTER = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [10 x i8] c"_PictType\00", align 1
@MP_IMGFIELD_INTERLACED = common dso_local global i32 0, align 4
@MP_IMGFIELD_TOP_FIRST = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [12 x i8] c"_FieldBased\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.priv*, i32*, %struct.mp_image*)* @copy_mp_to_vs_frame_props_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @copy_mp_to_vs_frame_props_map(%struct.priv* %0, i32* %1, %struct.mp_image* %2) #0 {
  %4 = alloca %struct.priv*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.mp_image*, align 8
  %7 = alloca %struct.mp_image_params*, align 8
  %8 = alloca i8, align 1
  %9 = alloca i32, align 4
  store %struct.priv* %0, %struct.priv** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.mp_image* %2, %struct.mp_image** %6, align 8
  %10 = load %struct.mp_image*, %struct.mp_image** %6, align 8
  %11 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %10, i32 0, i32 2
  store %struct.mp_image_params* %11, %struct.mp_image_params** %7, align 8
  %12 = load %struct.priv*, %struct.priv** %4, align 8
  %13 = getelementptr inbounds %struct.priv, %struct.priv* %12, i32 0, i32 0
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32 (i32*, i8*, i32, i32)*, i32 (i32*, i8*, i32, i32)** %15, align 8
  %17 = load i32*, i32** %5, align 8
  %18 = load %struct.mp_image_params*, %struct.mp_image_params** %7, align 8
  %19 = getelementptr inbounds %struct.mp_image_params, %struct.mp_image_params* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call i32 %16(i32* %17, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %20, i32 0)
  %22 = load %struct.priv*, %struct.priv** %4, align 8
  %23 = getelementptr inbounds %struct.priv, %struct.priv* %22, i32 0, i32 0
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32 (i32*, i8*, i32, i32)*, i32 (i32*, i8*, i32, i32)** %25, align 8
  %27 = load i32*, i32** %5, align 8
  %28 = load %struct.mp_image_params*, %struct.mp_image_params** %7, align 8
  %29 = getelementptr inbounds %struct.mp_image_params, %struct.mp_image_params* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 %26(i32* %27, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %30, i32 0)
  %32 = load %struct.mp_image_params*, %struct.mp_image_params** %7, align 8
  %33 = getelementptr inbounds %struct.mp_image_params, %struct.mp_image_params* %32, i32 0, i32 3
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %52

37:                                               ; preds = %3
  %38 = load %struct.priv*, %struct.priv** %4, align 8
  %39 = getelementptr inbounds %struct.priv, %struct.priv* %38, i32 0, i32 0
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32 (i32*, i8*, i32, i32)*, i32 (i32*, i8*, i32, i32)** %41, align 8
  %43 = load i32*, i32** %5, align 8
  %44 = load %struct.mp_image_params*, %struct.mp_image_params** %7, align 8
  %45 = getelementptr inbounds %struct.mp_image_params, %struct.mp_image_params* %44, i32 0, i32 3
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @MP_CSP_LEVELS_TV, align 8
  %49 = icmp eq i64 %47, %48
  %50 = zext i1 %49 to i32
  %51 = call i32 %42(i32* %43, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 %50, i32 0)
  br label %52

52:                                               ; preds = %37, %3
  %53 = load %struct.priv*, %struct.priv** %4, align 8
  %54 = getelementptr inbounds %struct.priv, %struct.priv* %53, i32 0, i32 0
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i32 (i32*, i8*, i32, i32)*, i32 (i32*, i8*, i32, i32)** %56, align 8
  %58 = load i32*, i32** %5, align 8
  %59 = load %struct.mp_image_params*, %struct.mp_image_params** %7, align 8
  %60 = getelementptr inbounds %struct.mp_image_params, %struct.mp_image_params* %59, i32 0, i32 3
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @mp_csp_to_avcol_spc(i32 %62)
  %64 = call i32 %57(i32* %58, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 %63, i32 0)
  %65 = load %struct.mp_image_params*, %struct.mp_image_params** %7, align 8
  %66 = getelementptr inbounds %struct.mp_image_params, %struct.mp_image_params* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %83

69:                                               ; preds = %52
  %70 = load %struct.priv*, %struct.priv** %4, align 8
  %71 = getelementptr inbounds %struct.priv, %struct.priv* %70, i32 0, i32 0
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = load i32 (i32*, i8*, i32, i32)*, i32 (i32*, i8*, i32, i32)** %73, align 8
  %75 = load i32*, i32** %5, align 8
  %76 = load %struct.mp_image_params*, %struct.mp_image_params** %7, align 8
  %77 = getelementptr inbounds %struct.mp_image_params, %struct.mp_image_params* %76, i32 0, i32 2
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @MP_CHROMA_CENTER, align 8
  %80 = icmp eq i64 %78, %79
  %81 = zext i1 %80 to i32
  %82 = call i32 %74(i32* %75, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32 %81, i32 0)
  br label %83

83:                                               ; preds = %69, %52
  store i8 0, i8* %8, align 1
  %84 = load %struct.mp_image*, %struct.mp_image** %6, align 8
  %85 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  switch i32 %86, label %90 [
    i32 1, label %87
    i32 2, label %88
    i32 3, label %89
  ]

87:                                               ; preds = %83
  store i8 73, i8* %8, align 1
  br label %90

88:                                               ; preds = %83
  store i8 80, i8* %8, align 1
  br label %90

89:                                               ; preds = %83
  store i8 66, i8* %8, align 1
  br label %90

90:                                               ; preds = %83, %89, %88, %87
  %91 = load i8, i8* %8, align 1
  %92 = icmp ne i8 %91, 0
  br i1 %92, label %93, label %101

93:                                               ; preds = %90
  %94 = load %struct.priv*, %struct.priv** %4, align 8
  %95 = getelementptr inbounds %struct.priv, %struct.priv* %94, i32 0, i32 0
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 1
  %98 = load i32 (i32*, i8*, i8*, i32, i32)*, i32 (i32*, i8*, i8*, i32, i32)** %97, align 8
  %99 = load i32*, i32** %5, align 8
  %100 = call i32 %98(i32* %99, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i8* %8, i32 1, i32 0)
  br label %101

101:                                              ; preds = %93, %90
  store i32 0, i32* %9, align 4
  %102 = load %struct.mp_image*, %struct.mp_image** %6, align 8
  %103 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* @MP_IMGFIELD_INTERLACED, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %117

108:                                              ; preds = %101
  %109 = load %struct.mp_image*, %struct.mp_image** %6, align 8
  %110 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* @MP_IMGFIELD_TOP_FIRST, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  %115 = zext i1 %114 to i64
  %116 = select i1 %114, i32 2, i32 1
  store i32 %116, i32* %9, align 4
  br label %117

117:                                              ; preds = %108, %101
  %118 = load %struct.priv*, %struct.priv** %4, align 8
  %119 = getelementptr inbounds %struct.priv, %struct.priv* %118, i32 0, i32 0
  %120 = load %struct.TYPE_4__*, %struct.TYPE_4__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 0
  %122 = load i32 (i32*, i8*, i32, i32)*, i32 (i32*, i8*, i32, i32)** %121, align 8
  %123 = load i32*, i32** %5, align 8
  %124 = load i32, i32* %9, align 4
  %125 = call i32 %122(i32* %123, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i32 %124, i32 0)
  ret void
}

declare dso_local i32 @mp_csp_to_avcol_spc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
