; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_ws2812_effects.c_ws2812_effects_fill_buffer.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_ws2812_effects.c_ws2812_effects_fill_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32*, i32 }

@state = common dso_local global %struct.TYPE_4__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ws2812_effects_fill_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ws2812_effects_fill_buffer(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store i32 %0, i32* %2, align 4
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** @state, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 1
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  store %struct.TYPE_3__* %12, %struct.TYPE_3__** %3, align 8
  %13 = load i32, i32* %2, align 4
  %14 = and i32 %13, 16711680
  %15 = ashr i32 %14, 16
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %2, align 4
  %17 = and i32 %16, 65280
  %18 = ashr i32 %17, 8
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %2, align 4
  %20 = and i32 %19, 255
  store i32 %20, i32* %6, align 4
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp eq i32 %23, 4
  br i1 %24, label %25, label %29

25:                                               ; preds = %1
  %26 = load i32, i32* %2, align 4
  %27 = and i32 %26, -16777216
  %28 = lshr i32 %27, 24
  br label %30

29:                                               ; preds = %1
  br label %30

30:                                               ; preds = %29, %25
  %31 = phi i32 [ %28, %25 ], [ 0, %29 ]
  store i32 %31, i32* %7, align 4
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 0
  store i32* %35, i32** %9, align 8
  store i32 0, i32* %8, align 4
  br label %36

36:                                               ; preds = %81, %30
  %37 = load i32, i32* %8, align 4
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = icmp slt i32 %37, %40
  br i1 %41, label %42, label %84

42:                                               ; preds = %36
  %43 = load i32, i32* %4, align 4
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** @state, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = mul nsw i32 %43, %46
  %48 = sdiv i32 %47, 255
  %49 = load i32*, i32** %9, align 8
  %50 = getelementptr inbounds i32, i32* %49, i32 1
  store i32* %50, i32** %9, align 8
  store i32 %48, i32* %49, align 4
  %51 = load i32, i32* %5, align 4
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** @state, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = mul nsw i32 %51, %54
  %56 = sdiv i32 %55, 255
  %57 = load i32*, i32** %9, align 8
  %58 = getelementptr inbounds i32, i32* %57, i32 1
  store i32* %58, i32** %9, align 8
  store i32 %56, i32* %57, align 4
  %59 = load i32, i32* %6, align 4
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** @state, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = mul nsw i32 %59, %62
  %64 = sdiv i32 %63, 255
  %65 = load i32*, i32** %9, align 8
  %66 = getelementptr inbounds i32, i32* %65, i32 1
  store i32* %66, i32** %9, align 8
  store i32 %64, i32* %65, align 4
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = icmp eq i32 %69, 4
  br i1 %70, label %71, label %80

71:                                               ; preds = %42
  %72 = load i32, i32* %7, align 4
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** @state, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = mul nsw i32 %72, %75
  %77 = sdiv i32 %76, 255
  %78 = load i32*, i32** %9, align 8
  %79 = getelementptr inbounds i32, i32* %78, i32 1
  store i32* %79, i32** %9, align 8
  store i32 %77, i32* %78, align 4
  br label %80

80:                                               ; preds = %71, %42
  br label %81

81:                                               ; preds = %80
  %82 = load i32, i32* %8, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %8, align 4
  br label %36

84:                                               ; preds = %36
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
