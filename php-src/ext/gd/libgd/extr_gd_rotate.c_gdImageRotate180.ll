; ModuleID = '/home/carl/AnghaBench/php-src/ext/gd/libgd/extr_gd_rotate.c_gdImageRotate180.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/gd/libgd/extr_gd_rotate.c_gdImageRotate180.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32, i32, i32, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_12__* @gdImageRotate180(%struct.TYPE_12__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_12__*, align 8
  %13 = alloca i32 (%struct.TYPE_12__*, i32, i32)*, align 8
  %14 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %3, align 8
  store i32 %1, i32* %4, align 4
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 4
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  store i32 (%struct.TYPE_12__*, i32, i32)* @gdImageGetTrueColorPixel, i32 (%struct.TYPE_12__*, i32, i32)** %13, align 8
  br label %21

20:                                               ; preds = %2
  store i32 (%struct.TYPE_12__*, i32, i32)* @gdImageGetPixel, i32 (%struct.TYPE_12__*, i32, i32)** %13, align 8
  br label %21

21:                                               ; preds = %20, %19
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call %struct.TYPE_12__* @gdImageCreateTrueColor(i32 %24, i32 %27)
  store %struct.TYPE_12__* %28, %struct.TYPE_12__** %12, align 8
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %30 = icmp ne %struct.TYPE_12__* %29, null
  br i1 %30, label %31, label %141

31:                                               ; preds = %21
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  store i32 %34, i32* %14, align 4
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 2
  store i32 0, i32* %36, align 8
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 3
  store i32 %39, i32* %41, align 4
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %44 = call i32 @gdImagePaletteCopy(%struct.TYPE_12__* %42, %struct.TYPE_12__* %43)
  store i32 0, i32* %5, align 4
  br label %45

45:                                               ; preds = %134, %31
  %46 = load i32, i32* %5, align 4
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = icmp slt i32 %46, %49
  br i1 %50, label %51, label %137

51:                                               ; preds = %45
  store i32 0, i32* %6, align 4
  br label %52

52:                                               ; preds = %130, %51
  %53 = load i32, i32* %6, align 4
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = icmp slt i32 %53, %56
  br i1 %57, label %58, label %133

58:                                               ; preds = %52
  %59 = load i32 (%struct.TYPE_12__*, i32, i32)*, i32 (%struct.TYPE_12__*, i32, i32)** %13, align 8
  %60 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %61 = load i32, i32* %6, align 4
  %62 = load i32, i32* %5, align 4
  %63 = call i32 %59(%struct.TYPE_12__* %60, i32 %61, i32 %62)
  store i32 %63, i32* %7, align 4
  %64 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i32 0, i32 4
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %86, label %68

68:                                               ; preds = %58
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %70 = load i32, i32* %7, align 4
  %71 = call i32 @gdImageRed(%struct.TYPE_12__* %69, i32 %70)
  store i32 %71, i32* %8, align 4
  %72 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %73 = load i32, i32* %7, align 4
  %74 = call i32 @gdImageGreen(%struct.TYPE_12__* %72, i32 %73)
  store i32 %74, i32* %9, align 4
  %75 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %76 = load i32, i32* %7, align 4
  %77 = call i32 @gdImageBlue(%struct.TYPE_12__* %75, i32 %76)
  store i32 %77, i32* %10, align 4
  %78 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %79 = load i32, i32* %7, align 4
  %80 = call i32 @gdImageAlpha(%struct.TYPE_12__* %78, i32 %79)
  store i32 %80, i32* %11, align 4
  %81 = load i32, i32* %8, align 4
  %82 = load i32, i32* %9, align 4
  %83 = load i32, i32* %10, align 4
  %84 = load i32, i32* %11, align 4
  %85 = call i32 @gdTrueColorAlpha(i32 %81, i32 %82, i32 %83, i32 %84)
  store i32 %85, i32* %7, align 4
  br label %86

86:                                               ; preds = %68, %58
  %87 = load i32, i32* %4, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %113

89:                                               ; preds = %86
  %90 = load i32, i32* %7, align 4
  %91 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %92 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 4
  %94 = icmp eq i32 %90, %93
  br i1 %94, label %95, label %113

95:                                               ; preds = %89
  %96 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %97 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %98 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* %6, align 4
  %101 = sub nsw i32 %99, %100
  %102 = sub nsw i32 %101, 1
  %103 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %104 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* %5, align 4
  %107 = sub nsw i32 %105, %106
  %108 = sub nsw i32 %107, 1
  %109 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %110 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %109, i32 0, i32 3
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @gdImageSetPixel(%struct.TYPE_12__* %96, i32 %102, i32 %108, i32 %111)
  br label %129

113:                                              ; preds = %89, %86
  %114 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %115 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %116 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = load i32, i32* %6, align 4
  %119 = sub nsw i32 %117, %118
  %120 = sub nsw i32 %119, 1
  %121 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %122 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* %5, align 4
  %125 = sub nsw i32 %123, %124
  %126 = sub nsw i32 %125, 1
  %127 = load i32, i32* %7, align 4
  %128 = call i32 @gdImageSetPixel(%struct.TYPE_12__* %114, i32 %120, i32 %126, i32 %127)
  br label %129

129:                                              ; preds = %113, %95
  br label %130

130:                                              ; preds = %129
  %131 = load i32, i32* %6, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %6, align 4
  br label %52

133:                                              ; preds = %52
  br label %134

134:                                              ; preds = %133
  %135 = load i32, i32* %5, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %5, align 4
  br label %45

137:                                              ; preds = %45
  %138 = load i32, i32* %14, align 4
  %139 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %140 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %139, i32 0, i32 2
  store i32 %138, i32* %140, align 8
  br label %141

141:                                              ; preds = %137, %21
  %142 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  ret %struct.TYPE_12__* %142
}

declare dso_local i32 @gdImageGetTrueColorPixel(%struct.TYPE_12__*, i32, i32) #1

declare dso_local i32 @gdImageGetPixel(%struct.TYPE_12__*, i32, i32) #1

declare dso_local %struct.TYPE_12__* @gdImageCreateTrueColor(i32, i32) #1

declare dso_local i32 @gdImagePaletteCopy(%struct.TYPE_12__*, %struct.TYPE_12__*) #1

declare dso_local i32 @gdImageRed(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @gdImageGreen(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @gdImageBlue(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @gdImageAlpha(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @gdTrueColorAlpha(i32, i32, i32, i32) #1

declare dso_local i32 @gdImageSetPixel(%struct.TYPE_12__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
