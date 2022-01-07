; ModuleID = '/home/carl/AnghaBench/mpv/video/extr_sws_utils.c_mp_img_swap_to_native.c'
source_filename = "/home/carl/AnghaBench/mpv/video/extr_sws_utils.c_mp_img_swap_to_native.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_image = type { i32, i32, i32*, i64*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32* }

@AV_PIX_FMT_NONE = common dso_local global i32 0, align 4
@endian_swaps = common dso_local global i32** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mp_image* @mp_img_swap_to_native(%struct.mp_image* %0) #0 {
  %2 = alloca %struct.mp_image*, align 8
  %3 = alloca %struct.mp_image*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.mp_image* %0, %struct.mp_image** %3, align 8
  %10 = load i32, i32* @AV_PIX_FMT_NONE, align 4
  store i32 %10, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %11

11:                                               ; preds = %43, %1
  %12 = load i32**, i32*** @endian_swaps, align 8
  %13 = load i32, i32* %5, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i32*, i32** %12, i64 %14
  %16 = load i32*, i32** %15, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @AV_PIX_FMT_NONE, align 4
  %20 = icmp ne i32 %18, %19
  br i1 %20, label %21, label %46

21:                                               ; preds = %11
  %22 = load i32**, i32*** @endian_swaps, align 8
  %23 = load i32, i32* %5, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32*, i32** %22, i64 %24
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.mp_image*, %struct.mp_image** %3, align 8
  %30 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %29, i32 0, i32 4
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp eq i32 %28, %32
  br i1 %33, label %34, label %42

34:                                               ; preds = %21
  %35 = load i32**, i32*** @endian_swaps, align 8
  %36 = load i32, i32* %5, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32*, i32** %35, i64 %37
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 1
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %4, align 4
  br label %42

42:                                               ; preds = %34, %21
  br label %43

43:                                               ; preds = %42
  %44 = load i32, i32* %5, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %5, align 4
  br label %11

46:                                               ; preds = %11
  %47 = load i32, i32* %4, align 4
  %48 = load i32, i32* @AV_PIX_FMT_NONE, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %54, label %50

50:                                               ; preds = %46
  %51 = load %struct.mp_image*, %struct.mp_image** %3, align 8
  %52 = call i32 @mp_image_make_writeable(%struct.mp_image* %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %56, label %54

54:                                               ; preds = %50, %46
  %55 = load %struct.mp_image*, %struct.mp_image** %3, align 8
  store %struct.mp_image* %55, %struct.mp_image** %2, align 8
  br label %118

56:                                               ; preds = %50
  %57 = load %struct.mp_image*, %struct.mp_image** %3, align 8
  %58 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %57, i32 0, i32 4
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 1
  %60 = load i32*, i32** %59, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 0
  %62 = load i32, i32* %61, align 4
  %63 = sdiv i32 %62, 2
  %64 = load %struct.mp_image*, %struct.mp_image** %3, align 8
  %65 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = mul nsw i32 %63, %66
  store i32 %67, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %68

68:                                               ; preds = %109, %56
  %69 = load i32, i32* %7, align 4
  %70 = load %struct.mp_image*, %struct.mp_image** %3, align 8
  %71 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = icmp slt i32 %69, %72
  br i1 %73, label %74, label %112

74:                                               ; preds = %68
  %75 = load %struct.mp_image*, %struct.mp_image** %3, align 8
  %76 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %75, i32 0, i32 3
  %77 = load i64*, i64** %76, align 8
  %78 = getelementptr inbounds i64, i64* %77, i64 0
  %79 = load i64, i64* %78, align 8
  %80 = load i32, i32* %7, align 4
  %81 = load %struct.mp_image*, %struct.mp_image** %3, align 8
  %82 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %81, i32 0, i32 2
  %83 = load i32*, i32** %82, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 0
  %85 = load i32, i32* %84, align 4
  %86 = mul nsw i32 %80, %85
  %87 = sext i32 %86 to i64
  %88 = add nsw i64 %79, %87
  %89 = inttoptr i64 %88 to i32*
  store i32* %89, i32** %8, align 8
  store i32 0, i32* %9, align 4
  br label %90

90:                                               ; preds = %105, %74
  %91 = load i32, i32* %9, align 4
  %92 = load i32, i32* %6, align 4
  %93 = icmp slt i32 %91, %92
  br i1 %93, label %94, label %108

94:                                               ; preds = %90
  %95 = load i32*, i32** %8, align 8
  %96 = load i32, i32* %9, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %95, i64 %97
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @av_be2ne16(i32 %99)
  %101 = load i32*, i32** %8, align 8
  %102 = load i32, i32* %9, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %101, i64 %103
  store i32 %100, i32* %104, align 4
  br label %105

105:                                              ; preds = %94
  %106 = load i32, i32* %9, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %9, align 4
  br label %90

108:                                              ; preds = %90
  br label %109

109:                                              ; preds = %108
  %110 = load i32, i32* %7, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %7, align 4
  br label %68

112:                                              ; preds = %68
  %113 = load %struct.mp_image*, %struct.mp_image** %3, align 8
  %114 = load i32, i32* %4, align 4
  %115 = call i32 @pixfmt2imgfmt(i32 %114)
  %116 = call i32 @mp_image_setfmt(%struct.mp_image* %113, i32 %115)
  %117 = load %struct.mp_image*, %struct.mp_image** %3, align 8
  store %struct.mp_image* %117, %struct.mp_image** %2, align 8
  br label %118

118:                                              ; preds = %112, %54
  %119 = load %struct.mp_image*, %struct.mp_image** %2, align 8
  ret %struct.mp_image* %119
}

declare dso_local i32 @mp_image_make_writeable(%struct.mp_image*) #1

declare dso_local i32 @av_be2ne16(i32) #1

declare dso_local i32 @mp_image_setfmt(%struct.mp_image*, i32) #1

declare dso_local i32 @pixfmt2imgfmt(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
