; ModuleID = '/home/carl/AnghaBench/mpv/video/extr_mp_image.c_mp_image_crop.c'
source_filename = "/home/carl/AnghaBench/mpv/video/extr_mp_image.c_mp_image_crop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_image = type { i32, i32, i32, i32*, i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32*, i32*, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mp_image_crop(%struct.mp_image* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.mp_image*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.mp_image* %0, %struct.mp_image** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %12 = load i32, i32* %7, align 4
  %13 = icmp sge i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %5
  %15 = load i32, i32* %8, align 4
  %16 = icmp sge i32 %15, 0
  br label %17

17:                                               ; preds = %14, %5
  %18 = phi i1 [ false, %5 ], [ %16, %14 ]
  %19 = zext i1 %18 to i32
  %20 = call i32 @assert(i32 %19)
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* %9, align 4
  %23 = icmp sle i32 %21, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %17
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* %10, align 4
  %27 = icmp sle i32 %25, %26
  br label %28

28:                                               ; preds = %24, %17
  %29 = phi i1 [ false, %17 ], [ %27, %24 ]
  %30 = zext i1 %29 to i32
  %31 = call i32 @assert(i32 %30)
  %32 = load i32, i32* %9, align 4
  %33 = load %struct.mp_image*, %struct.mp_image** %6, align 8
  %34 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp sle i32 %32, %35
  br i1 %36, label %37, label %43

37:                                               ; preds = %28
  %38 = load i32, i32* %10, align 4
  %39 = load %struct.mp_image*, %struct.mp_image** %6, align 8
  %40 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = icmp sle i32 %38, %41
  br label %43

43:                                               ; preds = %37, %28
  %44 = phi i1 [ false, %28 ], [ %42, %37 ]
  %45 = zext i1 %44 to i32
  %46 = call i32 @assert(i32 %45)
  %47 = load i32, i32* %7, align 4
  %48 = load %struct.mp_image*, %struct.mp_image** %6, align 8
  %49 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %48, i32 0, i32 5
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = sub nsw i32 %51, 1
  %53 = and i32 %47, %52
  %54 = icmp ne i32 %53, 0
  %55 = xor i1 %54, true
  %56 = zext i1 %55 to i32
  %57 = call i32 @assert(i32 %56)
  %58 = load i32, i32* %8, align 4
  %59 = load %struct.mp_image*, %struct.mp_image** %6, align 8
  %60 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %59, i32 0, i32 5
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = sub nsw i32 %62, 1
  %64 = and i32 %58, %63
  %65 = icmp ne i32 %64, 0
  %66 = xor i1 %65, true
  %67 = zext i1 %66 to i32
  %68 = call i32 @assert(i32 %67)
  store i32 0, i32* %11, align 4
  br label %69

69:                                               ; preds = %123, %43
  %70 = load i32, i32* %11, align 4
  %71 = load %struct.mp_image*, %struct.mp_image** %6, align 8
  %72 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = icmp slt i32 %70, %73
  br i1 %74, label %75, label %126

75:                                               ; preds = %69
  %76 = load i32, i32* %8, align 4
  %77 = load %struct.mp_image*, %struct.mp_image** %6, align 8
  %78 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %77, i32 0, i32 5
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 2
  %80 = load i32*, i32** %79, align 8
  %81 = load i32, i32* %11, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %80, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = ashr i32 %76, %84
  %86 = load %struct.mp_image*, %struct.mp_image** %6, align 8
  %87 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %86, i32 0, i32 4
  %88 = load i32*, i32** %87, align 8
  %89 = load i32, i32* %11, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = mul nsw i32 %85, %92
  %94 = load i32, i32* %7, align 4
  %95 = load %struct.mp_image*, %struct.mp_image** %6, align 8
  %96 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %95, i32 0, i32 5
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 3
  %98 = load i32*, i32** %97, align 8
  %99 = load i32, i32* %11, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %98, i64 %100
  %102 = load i32, i32* %101, align 4
  %103 = ashr i32 %94, %102
  %104 = load %struct.mp_image*, %struct.mp_image** %6, align 8
  %105 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %104, i32 0, i32 5
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 4
  %107 = load i32*, i32** %106, align 8
  %108 = load i32, i32* %11, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %107, i64 %109
  %111 = load i32, i32* %110, align 4
  %112 = mul nsw i32 %103, %111
  %113 = sdiv i32 %112, 8
  %114 = add nsw i32 %93, %113
  %115 = load %struct.mp_image*, %struct.mp_image** %6, align 8
  %116 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %115, i32 0, i32 3
  %117 = load i32*, i32** %116, align 8
  %118 = load i32, i32* %11, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32, i32* %117, i64 %119
  %121 = load i32, i32* %120, align 4
  %122 = add nsw i32 %121, %114
  store i32 %122, i32* %120, align 4
  br label %123

123:                                              ; preds = %75
  %124 = load i32, i32* %11, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %11, align 4
  br label %69

126:                                              ; preds = %69
  %127 = load %struct.mp_image*, %struct.mp_image** %6, align 8
  %128 = load i32, i32* %9, align 4
  %129 = load i32, i32* %7, align 4
  %130 = sub nsw i32 %128, %129
  %131 = load i32, i32* %10, align 4
  %132 = load i32, i32* %8, align 4
  %133 = sub nsw i32 %131, %132
  %134 = call i32 @mp_image_set_size(%struct.mp_image* %127, i32 %130, i32 %133)
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @mp_image_set_size(%struct.mp_image*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
