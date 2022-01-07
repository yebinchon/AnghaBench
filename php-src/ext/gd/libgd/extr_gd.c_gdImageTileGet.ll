; ModuleID = '/home/carl/AnghaBench/php-src/ext/gd/libgd/extr_gd.c_gdImageTileGet.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/gd/libgd/extr_gd.c_gdImageTileGet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_12__*, i64 }
%struct.TYPE_12__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, i32, i32)* @gdImageTileGet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gdImageTileGet(%struct.TYPE_11__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %15 = icmp ne %struct.TYPE_12__* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %117

17:                                               ; preds = %3
  %18 = load i32, i32* %6, align 4
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %20, align 8
  %22 = call i32 @gdImageSX(%struct.TYPE_12__* %21)
  %23 = srem i32 %18, %22
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %7, align 4
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %26, align 8
  %28 = call i32 @gdImageSY(%struct.TYPE_12__* %27)
  %29 = srem i32 %24, %28
  store i32 %29, i32* %9, align 4
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %31, align 8
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* %9, align 4
  %35 = call i32 @gdImageGetPixel(%struct.TYPE_12__* %32, i32 %33, i32 %34)
  store i32 %35, i32* %11, align 4
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %72

40:                                               ; preds = %17
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %40
  %48 = load i32, i32* %11, align 4
  store i32 %48, i32* %10, align 4
  br label %71

49:                                               ; preds = %40
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %51, align 8
  %53 = load i32, i32* %11, align 4
  %54 = call i32 @gdImageRed(%struct.TYPE_12__* %52, i32 %53)
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** %56, align 8
  %58 = load i32, i32* %11, align 4
  %59 = call i32 @gdImageGreen(%struct.TYPE_12__* %57, i32 %58)
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_12__*, %struct.TYPE_12__** %61, align 8
  %63 = load i32, i32* %11, align 4
  %64 = call i32 @gdImageBlue(%struct.TYPE_12__* %62, i32 %63)
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 0
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** %66, align 8
  %68 = load i32, i32* %11, align 4
  %69 = call i32 @gdImageAlpha(%struct.TYPE_12__* %67, i32 %68)
  %70 = call i32 @gdTrueColorAlpha(i32 %54, i32 %59, i32 %64, i32 %69)
  store i32 %70, i32* %10, align 4
  br label %71

71:                                               ; preds = %49, %47
  br label %115

72:                                               ; preds = %17
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 0
  %75 = load %struct.TYPE_12__*, %struct.TYPE_12__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %90

79:                                               ; preds = %72
  %80 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %81 = load i32, i32* %11, align 4
  %82 = call i32 @gdTrueColorGetRed(i32 %81)
  %83 = load i32, i32* %11, align 4
  %84 = call i32 @gdTrueColorGetGreen(i32 %83)
  %85 = load i32, i32* %11, align 4
  %86 = call i32 @gdTrueColorGetBlue(i32 %85)
  %87 = load i32, i32* %11, align 4
  %88 = call i32 @gdTrueColorGetAlpha(i32 %87)
  %89 = call i32 @gdImageColorResolveAlpha(%struct.TYPE_11__* %80, i32 %82, i32 %84, i32 %86, i32 %88)
  store i32 %89, i32* %10, align 4
  br label %114

90:                                               ; preds = %72
  %91 = load i32, i32* %11, align 4
  store i32 %91, i32* %10, align 4
  %92 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %93 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %93, i32 0, i32 0
  %95 = load %struct.TYPE_12__*, %struct.TYPE_12__** %94, align 8
  %96 = load i32, i32* %11, align 4
  %97 = call i32 @gdImageRed(%struct.TYPE_12__* %95, i32 %96)
  %98 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %98, i32 0, i32 0
  %100 = load %struct.TYPE_12__*, %struct.TYPE_12__** %99, align 8
  %101 = load i32, i32* %11, align 4
  %102 = call i32 @gdImageGreen(%struct.TYPE_12__* %100, i32 %101)
  %103 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %104 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %103, i32 0, i32 0
  %105 = load %struct.TYPE_12__*, %struct.TYPE_12__** %104, align 8
  %106 = load i32, i32* %11, align 4
  %107 = call i32 @gdImageBlue(%struct.TYPE_12__* %105, i32 %106)
  %108 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %109 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %108, i32 0, i32 0
  %110 = load %struct.TYPE_12__*, %struct.TYPE_12__** %109, align 8
  %111 = load i32, i32* %11, align 4
  %112 = call i32 @gdImageAlpha(%struct.TYPE_12__* %110, i32 %111)
  %113 = call i32 @gdImageColorResolveAlpha(%struct.TYPE_11__* %92, i32 %97, i32 %102, i32 %107, i32 %112)
  store i32 %113, i32* %10, align 4
  br label %114

114:                                              ; preds = %90, %79
  br label %115

115:                                              ; preds = %114, %71
  %116 = load i32, i32* %10, align 4
  store i32 %116, i32* %4, align 4
  br label %117

117:                                              ; preds = %115, %16
  %118 = load i32, i32* %4, align 4
  ret i32 %118
}

declare dso_local i32 @gdImageSX(%struct.TYPE_12__*) #1

declare dso_local i32 @gdImageSY(%struct.TYPE_12__*) #1

declare dso_local i32 @gdImageGetPixel(%struct.TYPE_12__*, i32, i32) #1

declare dso_local i32 @gdTrueColorAlpha(i32, i32, i32, i32) #1

declare dso_local i32 @gdImageRed(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @gdImageGreen(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @gdImageBlue(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @gdImageAlpha(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @gdImageColorResolveAlpha(%struct.TYPE_11__*, i32, i32, i32, i32) #1

declare dso_local i32 @gdTrueColorGetRed(i32) #1

declare dso_local i32 @gdTrueColorGetGreen(i32) #1

declare dso_local i32 @gdTrueColorGetBlue(i32) #1

declare dso_local i32 @gdTrueColorGetAlpha(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
