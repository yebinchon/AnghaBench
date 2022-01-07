; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/media-io/extr_format-conversion.c_convert_uyvx_to_i444.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/media-io/extr_format-conversion.c_convert_uyvx_to_i444.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @convert_uyvx_to_i444(i32* %0, i32 %1, i32 %2, i32 %3, i32** %4, i32* %5) #0 {
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
  %44 = call i32 @_mm_set1_epi32(i32 255)
  store i32 %44, i32* %19, align 4
  %45 = call i32 @_mm_set1_epi32(i32 16711680)
  store i32 %45, i32* %20, align 4
  %46 = load i32, i32* %9, align 4
  store i32 %46, i32* %17, align 4
  br label %47

47:                                               ; preds = %113, %6
  %48 = load i32, i32* %17, align 4
  %49 = load i32, i32* %10, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %116

51:                                               ; preds = %47
  %52 = load i32, i32* %17, align 4
  %53 = load i32, i32* %8, align 4
  %54 = mul nsw i32 %52, %53
  store i32 %54, i32* %21, align 4
  %55 = load i32, i32* %17, align 4
  %56 = load i32*, i32** %12, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 0
  %58 = load i32, i32* %57, align 4
  %59 = mul nsw i32 %55, %58
  store i32 %59, i32* %22, align 4
  store i32 0, i32* %23, align 4
  br label %60

60:                                               ; preds = %109, %51
  %61 = load i32, i32* %23, align 4
  %62 = load i32, i32* %16, align 4
  %63 = icmp slt i32 %61, %62
  br i1 %63, label %64, label %112

64:                                               ; preds = %60
  %65 = load i32*, i32** %7, align 8
  %66 = load i32, i32* %21, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  %69 = load i32, i32* %23, align 4
  %70 = mul nsw i32 %69, 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %68, i64 %71
  store i32* %72, i32** %24, align 8
  %73 = load i32, i32* %22, align 4
  %74 = load i32, i32* %23, align 4
  %75 = add nsw i32 %73, %74
  store i32 %75, i32* %25, align 4
  %76 = load i32, i32* %25, align 4
  %77 = load i32*, i32** %12, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 0
  %79 = load i32, i32* %78, align 4
  %80 = add nsw i32 %76, %79
  store i32 %80, i32* %26, align 4
  %81 = load i32*, i32** %24, align 8
  %82 = call i32 @_mm_load_si128(i32* %81)
  store i32 %82, i32* %27, align 4
  %83 = load i32*, i32** %24, align 8
  %84 = load i32, i32* %8, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  %87 = call i32 @_mm_load_si128(i32* %86)
  store i32 %87, i32* %28, align 4
  %88 = load i32*, i32** %13, align 8
  %89 = load i32, i32* %25, align 4
  %90 = load i32, i32* %26, align 4
  %91 = load i32, i32* %27, align 4
  %92 = load i32, i32* %28, align 4
  %93 = load i32, i32* %18, align 4
  %94 = call i32 @pack_shift(i32* %88, i32 %89, i32 %90, i32 %91, i32 %92, i32 %93, i32 1)
  %95 = load i32*, i32** %14, align 8
  %96 = load i32, i32* %25, align 4
  %97 = load i32, i32* %26, align 4
  %98 = load i32, i32* %27, align 4
  %99 = load i32, i32* %28, align 4
  %100 = load i32, i32* %19, align 4
  %101 = call i32 @pack_val(i32* %95, i32 %96, i32 %97, i32 %98, i32 %99, i32 %100)
  %102 = load i32*, i32** %15, align 8
  %103 = load i32, i32* %25, align 4
  %104 = load i32, i32* %26, align 4
  %105 = load i32, i32* %27, align 4
  %106 = load i32, i32* %28, align 4
  %107 = load i32, i32* %20, align 4
  %108 = call i32 @pack_shift(i32* %102, i32 %103, i32 %104, i32 %105, i32 %106, i32 %107, i32 2)
  br label %109

109:                                              ; preds = %64
  %110 = load i32, i32* %23, align 4
  %111 = add nsw i32 %110, 4
  store i32 %111, i32* %23, align 4
  br label %60

112:                                              ; preds = %60
  br label %113

113:                                              ; preds = %112
  %114 = load i32, i32* %17, align 4
  %115 = add nsw i32 %114, 2
  store i32 %115, i32* %17, align 4
  br label %47

116:                                              ; preds = %47
  ret void
}

declare dso_local i32 @min_uint32(i32, i32) #1

declare dso_local i32 @_mm_set1_epi32(i32) #1

declare dso_local i32 @_mm_load_si128(i32*) #1

declare dso_local i32 @pack_shift(i32*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @pack_val(i32*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
