; ModuleID = '/home/carl/AnghaBench/openpilot/phonelibs/nanovg/extr_stb_truetype.h_stbtt__close_shape.c'
source_filename = "/home/carl/AnghaBench/openpilot/phonelibs/nanovg/extr_stb_truetype.h_stbtt__close_shape.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@STBTT_vcurve = common dso_local global i32 0, align 4
@STBTT_vline = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32)* @stbtt__close_shape to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stbtt__close_shape(i32* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9) #0 {
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i32* %0, i32** %11, align 8
  store i32 %1, i32* %12, align 4
  store i32 %2, i32* %13, align 4
  store i32 %3, i32* %14, align 4
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store i32 %6, i32* %17, align 4
  store i32 %7, i32* %18, align 4
  store i32 %8, i32* %19, align 4
  store i32 %9, i32* %20, align 4
  %21 = load i32, i32* %14, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %56

23:                                               ; preds = %10
  %24 = load i32, i32* %13, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %44

26:                                               ; preds = %23
  %27 = load i32*, i32** %11, align 8
  %28 = load i32, i32* %12, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %12, align 4
  %30 = sext i32 %28 to i64
  %31 = getelementptr inbounds i32, i32* %27, i64 %30
  %32 = load i32, i32* @STBTT_vcurve, align 4
  %33 = load i32, i32* %19, align 4
  %34 = load i32, i32* %17, align 4
  %35 = add nsw i32 %33, %34
  %36 = ashr i32 %35, 1
  %37 = load i32, i32* %20, align 4
  %38 = load i32, i32* %18, align 4
  %39 = add nsw i32 %37, %38
  %40 = ashr i32 %39, 1
  %41 = load i32, i32* %19, align 4
  %42 = load i32, i32* %20, align 4
  %43 = call i32 @stbtt_setvertex(i32* %31, i32 %32, i32 %36, i32 %40, i32 %41, i32 %42)
  br label %44

44:                                               ; preds = %26, %23
  %45 = load i32*, i32** %11, align 8
  %46 = load i32, i32* %12, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %12, align 4
  %48 = sext i32 %46 to i64
  %49 = getelementptr inbounds i32, i32* %45, i64 %48
  %50 = load i32, i32* @STBTT_vcurve, align 4
  %51 = load i32, i32* %15, align 4
  %52 = load i32, i32* %16, align 4
  %53 = load i32, i32* %17, align 4
  %54 = load i32, i32* %18, align 4
  %55 = call i32 @stbtt_setvertex(i32* %49, i32 %50, i32 %51, i32 %52, i32 %53, i32 %54)
  br label %82

56:                                               ; preds = %10
  %57 = load i32, i32* %13, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %71

59:                                               ; preds = %56
  %60 = load i32*, i32** %11, align 8
  %61 = load i32, i32* %12, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %12, align 4
  %63 = sext i32 %61 to i64
  %64 = getelementptr inbounds i32, i32* %60, i64 %63
  %65 = load i32, i32* @STBTT_vcurve, align 4
  %66 = load i32, i32* %15, align 4
  %67 = load i32, i32* %16, align 4
  %68 = load i32, i32* %19, align 4
  %69 = load i32, i32* %20, align 4
  %70 = call i32 @stbtt_setvertex(i32* %64, i32 %65, i32 %66, i32 %67, i32 %68, i32 %69)
  br label %81

71:                                               ; preds = %56
  %72 = load i32*, i32** %11, align 8
  %73 = load i32, i32* %12, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %12, align 4
  %75 = sext i32 %73 to i64
  %76 = getelementptr inbounds i32, i32* %72, i64 %75
  %77 = load i32, i32* @STBTT_vline, align 4
  %78 = load i32, i32* %15, align 4
  %79 = load i32, i32* %16, align 4
  %80 = call i32 @stbtt_setvertex(i32* %76, i32 %77, i32 %78, i32 %79, i32 0, i32 0)
  br label %81

81:                                               ; preds = %71, %59
  br label %82

82:                                               ; preds = %81, %44
  %83 = load i32, i32* %12, align 4
  ret i32 %83
}

declare dso_local i32 @stbtt_setvertex(i32*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
