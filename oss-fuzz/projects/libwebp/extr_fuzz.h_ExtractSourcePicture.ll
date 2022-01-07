; ModuleID = '/home/carl/AnghaBench/oss-fuzz/projects/libwebp/extr_fuzz.h_ExtractSourcePicture.c'
source_filename = "/home/carl/AnghaBench/oss-fuzz/projects/libwebp/extr_fuzz.h_ExtractSourcePicture.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32 }

@kImgAlphaData = common dso_local global i32* null, align 8
@kImgGridData = common dso_local global i32* null, align 8
@kImgPeakData = common dso_local global i32* null, align 8
@kImgAlphaWidth = common dso_local global i32 0, align 4
@kImgGridWidth = common dso_local global i32 0, align 4
@kImgPeakWidth = common dso_local global i32 0, align 4
@kImgAlphaHeight = common dso_local global i32 0, align 4
@kImgGridHeight = common dso_local global i32 0, align 4
@kImgPeakHeight = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i32*, i64, i32*)* @ExtractSourcePicture to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ExtractSourcePicture(%struct.TYPE_4__* %0, i32* %1, i64 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca [3 x i32*], align 16
  %11 = alloca [3 x i32], align 4
  %12 = alloca [3 x i32], align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32* %3, i32** %9, align 8
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %17 = icmp eq %struct.TYPE_4__* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %70

19:                                               ; preds = %4
  %20 = getelementptr inbounds [3 x i32*], [3 x i32*]* %10, i64 0, i64 0
  %21 = load i32*, i32** @kImgAlphaData, align 8
  store i32* %21, i32** %20, align 8
  %22 = getelementptr inbounds i32*, i32** %20, i64 1
  %23 = load i32*, i32** @kImgGridData, align 8
  store i32* %23, i32** %22, align 8
  %24 = getelementptr inbounds i32*, i32** %22, i64 1
  %25 = load i32*, i32** @kImgPeakData, align 8
  store i32* %25, i32** %24, align 8
  %26 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 0
  %27 = load i32, i32* @kImgAlphaWidth, align 4
  store i32 %27, i32* %26, align 4
  %28 = getelementptr inbounds i32, i32* %26, i64 1
  %29 = load i32, i32* @kImgGridWidth, align 4
  store i32 %29, i32* %28, align 4
  %30 = getelementptr inbounds i32, i32* %28, i64 1
  %31 = load i32, i32* @kImgPeakWidth, align 4
  store i32 %31, i32* %30, align 4
  %32 = getelementptr inbounds [3 x i32], [3 x i32]* %12, i64 0, i64 0
  %33 = load i32, i32* @kImgAlphaHeight, align 4
  store i32 %33, i32* %32, align 4
  %34 = getelementptr inbounds i32, i32* %32, i64 1
  %35 = load i32, i32* @kImgGridHeight, align 4
  store i32 %35, i32* %34, align 4
  %36 = getelementptr inbounds i32, i32* %34, i64 1
  %37 = load i32, i32* @kImgPeakHeight, align 4
  store i32 %37, i32* %36, align 4
  store i64 3, i64* %13, align 8
  %38 = load i32*, i32** %7, align 8
  %39 = load i64, i64* %8, align 8
  %40 = load i32*, i32** %9, align 8
  %41 = call i64 @Extract(i64 2, i32* %38, i64 %39, i32* %40)
  store i64 %41, i64* %14, align 8
  %42 = load i64, i64* %14, align 8
  %43 = getelementptr inbounds [3 x i32*], [3 x i32*]* %10, i64 0, i64 %42
  %44 = load i32*, i32** %43, align 8
  store i32* %44, i32** %15, align 8
  %45 = load i64, i64* %14, align 8
  %46 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 4
  %50 = load i64, i64* %14, align 8
  %51 = getelementptr inbounds [3 x i32], [3 x i32]* %12, i64 0, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 4
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = mul nsw i32 %57, 4
  %59 = sext i32 %58 to i64
  %60 = mul i64 %59, 4
  %61 = trunc i64 %60 to i32
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 2
  store i32 %61, i32* %63, align 4
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %65 = load i32*, i32** %15, align 8
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @WebPPictureImportRGBA(%struct.TYPE_4__* %64, i32* %65, i32 %68)
  store i32 %69, i32* %5, align 4
  br label %70

70:                                               ; preds = %19, %18
  %71 = load i32, i32* %5, align 4
  ret i32 %71
}

declare dso_local i64 @Extract(i64, i32*, i64, i32*) #1

declare dso_local i32 @WebPPictureImportRGBA(%struct.TYPE_4__*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
