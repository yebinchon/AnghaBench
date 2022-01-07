; ModuleID = '/home/carl/AnghaBench/php-src/ext/gd/libgd/extr_gd_interpolation.c_gdImageRotateInterpolated.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/gd/libgd/extr_gd_interpolation.c_gdImageRotateInterpolated.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i64, i32, i32, i32, i32, i32, i32, i32*, i32*, i32*, i32* }

@gdMaxColors = common dso_local global i32 0, align 4
@gdEffectReplace = common dso_local global i32 0, align 4
@GD_METHOD_COUNT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_22__* @gdImageRotateInterpolated(%struct.TYPE_22__* %0, float %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_22__*, align 8
  %5 = alloca %struct.TYPE_22__*, align 8
  %6 = alloca float, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_22__*, align 8
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %5, align 8
  store float %1, float* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load float, float* %6, align 4
  %11 = fmul float %10, 1.000000e+02
  %12 = call i64 @floorf(float %11)
  %13 = trunc i64 %12 to i32
  %14 = call i32 @fmod(i32 %13, i32 36000)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %4, align 8
  br label %142

18:                                               ; preds = %3
  %19 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %60

23:                                               ; preds = %18
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* @gdMaxColors, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %57

27:                                               ; preds = %23
  %28 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %28, i32 0, i32 10
  %30 = load i32*, i32** %29, align 8
  %31 = load i32, i32* %7, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %35, i32 0, i32 9
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* %7, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %42, i32 0, i32 8
  %44 = load i32*, i32** %43, align 8
  %45 = load i32, i32* %7, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %49, i32 0, i32 7
  %51 = load i32*, i32** %50, align 8
  %52 = load i32, i32* %7, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @gdTrueColorAlpha(i32 %34, i32 %41, i32 %48, i32 %55)
  store i32 %56, i32* %7, align 4
  br label %57

57:                                               ; preds = %27, %23
  %58 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %59 = call i32 @gdImagePaletteToTrueColor(%struct.TYPE_22__* %58)
  br label %60

60:                                               ; preds = %57, %18
  %61 = load i32, i32* %8, align 4
  switch i32 %61, label %103 [
    i32 0, label %62
    i32 -27000, label %94
    i32 9000, label %94
    i32 -18000, label %97
    i32 18000, label %97
    i32 -9000, label %100
    i32 27000, label %100
  ]

62:                                               ; preds = %60
  %63 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %63, i32 0, i32 4
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 8
  %69 = call %struct.TYPE_22__* @gdImageCreateTrueColor(i32 %65, i32 %68)
  store %struct.TYPE_22__* %69, %struct.TYPE_22__** %9, align 8
  %70 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %71 = icmp eq %struct.TYPE_22__* %70, null
  br i1 %71, label %72, label %73

72:                                               ; preds = %62
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %4, align 8
  br label %142

73:                                               ; preds = %62
  %74 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %74, i32 0, i32 6
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %78 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %77, i32 0, i32 6
  store i32 %76, i32* %78, align 4
  %79 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %80 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %79, i32 0, i32 1
  store i32 1, i32* %80, align 8
  %81 = load i32, i32* @gdEffectReplace, align 4
  %82 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %83 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %82, i32 0, i32 5
  store i32 %81, i32* %83, align 8
  %84 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %85 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %86 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %86, i32 0, i32 4
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @gdImageCopy(%struct.TYPE_22__* %84, %struct.TYPE_22__* %85, i32 0, i32 0, i32 0, i32 0, i32 %88, i32 %91)
  %93 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  store %struct.TYPE_22__* %93, %struct.TYPE_22__** %4, align 8
  br label %142

94:                                               ; preds = %60, %60
  %95 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %96 = call %struct.TYPE_22__* @gdImageRotate90(%struct.TYPE_22__* %95, i32 0)
  store %struct.TYPE_22__* %96, %struct.TYPE_22__** %4, align 8
  br label %142

97:                                               ; preds = %60, %60
  %98 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %99 = call %struct.TYPE_22__* @gdImageRotate180(%struct.TYPE_22__* %98, i32 0)
  store %struct.TYPE_22__* %99, %struct.TYPE_22__** %4, align 8
  br label %142

100:                                              ; preds = %60, %60
  %101 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %102 = call %struct.TYPE_22__* @gdImageRotate270(%struct.TYPE_22__* %101, i32 0)
  store %struct.TYPE_22__* %102, %struct.TYPE_22__** %4, align 8
  br label %142

103:                                              ; preds = %60
  %104 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %105 = icmp eq %struct.TYPE_22__* %104, null
  br i1 %105, label %117, label %106

106:                                              ; preds = %103
  %107 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %108 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 4
  %110 = icmp slt i32 %109, 1
  br i1 %110, label %117, label %111

111:                                              ; preds = %106
  %112 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %113 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* @GD_METHOD_COUNT, align 4
  %116 = icmp sgt i32 %114, %115
  br i1 %116, label %117, label %118

117:                                              ; preds = %111, %106, %103
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %4, align 8
  br label %142

118:                                              ; preds = %111
  %119 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %120 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 4
  switch i32 %121, label %137 [
    i32 128, label %122
    i32 129, label %127
    i32 130, label %132
  ]

122:                                              ; preds = %118
  %123 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %124 = load float, float* %6, align 4
  %125 = load i32, i32* %7, align 4
  %126 = call %struct.TYPE_22__* @gdImageRotateNearestNeighbour(%struct.TYPE_22__* %123, float %124, i32 %125)
  store %struct.TYPE_22__* %126, %struct.TYPE_22__** %4, align 8
  br label %142

127:                                              ; preds = %118
  %128 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %129 = load float, float* %6, align 4
  %130 = load i32, i32* %7, align 4
  %131 = call %struct.TYPE_22__* @gdImageRotateBilinear(%struct.TYPE_22__* %128, float %129, i32 %130)
  store %struct.TYPE_22__* %131, %struct.TYPE_22__** %4, align 8
  br label %142

132:                                              ; preds = %118
  %133 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %134 = load float, float* %6, align 4
  %135 = load i32, i32* %7, align 4
  %136 = call %struct.TYPE_22__* @gdImageRotateBicubicFixed(%struct.TYPE_22__* %133, float %134, i32 %135)
  store %struct.TYPE_22__* %136, %struct.TYPE_22__** %4, align 8
  br label %142

137:                                              ; preds = %118
  %138 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %139 = load float, float* %6, align 4
  %140 = load i32, i32* %7, align 4
  %141 = call %struct.TYPE_22__* @gdImageRotateGeneric(%struct.TYPE_22__* %138, float %139, i32 %140)
  store %struct.TYPE_22__* %141, %struct.TYPE_22__** %4, align 8
  br label %142

142:                                              ; preds = %137, %132, %127, %122, %117, %100, %97, %94, %73, %72, %17
  %143 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  ret %struct.TYPE_22__* %143
}

