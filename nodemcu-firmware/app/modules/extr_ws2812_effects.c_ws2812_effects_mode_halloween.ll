; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_ws2812_effects.c_ws2812_effects_mode_halloween.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_ws2812_effects.c_ws2812_effects_mode_halloween.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32, i32* }

@state = common dso_local global %struct.TYPE_4__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @ws2812_effects_mode_halloween to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ws2812_effects_mode_halloween() #0 {
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
  %17 = mul nsw i32 50, %16
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
  %32 = mul nsw i32 0, %31
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
  %42 = mul nsw i32 130, %41
  %43 = sdiv i32 %42, 255
  store i32 %43, i32* %7, align 4
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 2
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 0
  store i32* %47, i32** %10, align 8
  store i32 0, i32* %8, align 4
  br label %48

48:                                               ; preds = %101, %0
  %49 = load i32, i32* %8, align 4
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = icmp slt i32 %49, %52
  br i1 %53, label %54, label %104

54:                                               ; preds = %48
  %55 = load i32, i32* %8, align 4
  %56 = srem i32 %55, 4
  %57 = icmp slt i32 %56, 2
  br i1 %57, label %58, label %60

58:                                               ; preds = %54
  %59 = load i32, i32* %2, align 4
  br label %62

60:                                               ; preds = %54
  %61 = load i32, i32* %5, align 4
  br label %62

62:                                               ; preds = %60, %58
  %63 = phi i32 [ %59, %58 ], [ %61, %60 ]
  %64 = load i32*, i32** %10, align 8
  %65 = getelementptr inbounds i32, i32* %64, i32 1
  store i32* %65, i32** %10, align 8
  store i32 %63, i32* %64, align 4
  %66 = load i32, i32* %8, align 4
  %67 = srem i32 %66, 4
  %68 = icmp slt i32 %67, 2
  br i1 %68, label %69, label %71

69:                                               ; preds = %62
  %70 = load i32, i32* %3, align 4
  br label %73

71:                                               ; preds = %62
  %72 = load i32, i32* %6, align 4
  br label %73

73:                                               ; preds = %71, %69
  %74 = phi i32 [ %70, %69 ], [ %72, %71 ]
  %75 = load i32*, i32** %10, align 8
  %76 = getelementptr inbounds i32, i32* %75, i32 1
  store i32* %76, i32** %10, align 8
  store i32 %74, i32* %75, align 4
  %77 = load i32, i32* %8, align 4
  %78 = srem i32 %77, 4
  %79 = icmp slt i32 %78, 2
  br i1 %79, label %80, label %82

80:                                               ; preds = %73
  %81 = load i32, i32* %4, align 4
  br label %84

82:                                               ; preds = %73
  %83 = load i32, i32* %7, align 4
  br label %84

84:                                               ; preds = %82, %80
  %85 = phi i32 [ %81, %80 ], [ %83, %82 ]
  %86 = load i32*, i32** %10, align 8
  %87 = getelementptr inbounds i32, i32* %86, i32 1
  store i32* %87, i32** %10, align 8
  store i32 %85, i32* %86, align 4
  store i32 3, i32* %9, align 4
  br label %88

88:                                               ; preds = %97, %84
  %89 = load i32, i32* %9, align 4
  %90 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = icmp slt i32 %89, %92
  br i1 %93, label %94, label %100

94:                                               ; preds = %88
  %95 = load i32*, i32** %10, align 8
  %96 = getelementptr inbounds i32, i32* %95, i32 1
  store i32* %96, i32** %10, align 8
  store i32 0, i32* %95, align 4
  br label %97

97:                                               ; preds = %94
  %98 = load i32, i32* %9, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %9, align 4
  br label %88

100:                                              ; preds = %88
  br label %101

101:                                              ; preds = %100
  %102 = load i32, i32* %8, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %8, align 4
  br label %48

104:                                              ; preds = %48
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
