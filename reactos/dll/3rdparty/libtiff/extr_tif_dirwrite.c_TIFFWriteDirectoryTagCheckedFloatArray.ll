; ModuleID = '/home/carl/AnghaBench/reactos/dll/3rdparty/libtiff/extr_tif_dirwrite.c_TIFFWriteDirectoryTagCheckedFloatArray.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/3rdparty/libtiff/extr_tif_dirwrite.c_TIFFWriteDirectoryTagCheckedFloatArray.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@TIFF_SWAB = common dso_local global i32 0, align 4
@TIFF_FLOAT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i32*, i32*, i32, i32, float*)* @TIFFWriteDirectoryTagCheckedFloatArray to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @TIFFWriteDirectoryTagCheckedFloatArray(%struct.TYPE_5__* %0, i32* %1, i32* %2, i32 %3, i32 %4, float* %5) #0 {
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca float*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store float* %5, float** %12, align 8
  %13 = load i32, i32* %11, align 4
  %14 = icmp slt i32 %13, 1073741824
  %15 = zext i1 %14 to i32
  %16 = call i32 @assert(i32 %15)
  %17 = call i32 @assert(i32 1)
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %19 = load i32, i32* %11, align 4
  %20 = call i32 @TIFFCvtNativeToIEEEFloat(%struct.TYPE_5__* %18, i32 %19, float** %12)
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @TIFF_SWAB, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %6
  %28 = load float*, float** %12, align 8
  %29 = load i32, i32* %11, align 4
  %30 = call i32 @TIFFSwabArrayOfFloat(float* %28, i32 %29)
  br label %31

31:                                               ; preds = %27, %6
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %33 = load i32*, i32** %8, align 8
  %34 = load i32*, i32** %9, align 8
  %35 = load i32, i32* %10, align 4
  %36 = load i32, i32* @TIFF_FLOAT, align 4
  %37 = load i32, i32* %11, align 4
  %38 = load i32, i32* %11, align 4
  %39 = mul nsw i32 %38, 4
  %40 = load float*, float** %12, align 8
  %41 = call i32 @TIFFWriteDirectoryTagData(%struct.TYPE_5__* %32, i32* %33, i32* %34, i32 %35, i32 %36, i32 %37, i32 %39, float* %40)
  ret i32 %41
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @TIFFCvtNativeToIEEEFloat(%struct.TYPE_5__*, i32, float**) #1

declare dso_local i32 @TIFFSwabArrayOfFloat(float*, i32) #1

declare dso_local i32 @TIFFWriteDirectoryTagData(%struct.TYPE_5__*, i32*, i32*, i32, i32, i32, i32, float*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
