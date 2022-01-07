; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/media-io/extr_format-conversion.c_compress_uyvx_to_i420.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/media-io/extr_format-conversion.c_compress_uyvx_to_i420.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @compress_uyvx_to_i420(i32* %0, i32 %1, i32 %2, i32 %3, i32** %4, i32* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32**, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32** %4, i32*** %11, align 8
  store i32* %5, i32** %12, align 8
  %29 = load i32**, i32*** %11, align 8
  %30 = getelementptr inbounds i32*, i32** %29, i64 0
  %31 = load i32*, i32** %30, align 8
  store i32* %31, i32** %13, align 8
  %32 = load i32**, i32*** %11, align 8
  %33 = getelementptr inbounds i32*, i32** %32, i64 1
  %34 = load i32*, i32** %33, align 8
  store i32* %34, i32** %14, align 8
  %35 = load i32**, i32*** %11, align 8
  %36 = getelementptr inbounds i32*, i32** %35, i64 2
  %37 = load i32*, i32** %36, align 8
  store i32* %37, i32** %15, align 8
  %38 = load i32, i32* %8, align 4
  %39 = load i32*, i32** %12, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @min_uint32(i32 %38, i32 %41)
  store i32 %42, i32* %16, align 4
  %43 = call i32 @_mm_set1_epi32(i32 65280)
  store i32 %43, i32* %18, align 4
  %44 = call i32 @_mm_set1_epi16(i32 255)
  store i32 %44, i32* %19, align 4
  %45 = load i32, i32* %9, align 4
  store i32 %45, i32* %17, align 4
  br label %46

46:                                               ; preds = %114, %6
  %47 = load i32, i32* %17, align 4
  %48 = load i32, i32* %10, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %117

50:                                               ; preds = %46
  %51 = load i32, i32* %17, align 4
  %52 = load i32, i32* %8, align 4
  %53 = mul nsw i32 %51, %52
  store i32 %53, i32* %20, align 4
  %54 = load i32, i32* %17, align 4
  %55 = ashr i32 %54, 1
  %56 = load i32*, i32** %12, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 1
  %58 = load i32, i32* %57, align 4
  %59 = mul nsw i32 %55, %58
  store i32 %59, i32* %21, align 4
  %60 = load i32, i32* %17, align 4
  %61 = load i32*, i32** %12, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 0
  %63 = load i32, i32* %62, align 4
  %64 = mul nsw i32 %60, %63
  store i32 %64, i32* %22, align 4
  store i32 0, i32* %23, align 4
  br label %65

65:                                               ; preds = %110, %50
  %66 = load i32, i32* %23, align 4
  %67 = load i32, i32* %16, align 4
  %68 = icmp slt i32 %66, %67
  br i1 %68, label %69, label %113

69:                                               ; preds = %65
  %70 = load i32*, i32** %7, align 8
  %71 = load i32, i32* %20, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  %74 = load i32, i32* %23, align 4
  %75 = mul nsw i32 %74, 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %73, i64 %76
  store i32* %77, i32** %24, align 8
  %78 = load i32, i32* %22, align 4
  %79 = load i32, i32* %23, align 4
  %80 = add nsw i32 %78, %79
  store i32 %80, i32* %25, align 4
  %81 = load i32, i32* %25, align 4
  %82 = load i32*, i32** %12, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 0
  %84 = load i32, i32* %83, align 4
  %85 = add nsw i32 %81, %84
  store i32 %85, i32* %26, align 4
  %86 = load i32*, i32** %24, align 8
  %87 = call i32 @_mm_load_si128(i32* %86)
  store i32 %87, i32* %27, align 4
  %88 = load i32*, i32** %24, align 8
  %89 = load i32, i32* %8, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  %92 = call i32 @_mm_load_si128(i32* %91)
  store i32 %92, i32* %28, align 4
  %93 = load i32*, i32** %13, align 8
  %94 = load i32, i32* %25, align 4
  %95 = load i32, i32* %26, align 4
  %96 = load i32, i32* %27, align 4
  %97 = load i32, i32* %28, align 4
  %98 = load i32, i32* %18, align 4
  %99 = call i32 @pack_shift(i32* %93, i32 %94, i32 %95, i32 %96, i32 %97, i32 %98, i32 1)
  %100 = load i32*, i32** %14, align 8
  %101 = load i32*, i32** %15, align 8
  %102 = load i32, i32* %21, align 4
  %103 = load i32, i32* %23, align 4
  %104 = ashr i32 %103, 1
  %105 = add nsw i32 %102, %104
  %106 = load i32, i32* %27, align 4
  %107 = load i32, i32* %28, align 4
  %108 = load i32, i32* %19, align 4
  %109 = call i32 @pack_ch_2plane(i32* %100, i32* %101, i32 %105, i32 %106, i32 %107, i32 %108)
  br label %110

110:                                              ; preds = %69
  %111 = load i32, i32* %23, align 4
  %112 = add nsw i32 %111, 4
  store i32 %112, i32* %23, align 4
  br label %65

113:                                              ; preds = %65
  br label %114

114:                                              ; preds = %113
  %115 = load i32, i32* %17, align 4
  %116 = add nsw i32 %115, 2
  store i32 %116, i32* %17, align 4
  br label %46

117:                                              ; preds = %46
  ret void
}

declare dso_local i32 @min_uint32(i32, i32) #1

declare dso_local i32 @_mm_set1_epi32(i32) #1

declare dso_local i32 @_mm_set1_epi16(i32) #1

declare dso_local i32 @_mm_load_si128(i32*) #1

declare dso_local i32 @pack_shift(i32*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @pack_ch_2plane(i32*, i32*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
