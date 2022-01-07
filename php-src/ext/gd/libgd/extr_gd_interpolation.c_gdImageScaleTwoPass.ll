; ModuleID = '/home/carl/AnghaBench/php-src/ext/gd/libgd/extr_gd_interpolation.c_gdImageScaleTwoPass.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/gd/libgd/extr_gd_interpolation.c_gdImageScaleTwoPass.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_12__* @gdImageScaleTwoPass(%struct.TYPE_12__* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_12__*, align 8
  %13 = alloca %struct.TYPE_12__*, align 8
  %14 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %15 = load i32, i32* %10, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %5
  %18 = load i32, i32* %11, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %17, %5
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %6, align 8
  br label %87

21:                                               ; preds = %17
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %21
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %28 = call i32 @gdImagePaletteToTrueColor(%struct.TYPE_12__* %27)
  br label %29

29:                                               ; preds = %26, %21
  %30 = load i32, i32* %10, align 4
  %31 = load i32, i32* %9, align 4
  %32 = call %struct.TYPE_12__* @gdImageCreateTrueColor(i32 %30, i32 %31)
  store %struct.TYPE_12__* %32, %struct.TYPE_12__** %12, align 8
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %34 = icmp eq %struct.TYPE_12__* %33, null
  br i1 %34, label %35, label %36

35:                                               ; preds = %29
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %6, align 8
  br label %87

36:                                               ; preds = %29
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @gdImageSetInterpolationMethod(%struct.TYPE_12__* %37, i32 %40)
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* %9, align 4
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %46 = load i32, i32* %10, align 4
  %47 = load i32, i32* %9, align 4
  %48 = call i32 @_gdScaleHoriz(%struct.TYPE_12__* %42, i32 %43, i32 %44, %struct.TYPE_12__* %45, i32 %46, i32 %47)
  store i32 %48, i32* %14, align 4
  %49 = load i32, i32* %14, align 4
  %50 = icmp ne i32 %49, 1
  br i1 %50, label %51, label %54

51:                                               ; preds = %36
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %53 = call i32 @gdImageDestroy(%struct.TYPE_12__* %52)
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %6, align 8
  br label %87

54:                                               ; preds = %36
  %55 = load i32, i32* %10, align 4
  %56 = load i32, i32* %11, align 4
  %57 = call %struct.TYPE_12__* @gdImageCreateTrueColor(i32 %55, i32 %56)
  store %struct.TYPE_12__* %57, %struct.TYPE_12__** %13, align 8
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %59 = icmp eq %struct.TYPE_12__* %58, null
  br i1 %59, label %60, label %63

60:                                               ; preds = %54
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %62 = call i32 @gdImageDestroy(%struct.TYPE_12__* %61)
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %6, align 8
  br label %87

63:                                               ; preds = %54
  %64 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @gdImageSetInterpolationMethod(%struct.TYPE_12__* %64, i32 %67)
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %70 = load i32, i32* %10, align 4
  %71 = load i32, i32* %9, align 4
  %72 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %73 = load i32, i32* %10, align 4
  %74 = load i32, i32* %11, align 4
  %75 = call i32 @_gdScaleVert(%struct.TYPE_12__* %69, i32 %70, i32 %71, %struct.TYPE_12__* %72, i32 %73, i32 %74)
  store i32 %75, i32* %14, align 4
  %76 = load i32, i32* %14, align 4
  %77 = icmp ne i32 %76, 1
  br i1 %77, label %78, label %83

78:                                               ; preds = %63
  %79 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %80 = call i32 @gdImageDestroy(%struct.TYPE_12__* %79)
  %81 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %82 = call i32 @gdImageDestroy(%struct.TYPE_12__* %81)
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %6, align 8
  br label %87

83:                                               ; preds = %63
  %84 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %85 = call i32 @gdImageDestroy(%struct.TYPE_12__* %84)
  %86 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  store %struct.TYPE_12__* %86, %struct.TYPE_12__** %6, align 8
  br label %87

87:                                               ; preds = %83, %78, %60, %51, %35, %20
  %88 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  ret %struct.TYPE_12__* %88
}

declare dso_local i32 @gdImagePaletteToTrueColor(%struct.TYPE_12__*) #1

declare dso_local %struct.TYPE_12__* @gdImageCreateTrueColor(i32, i32) #1

declare dso_local i32 @gdImageSetInterpolationMethod(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @_gdScaleHoriz(%struct.TYPE_12__*, i32, i32, %struct.TYPE_12__*, i32, i32) #1

declare dso_local i32 @gdImageDestroy(%struct.TYPE_12__*) #1

declare dso_local i32 @_gdScaleVert(%struct.TYPE_12__*, i32, i32, %struct.TYPE_12__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
