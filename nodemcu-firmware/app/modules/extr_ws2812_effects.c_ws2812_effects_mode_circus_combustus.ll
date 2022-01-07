; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_ws2812_effects.c_ws2812_effects_mode_circus_combustus.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_ws2812_effects.c_ws2812_effects_mode_circus_combustus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32, i32* }

@state = common dso_local global %struct.TYPE_4__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @ws2812_effects_mode_circus_combustus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ws2812_effects_mode_circus_combustus() #0 {
  %1 = alloca %struct.TYPE_3__*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** @state, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 1
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  store %struct.TYPE_3__* %13, %struct.TYPE_3__** %1, align 8
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** @state, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = mul nsw i32 0, %16
  %18 = sdiv i32 %17, 255
  store i32 %18, i32* %2, align 4
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** @state, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = mul nsw i32 255, %21
  %23 = sdiv i32 %22, 255
  store i32 %23, i32* %3, align 4
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** @state, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = mul nsw i32 0, %26
  %28 = sdiv i32 %27, 255
  store i32 %28, i32* %4, align 4
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** @state, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = mul nsw i32 255, %31
  %33 = sdiv i32 %32, 255
  store i32 %33, i32* %5, align 4
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** @state, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = mul nsw i32 255, %36
  %38 = sdiv i32 %37, 255
  store i32 %38, i32* %6, align 4
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** @state, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = mul nsw i32 255, %41
  %43 = sdiv i32 %42, 255
  store i32 %43, i32* %7, align 4
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 2
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 0
  store i32* %47, i32** %10, align 8
  store i32 0, i32* %8, align 4
  br label %48

48:                                               ; preds = %104, %0
  %49 = load i32, i32* %8, align 4
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = icmp slt i32 %49, %52
  br i1 %53, label %54, label %107

54:                                               ; preds = %48
  %55 = load i32, i32* %8, align 4
  %56 = srem i32 %55, 6
  %57 = icmp slt i32 %56, 2
  br i1 %57, label %58, label %68

58:                                               ; preds = %54
  %59 = load i32, i32* %2, align 4
  %60 = load i32*, i32** %10, align 8
  %61 = getelementptr inbounds i32, i32* %60, i32 1
  store i32* %61, i32** %10, align 8
  store i32 %59, i32* %60, align 4
  %62 = load i32, i32* %3, align 4
  %63 = load i32*, i32** %10, align 8
  %64 = getelementptr inbounds i32, i32* %63, i32 1
  store i32* %64, i32** %10, align 8
  store i32 %62, i32* %63, align 4
  %65 = load i32, i32* %4, align 4
  %66 = load i32*, i32** %10, align 8
  %67 = getelementptr inbounds i32, i32* %66, i32 1
  store i32* %67, i32** %10, align 8
  store i32 %65, i32* %66, align 4
  br label %90

68:                                               ; preds = %54
  %69 = load i32, i32* %8, align 4
  %70 = srem i32 %69, 6
  %71 = icmp slt i32 %70, 4
  br i1 %71, label %72, label %82

72:                                               ; preds = %68
  %73 = load i32, i32* %5, align 4
  %74 = load i32*, i32** %10, align 8
  %75 = getelementptr inbounds i32, i32* %74, i32 1
  store i32* %75, i32** %10, align 8
  store i32 %73, i32* %74, align 4
  %76 = load i32, i32* %6, align 4
  %77 = load i32*, i32** %10, align 8
  %78 = getelementptr inbounds i32, i32* %77, i32 1
  store i32* %78, i32** %10, align 8
  store i32 %76, i32* %77, align 4
  %79 = load i32, i32* %7, align 4
  %80 = load i32*, i32** %10, align 8
  %81 = getelementptr inbounds i32, i32* %80, i32 1
  store i32* %81, i32** %10, align 8
  store i32 %79, i32* %80, align 4
  br label %89

82:                                               ; preds = %68
  %83 = load i32*, i32** %10, align 8
  %84 = getelementptr inbounds i32, i32* %83, i32 1
  store i32* %84, i32** %10, align 8
  store i32 0, i32* %83, align 4
  %85 = load i32*, i32** %10, align 8
  %86 = getelementptr inbounds i32, i32* %85, i32 1
  store i32* %86, i32** %10, align 8
  store i32 0, i32* %85, align 4
  %87 = load i32*, i32** %10, align 8
  %88 = getelementptr inbounds i32, i32* %87, i32 1
  store i32* %88, i32** %10, align 8
  store i32 0, i32* %87, align 4
  br label %89

89:                                               ; preds = %82, %72
  br label %90

90:                                               ; preds = %89, %58
  store i32 3, i32* %9, align 4
  br label %91

91:                                               ; preds = %100, %90
  %92 = load i32, i32* %9, align 4
  %93 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = icmp slt i32 %92, %95
  br i1 %96, label %97, label %103

97:                                               ; preds = %91
  %98 = load i32*, i32** %10, align 8
  %99 = getelementptr inbounds i32, i32* %98, i32 1
  store i32* %99, i32** %10, align 8
  store i32 0, i32* %98, align 4
  br label %100

100:                                              ; preds = %97
  %101 = load i32, i32* %9, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %9, align 4
  br label %91

103:                                              ; preds = %91
  br label %104

104:                                              ; preds = %103
  %105 = load i32, i32* %8, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %8, align 4
  br label %48

107:                                              ; preds = %48
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
