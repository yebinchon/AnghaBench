; ModuleID = '/home/carl/AnghaBench/php-src/ext/gd/libgd/extr_gd_interpolation.c_gdTransformAffineGetImage.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/gd/libgd/extr_gd_interpolation.c_gdTransformAffineGetImage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32, i32 }
%struct.TYPE_18__ = type { i64, i64, i32, i32 }

@GD_FALSE = common dso_local global i32 0, align 4
@GD_TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gdTransformAffineGetImage(%struct.TYPE_19__** %0, %struct.TYPE_19__* %1, %struct.TYPE_18__* %2, double* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_19__**, align 8
  %7 = alloca %struct.TYPE_19__*, align 8
  %8 = alloca %struct.TYPE_18__*, align 8
  %9 = alloca double*, align 8
  %10 = alloca i32, align 4
  %11 = alloca [6 x double], align 16
  %12 = alloca %struct.TYPE_18__, align 8
  %13 = alloca %struct.TYPE_18__, align 8
  store %struct.TYPE_19__** %0, %struct.TYPE_19__*** %6, align 8
  store %struct.TYPE_19__* %1, %struct.TYPE_19__** %7, align 8
  store %struct.TYPE_18__* %2, %struct.TYPE_18__** %8, align 8
  store double* %3, double** %9, align 8
  %14 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %15 = icmp eq %struct.TYPE_18__* %14, null
  br i1 %15, label %16, label %25

16:                                               ; preds = %4
  %17 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %13, i32 0, i32 1
  store i64 0, i64* %17, align 8
  %18 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %13, i32 0, i32 0
  store i64 0, i64* %18, align 8
  %19 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %20 = call i32 @gdImageSX(%struct.TYPE_19__* %19)
  %21 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %13, i32 0, i32 3
  store i32 %20, i32* %21, align 4
  %22 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %23 = call i32 @gdImageSY(%struct.TYPE_19__* %22)
  %24 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %13, i32 0, i32 2
  store i32 %23, i32* %24, align 8
  store %struct.TYPE_18__* %13, %struct.TYPE_18__** %8, align 8
  br label %25

25:                                               ; preds = %16, %4
  %26 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %27 = load double*, double** %9, align 8
  %28 = call i32 @gdTransformAffineBoundingBox(%struct.TYPE_18__* %26, double* %27, %struct.TYPE_18__* %12)
  %29 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %12, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %12, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = call %struct.TYPE_19__* @gdImageCreateTrueColor(i32 %30, i32 %32)
  %34 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %6, align 8
  store %struct.TYPE_19__* %33, %struct.TYPE_19__** %34, align 8
  %35 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %6, align 8
  %36 = load %struct.TYPE_19__*, %struct.TYPE_19__** %35, align 8
  %37 = icmp eq %struct.TYPE_19__* %36, null
  br i1 %37, label %38, label %40

38:                                               ; preds = %25
  %39 = load i32, i32* @GD_FALSE, align 4
  store i32 %39, i32* %5, align 4
  br label %83

40:                                               ; preds = %25
  %41 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %6, align 8
  %42 = load %struct.TYPE_19__*, %struct.TYPE_19__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %42, i32 0, i32 0
  store i32 1, i32* %43, align 4
  %44 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %40
  %49 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %50 = call i32 @gdImagePaletteToTrueColor(%struct.TYPE_19__* %49)
  br label %51

51:                                               ; preds = %48, %40
  %52 = getelementptr inbounds [6 x double], [6 x double]* %11, i64 0, i64 0
  %53 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %12, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = sub nsw i64 0, %54
  %56 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %12, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = sub nsw i64 0, %57
  %59 = call i32 @gdAffineTranslate(double* %52, i64 %55, i64 %58)
  %60 = getelementptr inbounds [6 x double], [6 x double]* %11, i64 0, i64 0
  %61 = load double*, double** %9, align 8
  %62 = getelementptr inbounds [6 x double], [6 x double]* %11, i64 0, i64 0
  %63 = call i32 @gdAffineConcat(double* %60, double* %61, double* %62)
  %64 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %6, align 8
  %65 = load %struct.TYPE_19__*, %struct.TYPE_19__** %64, align 8
  %66 = call i32 @gdImageAlphaBlending(%struct.TYPE_19__* %65, i32 0)
  %67 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %6, align 8
  %68 = load %struct.TYPE_19__*, %struct.TYPE_19__** %67, align 8
  %69 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %70 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %71 = getelementptr inbounds [6 x double], [6 x double]* %11, i64 0, i64 0
  %72 = call i32 @gdTransformAffineCopy(%struct.TYPE_19__* %68, i32 0, i32 0, %struct.TYPE_19__* %69, %struct.TYPE_18__* %70, double* %71)
  store i32 %72, i32* %10, align 4
  %73 = load i32, i32* %10, align 4
  %74 = load i32, i32* @GD_TRUE, align 4
  %75 = icmp ne i32 %73, %74
  br i1 %75, label %76, label %81

76:                                               ; preds = %51
  %77 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %6, align 8
  %78 = load %struct.TYPE_19__*, %struct.TYPE_19__** %77, align 8
  %79 = call i32 @gdImageDestroy(%struct.TYPE_19__* %78)
  store %struct.TYPE_19__** null, %struct.TYPE_19__*** %6, align 8
  %80 = load i32, i32* @GD_FALSE, align 4
  store i32 %80, i32* %5, align 4
  br label %83

81:                                               ; preds = %51
  %82 = load i32, i32* @GD_TRUE, align 4
  store i32 %82, i32* %5, align 4
  br label %83

83:                                               ; preds = %81, %76, %38
  %84 = load i32, i32* %5, align 4
  ret i32 %84
}

declare dso_local i32 @gdImageSX(%struct.TYPE_19__*) #1

declare dso_local i32 @gdImageSY(%struct.TYPE_19__*) #1

declare dso_local i32 @gdTransformAffineBoundingBox(%struct.TYPE_18__*, double*, %struct.TYPE_18__*) #1

declare dso_local %struct.TYPE_19__* @gdImageCreateTrueColor(i32, i32) #1

declare dso_local i32 @gdImagePaletteToTrueColor(%struct.TYPE_19__*) #1

declare dso_local i32 @gdAffineTranslate(double*, i64, i64) #1

declare dso_local i32 @gdAffineConcat(double*, double*, double*) #1

declare dso_local i32 @gdImageAlphaBlending(%struct.TYPE_19__*, i32) #1

declare dso_local i32 @gdTransformAffineCopy(%struct.TYPE_19__*, i32, i32, %struct.TYPE_19__*, %struct.TYPE_18__*, double*) #1

declare dso_local i32 @gdImageDestroy(%struct.TYPE_19__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
