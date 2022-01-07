; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/media-io/extr_format-conversion.c_compress_uyvx_to_nv12.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/media-io/extr_format-conversion.c_compress_uyvx_to_nv12.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @compress_uyvx_to_nv12(i32* %0, i32 %1, i32 %2, i32 %3, i32** %4, i32* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32**, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32** %4, i32*** %11, align 8
  store i32* %5, i32** %12, align 8
  %28 = load i32**, i32*** %11, align 8
  %29 = getelementptr inbounds i32*, i32** %28, i64 0
  %30 = load i32*, i32** %29, align 8
  store i32* %30, i32** %13, align 8
  %31 = load i32**, i32*** %11, align 8
  %32 = getelementptr inbounds i32*, i32** %31, i64 1
  %33 = load i32*, i32** %32, align 8
  store i32* %33, i32** %14, align 8
  %34 = load i32, i32* %8, align 4
  %35 = load i32*, i32** %12, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @min_uint32(i32 %34, i32 %37)
  store i32 %38, i32* %15, align 4
  %39 = call i32 @_mm_set1_epi32(i32 65280)
  store i32 %39, i32* %17, align 4
  %40 = call i32 @_mm_set1_epi16(i32 255)
  store i32 %40, i32* %18, align 4
  %41 = load i32, i32* %9, align 4
  store i32 %41, i32* %16, align 4
  br label %42

42:                                               ; preds = %108, %6
  %43 = load i32, i32* %16, align 4
  %44 = load i32, i32* %10, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %111

46:                                               ; preds = %42
  %47 = load i32, i32* %16, align 4
  %48 = load i32, i32* %8, align 4
  %49 = mul nsw i32 %47, %48
  store i32 %49, i32* %19, align 4
  %50 = load i32, i32* %16, align 4
  %51 = ashr i32 %50, 1
  %52 = load i32*, i32** %12, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 1
  %54 = load i32, i32* %53, align 4
  %55 = mul nsw i32 %51, %54
  store i32 %55, i32* %20, align 4
  %56 = load i32, i32* %16, align 4
  %57 = load i32*, i32** %12, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 0
  %59 = load i32, i32* %58, align 4
  %60 = mul nsw i32 %56, %59
  store i32 %60, i32* %21, align 4
  store i32 0, i32* %22, align 4
  br label %61

61:                                               ; preds = %104, %46
  %62 = load i32, i32* %22, align 4
  %63 = load i32, i32* %15, align 4
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %65, label %107

65:                                               ; preds = %61
  %66 = load i32*, i32** %7, align 8
  %67 = load i32, i32* %19, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  %70 = load i32, i32* %22, align 4
  %71 = mul nsw i32 %70, 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %69, i64 %72
  store i32* %73, i32** %23, align 8
  %74 = load i32, i32* %21, align 4
  %75 = load i32, i32* %22, align 4
  %76 = add nsw i32 %74, %75
  store i32 %76, i32* %24, align 4
  %77 = load i32, i32* %24, align 4
  %78 = load i32*, i32** %12, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 0
  %80 = load i32, i32* %79, align 4
  %81 = add nsw i32 %77, %80
  store i32 %81, i32* %25, align 4
  %82 = load i32*, i32** %23, align 8
  %83 = call i32 @_mm_load_si128(i32* %82)
  store i32 %83, i32* %26, align 4
  %84 = load i32*, i32** %23, align 8
  %85 = load i32, i32* %8, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %84, i64 %86
  %88 = call i32 @_mm_load_si128(i32* %87)
  store i32 %88, i32* %27, align 4
  %89 = load i32*, i32** %13, align 8
  %90 = load i32, i32* %24, align 4
  %91 = load i32, i32* %25, align 4
  %92 = load i32, i32* %26, align 4
  %93 = load i32, i32* %27, align 4
  %94 = load i32, i32* %17, align 4
  %95 = call i32 @pack_shift(i32* %89, i32 %90, i32 %91, i32 %92, i32 %93, i32 %94, i32 1)
  %96 = load i32*, i32** %14, align 8
  %97 = load i32, i32* %20, align 4
  %98 = load i32, i32* %22, align 4
  %99 = add nsw i32 %97, %98
  %100 = load i32, i32* %26, align 4
  %101 = load i32, i32* %27, align 4
  %102 = load i32, i32* %18, align 4
  %103 = call i32 @pack_ch_1plane(i32* %96, i32 %99, i32 %100, i32 %101, i32 %102)
  br label %104

104:                                              ; preds = %65
  %105 = load i32, i32* %22, align 4
  %106 = add nsw i32 %105, 4
  store i32 %106, i32* %22, align 4
  br label %61

107:                                              ; preds = %61
  br label %108

108:                                              ; preds = %107
  %109 = load i32, i32* %16, align 4
  %110 = add nsw i32 %109, 2
  store i32 %110, i32* %16, align 4
  br label %42

111:                                              ; preds = %42
  ret void
}

declare dso_local i32 @min_uint32(i32, i32) #1

declare dso_local i32 @_mm_set1_epi32(i32) #1

declare dso_local i32 @_mm_set1_epi16(i32) #1

declare dso_local i32 @_mm_load_si128(i32*) #1

declare dso_local i32 @pack_shift(i32*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @pack_ch_1plane(i32*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
