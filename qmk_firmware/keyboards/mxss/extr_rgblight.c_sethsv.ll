; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/mxss/extr_rgblight.c_sethsv.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/mxss/extr_rgblight.c_sethsv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@led = common dso_local global i32* null, align 8
@RGBLIGHT_FLED1 = common dso_local global i64 0, align 8
@fled_hs = common dso_local global %struct.TYPE_2__* null, align 8
@RGBLIGHT_FLED2 = common dso_local global i64 0, align 8
@RGBLIGHT_LIMIT_VAL = common dso_local global i32 0, align 4
@CIE1931_CURVE = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sethsv(i32 %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %14 = load i32*, i32** %8, align 8
  %15 = load i32*, i32** @led, align 8
  %16 = load i64, i64* @RGBLIGHT_FLED1, align 8
  %17 = getelementptr inbounds i32, i32* %15, i64 %16
  %18 = icmp eq i32* %14, %17
  br i1 %18, label %19, label %28

19:                                               ; preds = %4
  %20 = load i32, i32* %5, align 4
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** @fled_hs, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i64 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  store i32 %20, i32* %23, align 4
  %24 = load i32, i32* %6, align 4
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** @fled_hs, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i64 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  store i32 %24, i32* %27, align 4
  br label %44

28:                                               ; preds = %4
  %29 = load i32*, i32** %8, align 8
  %30 = load i32*, i32** @led, align 8
  %31 = load i64, i64* @RGBLIGHT_FLED2, align 8
  %32 = getelementptr inbounds i32, i32* %30, i64 %31
  %33 = icmp eq i32* %29, %32
  br i1 %33, label %34, label %43

34:                                               ; preds = %28
  %35 = load i32, i32* %5, align 4
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** @fled_hs, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i64 1
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  store i32 %35, i32* %38, align 4
  %39 = load i32, i32* %6, align 4
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** @fled_hs, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i64 1
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  store i32 %39, i32* %42, align 4
  br label %43

43:                                               ; preds = %34, %28
  br label %44

44:                                               ; preds = %43, %19
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* @RGBLIGHT_LIMIT_VAL, align 4
  %47 = icmp sgt i32 %45, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %44
  %49 = load i32, i32* @RGBLIGHT_LIMIT_VAL, align 4
  store i32 %49, i32* %7, align 4
  br label %50

50:                                               ; preds = %48, %44
  %51 = load i32, i32* %6, align 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %50
  %54 = load i32, i32* %7, align 4
  store i32 %54, i32* %9, align 4
  %55 = load i32, i32* %7, align 4
  store i32 %55, i32* %10, align 4
  %56 = load i32, i32* %7, align 4
  store i32 %56, i32* %11, align 4
  br label %109

57:                                               ; preds = %50
  %58 = load i32, i32* %6, align 4
  %59 = sub nsw i32 255, %58
  %60 = load i32, i32* %7, align 4
  %61 = mul nsw i32 %59, %60
  %62 = ashr i32 %61, 8
  store i32 %62, i32* %12, align 4
  %63 = load i32, i32* %7, align 4
  %64 = load i32, i32* %12, align 4
  %65 = sub nsw i32 %63, %64
  %66 = load i32, i32* %5, align 4
  %67 = srem i32 %66, 60
  %68 = mul nsw i32 %65, %67
  %69 = sdiv i32 %68, 60
  store i32 %69, i32* %13, align 4
  %70 = load i32, i32* %5, align 4
  %71 = sdiv i32 %70, 60
  switch i32 %71, label %108 [
    i32 0, label %72
    i32 1, label %78
    i32 2, label %84
    i32 3, label %90
    i32 4, label %96
    i32 5, label %102
  ]

72:                                               ; preds = %57
  %73 = load i32, i32* %7, align 4
  store i32 %73, i32* %9, align 4
  %74 = load i32, i32* %12, align 4
  %75 = load i32, i32* %13, align 4
  %76 = add nsw i32 %74, %75
  store i32 %76, i32* %10, align 4
  %77 = load i32, i32* %12, align 4
  store i32 %77, i32* %11, align 4
  br label %108

78:                                               ; preds = %57
  %79 = load i32, i32* %7, align 4
  %80 = load i32, i32* %13, align 4
  %81 = sub nsw i32 %79, %80
  store i32 %81, i32* %9, align 4
  %82 = load i32, i32* %7, align 4
  store i32 %82, i32* %10, align 4
  %83 = load i32, i32* %12, align 4
  store i32 %83, i32* %11, align 4
  br label %108

84:                                               ; preds = %57
  %85 = load i32, i32* %12, align 4
  store i32 %85, i32* %9, align 4
  %86 = load i32, i32* %7, align 4
  store i32 %86, i32* %10, align 4
  %87 = load i32, i32* %12, align 4
  %88 = load i32, i32* %13, align 4
  %89 = add nsw i32 %87, %88
  store i32 %89, i32* %11, align 4
  br label %108

90:                                               ; preds = %57
  %91 = load i32, i32* %12, align 4
  store i32 %91, i32* %9, align 4
  %92 = load i32, i32* %7, align 4
  %93 = load i32, i32* %13, align 4
  %94 = sub nsw i32 %92, %93
  store i32 %94, i32* %10, align 4
  %95 = load i32, i32* %7, align 4
  store i32 %95, i32* %11, align 4
  br label %108

96:                                               ; preds = %57
  %97 = load i32, i32* %12, align 4
  %98 = load i32, i32* %13, align 4
  %99 = add nsw i32 %97, %98
  store i32 %99, i32* %9, align 4
  %100 = load i32, i32* %12, align 4
  store i32 %100, i32* %10, align 4
  %101 = load i32, i32* %7, align 4
  store i32 %101, i32* %11, align 4
  br label %108

102:                                              ; preds = %57
  %103 = load i32, i32* %7, align 4
  store i32 %103, i32* %9, align 4
  %104 = load i32, i32* %12, align 4
  store i32 %104, i32* %10, align 4
  %105 = load i32, i32* %7, align 4
  %106 = load i32, i32* %13, align 4
  %107 = sub nsw i32 %105, %106
  store i32 %107, i32* %11, align 4
  br label %108

108:                                              ; preds = %57, %102, %96, %90, %84, %78, %72
  br label %109

109:                                              ; preds = %108, %53
  %110 = load i32*, i32** @CIE1931_CURVE, align 8
  %111 = load i32, i32* %9, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %110, i64 %112
  %114 = call i32 @pgm_read_byte(i32* %113)
  store i32 %114, i32* %9, align 4
  %115 = load i32*, i32** @CIE1931_CURVE, align 8
  %116 = load i32, i32* %10, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i32, i32* %115, i64 %117
  %119 = call i32 @pgm_read_byte(i32* %118)
  store i32 %119, i32* %10, align 4
  %120 = load i32*, i32** @CIE1931_CURVE, align 8
  %121 = load i32, i32* %11, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i32, i32* %120, i64 %122
  %124 = call i32 @pgm_read_byte(i32* %123)
  store i32 %124, i32* %11, align 4
  %125 = load i32, i32* %9, align 4
  %126 = load i32, i32* %10, align 4
  %127 = load i32, i32* %11, align 4
  %128 = load i32*, i32** %8, align 8
  %129 = call i32 @setrgb(i32 %125, i32 %126, i32 %127, i32* %128)
  ret void
}

declare dso_local i32 @pgm_read_byte(i32*) #1

declare dso_local i32 @setrgb(i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
