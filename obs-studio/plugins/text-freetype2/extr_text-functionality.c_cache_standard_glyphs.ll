; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/text-freetype2/extr_text-functionality.c_cache_standard_glyphs.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/text-freetype2/extr_text-functionality.c_cache_standard_glyphs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ft2_source = type { i64, i64, i32** }

@num_cache_slots = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [95 x i32] [i32 97, i32 98, i32 99, i32 100, i32 101, i32 102, i32 103, i32 104, i32 105, i32 106, i32 107, i32 108, i32 109, i32 110, i32 111, i32 112, i32 113, i32 114, i32 115, i32 116, i32 117, i32 118, i32 119, i32 120, i32 121, i32 122, i32 65, i32 66, i32 67, i32 68, i32 69, i32 70, i32 71, i32 72, i32 73, i32 74, i32 75, i32 76, i32 77, i32 78, i32 79, i32 80, i32 81, i32 82, i32 83, i32 84, i32 85, i32 86, i32 87, i32 88, i32 89, i32 90, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 48, i32 33, i32 64, i32 35, i32 36, i32 37, i32 94, i32 38, i32 42, i32 40, i32 41, i32 45, i32 95, i32 61, i32 43, i32 44, i32 60, i32 46, i32 62, i32 47, i32 63, i32 92, i32 124, i32 91, i32 93, i32 123, i32 125, i32 96, i32 126, i32 32, i32 39, i32 34, i32 0, i32 0], align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cache_standard_glyphs(%struct.ft2_source* %0) #0 {
  %2 = alloca %struct.ft2_source*, align 8
  %3 = alloca i64, align 8
  store %struct.ft2_source* %0, %struct.ft2_source** %2, align 8
  store i64 0, i64* %3, align 8
  br label %4

4:                                                ; preds = %30, %1
  %5 = load i64, i64* %3, align 8
  %6 = load i64, i64* @num_cache_slots, align 8
  %7 = icmp ult i64 %5, %6
  br i1 %7, label %8, label %33

8:                                                ; preds = %4
  %9 = load %struct.ft2_source*, %struct.ft2_source** %2, align 8
  %10 = getelementptr inbounds %struct.ft2_source, %struct.ft2_source* %9, i32 0, i32 2
  %11 = load i32**, i32*** %10, align 8
  %12 = load i64, i64* %3, align 8
  %13 = getelementptr inbounds i32*, i32** %11, i64 %12
  %14 = load i32*, i32** %13, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %29

16:                                               ; preds = %8
  %17 = load %struct.ft2_source*, %struct.ft2_source** %2, align 8
  %18 = getelementptr inbounds %struct.ft2_source, %struct.ft2_source* %17, i32 0, i32 2
  %19 = load i32**, i32*** %18, align 8
  %20 = load i64, i64* %3, align 8
  %21 = getelementptr inbounds i32*, i32** %19, i64 %20
  %22 = load i32*, i32** %21, align 8
  %23 = call i32 @bfree(i32* %22)
  %24 = load %struct.ft2_source*, %struct.ft2_source** %2, align 8
  %25 = getelementptr inbounds %struct.ft2_source, %struct.ft2_source* %24, i32 0, i32 2
  %26 = load i32**, i32*** %25, align 8
  %27 = load i64, i64* %3, align 8
  %28 = getelementptr inbounds i32*, i32** %26, i64 %27
  store i32* null, i32** %28, align 8
  br label %29

29:                                               ; preds = %16, %8
  br label %30

30:                                               ; preds = %29
  %31 = load i64, i64* %3, align 8
  %32 = add i64 %31, 1
  store i64 %32, i64* %3, align 8
  br label %4

33:                                               ; preds = %4
  %34 = load %struct.ft2_source*, %struct.ft2_source** %2, align 8
  %35 = getelementptr inbounds %struct.ft2_source, %struct.ft2_source* %34, i32 0, i32 1
  store i64 0, i64* %35, align 8
  %36 = load %struct.ft2_source*, %struct.ft2_source** %2, align 8
  %37 = getelementptr inbounds %struct.ft2_source, %struct.ft2_source* %36, i32 0, i32 0
  store i64 0, i64* %37, align 8
  %38 = load %struct.ft2_source*, %struct.ft2_source** %2, align 8
  %39 = call i32 @cache_glyphs(%struct.ft2_source* %38, i8* bitcast ([95 x i32]* @.str to i8*))
  ret void
}

declare dso_local i32 @bfree(i32*) #1

declare dso_local i32 @cache_glyphs(%struct.ft2_source*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
