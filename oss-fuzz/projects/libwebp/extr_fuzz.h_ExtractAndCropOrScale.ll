; ModuleID = '/home/carl/AnghaBench/oss-fuzz/projects/libwebp/extr_fuzz.h_ExtractAndCropOrScale.c'
source_filename = "/home/carl/AnghaBench/oss-fuzz/projects/libwebp/extr_fuzz.h_ExtractAndCropOrScale.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i32*, i64, i32*)* @ExtractAndCropOrScale to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ExtractAndCropOrScale(%struct.TYPE_5__* %0, i32* %1, i64 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32* %3, i32** %9, align 8
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %23 = icmp eq %struct.TYPE_5__* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %112

25:                                               ; preds = %4
  %26 = load i32*, i32** %7, align 8
  %27 = load i64, i64* %8, align 8
  %28 = load i32*, i32** %9, align 8
  %29 = call i32 @Extract(i32 1, i32* %26, i64 %27, i32* %28)
  store i32 %29, i32* %10, align 4
  %30 = load i32*, i32** %7, align 8
  %31 = load i64, i64* %8, align 8
  %32 = load i32*, i32** %9, align 8
  %33 = call i32 @Extract(i32 1, i32* %30, i64 %31, i32* %32)
  store i32 %33, i32* %11, align 4
  %34 = load i32*, i32** %7, align 8
  %35 = load i64, i64* %8, align 8
  %36 = load i32*, i32** %9, align 8
  %37 = call i32 @Extract(i32 7, i32* %34, i64 %35, i32* %36)
  %38 = add nsw i32 1, %37
  store i32 %38, i32* %12, align 4
  %39 = load i32*, i32** %7, align 8
  %40 = load i64, i64* %8, align 8
  %41 = load i32*, i32** %9, align 8
  %42 = call i32 @Extract(i32 7, i32* %39, i64 %40, i32* %41)
  %43 = add nsw i32 1, %42
  store i32 %43, i32* %13, align 4
  %44 = load i32, i32* %10, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %111

46:                                               ; preds = %25
  %47 = load i32, i32* %11, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %92

49:                                               ; preds = %46
  %50 = load i32*, i32** %7, align 8
  %51 = load i64, i64* %8, align 8
  %52 = load i32*, i32** %9, align 8
  %53 = call i32 @Extract(i32 7, i32* %50, i64 %51, i32* %52)
  %54 = add nsw i32 1, %53
  store i32 %54, i32* %14, align 4
  %55 = load i32*, i32** %7, align 8
  %56 = load i64, i64* %8, align 8
  %57 = load i32*, i32** %9, align 8
  %58 = call i32 @Extract(i32 7, i32* %55, i64 %56, i32* %57)
  %59 = add nsw i32 1, %58
  store i32 %59, i32* %15, align 4
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %12, align 4
  %64 = sdiv i32 %62, %63
  %65 = call i32 @max(i32 1, i32 %64)
  store i32 %65, i32* %16, align 4
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* %13, align 4
  %70 = sdiv i32 %68, %69
  %71 = call i32 @max(i32 1, i32 %70)
  store i32 %71, i32* %17, align 4
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* %16, align 4
  %76 = sub nsw i32 %74, %75
  %77 = load i32, i32* %14, align 4
  %78 = sdiv i32 %76, %77
  store i32 %78, i32* %18, align 4
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* %17, align 4
  %83 = sub nsw i32 %81, %82
  %84 = load i32, i32* %15, align 4
  %85 = sdiv i32 %83, %84
  store i32 %85, i32* %19, align 4
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %87 = load i32, i32* %18, align 4
  %88 = load i32, i32* %19, align 4
  %89 = load i32, i32* %16, align 4
  %90 = load i32, i32* %17, align 4
  %91 = call i32 @WebPPictureCrop(%struct.TYPE_5__* %86, i32 %87, i32 %88, i32 %89, i32 %90)
  store i32 %91, i32* %5, align 4
  br label %112

92:                                               ; preds = %46
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* %12, align 4
  %97 = mul nsw i32 %95, %96
  %98 = sdiv i32 %97, 8
  %99 = add nsw i32 1, %98
  store i32 %99, i32* %20, align 4
  %100 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* %13, align 4
  %104 = mul nsw i32 %102, %103
  %105 = sdiv i32 %104, 8
  %106 = add nsw i32 1, %105
  store i32 %106, i32* %21, align 4
  %107 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %108 = load i32, i32* %20, align 4
  %109 = load i32, i32* %21, align 4
  %110 = call i32 @WebPPictureRescale(%struct.TYPE_5__* %107, i32 %108, i32 %109)
  store i32 %110, i32* %5, align 4
  br label %112

111:                                              ; preds = %25
  store i32 1, i32* %5, align 4
  br label %112

112:                                              ; preds = %111, %92, %49, %24
  %113 = load i32, i32* %5, align 4
  ret i32 %113
}

declare dso_local i32 @Extract(i32, i32*, i64, i32*) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @WebPPictureCrop(%struct.TYPE_5__*, i32, i32, i32, i32) #1

declare dso_local i32 @WebPPictureRescale(%struct.TYPE_5__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
