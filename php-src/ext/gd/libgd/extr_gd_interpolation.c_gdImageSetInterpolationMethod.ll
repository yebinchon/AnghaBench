; ModuleID = '/home/carl/AnghaBench/php-src/ext/gd/libgd/extr_gd_interpolation.c_gdImageSetInterpolationMethod.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/gd/libgd/extr_gd_interpolation.c_gdImageSetInterpolationMethod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32* }

@GD_METHOD_COUNT = common dso_local global i32 0, align 4
@filter_bell = common dso_local global i32* null, align 8
@filter_bessel = common dso_local global i32* null, align 8
@filter_bicubic = common dso_local global i32* null, align 8
@filter_blackman = common dso_local global i32* null, align 8
@filter_box = common dso_local global i32* null, align 8
@filter_bspline = common dso_local global i32* null, align 8
@filter_catmullrom = common dso_local global i32* null, align 8
@filter_gaussian = common dso_local global i32* null, align 8
@filter_generalized_cubic = common dso_local global i32* null, align 8
@filter_hermite = common dso_local global i32* null, align 8
@filter_hamming = common dso_local global i32* null, align 8
@filter_hanning = common dso_local global i32* null, align 8
@filter_mitchell = common dso_local global i32* null, align 8
@filter_power = common dso_local global i32* null, align 8
@filter_quadratic = common dso_local global i32* null, align 8
@filter_sinc = common dso_local global i32* null, align 8
@filter_triangle = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gdImageSetInterpolationMethod(%struct.TYPE_3__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %7 = icmp eq %struct.TYPE_3__* %6, null
  br i1 %7, label %15, label %8

8:                                                ; preds = %2
  %9 = load i32, i32* %5, align 4
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %8
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @GD_METHOD_COUNT, align 4
  %14 = icmp sgt i32 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %11, %8, %2
  store i32 0, i32* %3, align 4
  br label %95

16:                                               ; preds = %11
  %17 = load i32, i32* %5, align 4
  switch i32 %17, label %90 [
    i32 140, label %18
    i32 145, label %19
    i32 146, label %19
    i32 133, label %19
    i32 128, label %19
    i32 149, label %22
    i32 148, label %26
    i32 147, label %30
    i32 144, label %34
    i32 143, label %38
    i32 142, label %42
    i32 141, label %46
    i32 139, label %50
    i32 138, label %54
    i32 135, label %58
    i32 137, label %62
    i32 136, label %66
    i32 134, label %70
    i32 132, label %74
    i32 131, label %78
    i32 130, label %82
    i32 129, label %86
  ]

18:                                               ; preds = %16
  store i32 145, i32* %5, align 4
  br label %19

19:                                               ; preds = %16, %16, %16, %16, %18
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 1
  store i32* null, i32** %21, align 8
  br label %91

22:                                               ; preds = %16
  %23 = load i32*, i32** @filter_bell, align 8
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 1
  store i32* %23, i32** %25, align 8
  br label %91

26:                                               ; preds = %16
  %27 = load i32*, i32** @filter_bessel, align 8
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 1
  store i32* %27, i32** %29, align 8
  br label %91

30:                                               ; preds = %16
  %31 = load i32*, i32** @filter_bicubic, align 8
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 1
  store i32* %31, i32** %33, align 8
  br label %91

34:                                               ; preds = %16
  %35 = load i32*, i32** @filter_blackman, align 8
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 1
  store i32* %35, i32** %37, align 8
  br label %91

38:                                               ; preds = %16
  %39 = load i32*, i32** @filter_box, align 8
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 1
  store i32* %39, i32** %41, align 8
  br label %91

42:                                               ; preds = %16
  %43 = load i32*, i32** @filter_bspline, align 8
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 1
  store i32* %43, i32** %45, align 8
  br label %91

46:                                               ; preds = %16
  %47 = load i32*, i32** @filter_catmullrom, align 8
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 1
  store i32* %47, i32** %49, align 8
  br label %91

50:                                               ; preds = %16
  %51 = load i32*, i32** @filter_gaussian, align 8
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 1
  store i32* %51, i32** %53, align 8
  br label %91

54:                                               ; preds = %16
  %55 = load i32*, i32** @filter_generalized_cubic, align 8
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 1
  store i32* %55, i32** %57, align 8
  br label %91

58:                                               ; preds = %16
  %59 = load i32*, i32** @filter_hermite, align 8
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 1
  store i32* %59, i32** %61, align 8
  br label %91

62:                                               ; preds = %16
  %63 = load i32*, i32** @filter_hamming, align 8
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 1
  store i32* %63, i32** %65, align 8
  br label %91

66:                                               ; preds = %16
  %67 = load i32*, i32** @filter_hanning, align 8
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 1
  store i32* %67, i32** %69, align 8
  br label %91

70:                                               ; preds = %16
  %71 = load i32*, i32** @filter_mitchell, align 8
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 1
  store i32* %71, i32** %73, align 8
  br label %91

74:                                               ; preds = %16
  %75 = load i32*, i32** @filter_power, align 8
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 1
  store i32* %75, i32** %77, align 8
  br label %91

78:                                               ; preds = %16
  %79 = load i32*, i32** @filter_quadratic, align 8
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 1
  store i32* %79, i32** %81, align 8
  br label %91

82:                                               ; preds = %16
  %83 = load i32*, i32** @filter_sinc, align 8
  %84 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 1
  store i32* %83, i32** %85, align 8
  br label %91

86:                                               ; preds = %16
  %87 = load i32*, i32** @filter_triangle, align 8
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 1
  store i32* %87, i32** %89, align 8
  br label %91

90:                                               ; preds = %16
  store i32 0, i32* %3, align 4
  br label %95

91:                                               ; preds = %86, %82, %78, %74, %70, %66, %62, %58, %54, %50, %46, %42, %38, %34, %30, %26, %22, %19
  %92 = load i32, i32* %5, align 4
  %93 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 0
  store i32 %92, i32* %94, align 8
  store i32 1, i32* %3, align 4
  br label %95

95:                                               ; preds = %91, %90, %15
  %96 = load i32, i32* %3, align 4
  ret i32 %96
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