declare dso_local i32 @fmod(i32, i32) #1

declare dso_local i64 @floorf(float) #1

declare dso_local i32 @gdTrueColorAlpha(i32, i32, i32, i32) #1

declare dso_local i32 @gdImagePaletteToTrueColor(%struct.TYPE_22__*) #1

declare dso_local %struct.TYPE_22__* @gdImageCreateTrueColor(i32, i32) #1

declare dso_local i32 @gdImageCopy(%struct.TYPE_22__*, %struct.TYPE_22__*, i32, i32, i32, i32, i32, i32) #1

declare dso_local %struct.TYPE_22__* @gdImageRotate90(%struct.TYPE_22__*, i32) #1

declare dso_local %struct.TYPE_22__* @gdImageRotate180(%struct.TYPE_22__*, i32) #1

declare dso_local %struct.TYPE_22__* @gdImageRotate270(%struct.TYPE_22__*, i32) #1

declare dso_local %struct.TYPE_22__* @gdImageRotateNearestNeighbour(%struct.TYPE_22__*, float, i32) #1

declare dso_local %struct.TYPE_22__* @gdImageRotateBilinear(%struct.TYPE_22__*, float, i32) #1

declare dso_local %struct.TYPE_22__* @gdImageRotateBicubicFixed(%struct.TYPE_22__*, float, i32) #1

declare dso_local %struct.TYPE_22__* @gdImageRotateGeneric(%struct.TYPE_22__*, float, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
