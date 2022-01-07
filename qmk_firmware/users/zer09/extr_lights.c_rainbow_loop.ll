; ModuleID = '/home/carl/AnghaBench/qmk_firmware/users/zer09/extr_lights.c_rainbow_loop.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/users/zer09/extr_lights.c_rainbow_loop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32, i32 }

@rainbow_loop.last_timer = internal global i32 0, align 4
@rainbow_loop.i = internal global i32 0, align 4
@rainbow_loop.r = internal global i64 0, align 8
@rainbow_loop.g = internal global i64 0, align 8
@rainbow_loop.b = internal global i64 0, align 8
@rainbow_loop.pos = internal global i64 0, align 8
@_LIGHTS = common dso_local global i64* null, align 8
@RBW = common dso_local global i64 0, align 8
@rbw_led_keys = common dso_local global %struct.TYPE_2__* null, align 8
@active_key_pos = common dso_local global i32* null, align 8
@led_dim = common dso_local global i32 0, align 4
@_LC = common dso_local global i64** null, align 8
@DEFAULT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rainbow_loop(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %6 = load i32, i32* @rainbow_loop.last_timer, align 4
  %7 = call i32 @timer_elapsed(i32 %6)
  %8 = icmp slt i32 %7, 8
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %121

10:                                               ; preds = %1
  %11 = load i32, i32* @rainbow_loop.i, align 4
  %12 = icmp sge i32 %11, 360
  br i1 %12, label %13, label %14

13:                                               ; preds = %10
  store i32 0, i32* @rainbow_loop.i, align 4
  br label %14

14:                                               ; preds = %13, %10
  %15 = call i32 (...) @timer_read()
  store i32 %15, i32* @rainbow_loop.last_timer, align 4
  %16 = load i64*, i64** @_LIGHTS, align 8
  %17 = load i32, i32* @rainbow_loop.i, align 4
  %18 = add nsw i32 %17, 120
  %19 = srem i32 %18, 360
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i64, i64* %16, i64 %20
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* @rainbow_loop.r, align 8
  %23 = load i64*, i64** @_LIGHTS, align 8
  %24 = load i32, i32* @rainbow_loop.i, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i64, i64* %23, i64 %25
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* @rainbow_loop.g, align 8
  %28 = load i64*, i64** @_LIGHTS, align 8
  %29 = load i32, i32* @rainbow_loop.i, align 4
  %30 = add nsw i32 %29, 240
  %31 = srem i32 %30, 360
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i64, i64* %28, i64 %32
  %34 = load i64, i64* %33, align 8
  store i64 %34, i64* @rainbow_loop.b, align 8
  %35 = load i32, i32* @rainbow_loop.i, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* @rainbow_loop.i, align 4
  store i32 0, i32* %4, align 4
  store i64 0, i64* %5, align 8
  br label %37

37:                                               ; preds = %116, %14
  %38 = load i64, i64* %5, align 8
  %39 = load i64, i64* @RBW, align 8
  %40 = icmp ult i64 %38, %39
  br i1 %40, label %41, label %119

41:                                               ; preds = %37
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** @rbw_led_keys, align 8
  %43 = load i64, i64* %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  store i64 %46, i64* @rainbow_loop.pos, align 8
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** @rbw_led_keys, align 8
  %48 = load i64, i64* %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  switch i32 %51, label %114 [
    i32 128, label %52
    i32 129, label %73
  ]

52:                                               ; preds = %41
  %53 = load i32*, i32** @active_key_pos, align 8
  %54 = load i64, i64* @rainbow_loop.pos, align 8
  %55 = getelementptr inbounds i32, i32* %53, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %65

58:                                               ; preds = %52
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** @rbw_led_keys, align 8
  %60 = load i64, i64* %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %72

65:                                               ; preds = %58, %52
  %66 = load i64, i64* @rainbow_loop.r, align 8
  %67 = load i64, i64* @rainbow_loop.g, align 8
  %68 = load i64, i64* @rainbow_loop.b, align 8
  %69 = load i32, i32* @led_dim, align 4
  %70 = load i64, i64* @rainbow_loop.pos, align 8
  %71 = call i32 @SET_LED_RGB(i64 %66, i64 %67, i64 %68, i32 %69, i64 %70)
  store i32 1, i32* %4, align 4
  br label %72

72:                                               ; preds = %65, %58
  br label %115

73:                                               ; preds = %41
  %74 = load i32*, i32** @active_key_pos, align 8
  %75 = load i64, i64* @rainbow_loop.pos, align 8
  %76 = getelementptr inbounds i32, i32* %74, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %86

79:                                               ; preds = %73
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** @rbw_led_keys, align 8
  %81 = load i64, i64* %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %108

86:                                               ; preds = %79, %73
  %87 = load i64**, i64*** @_LC, align 8
  %88 = load i64, i64* %3, align 8
  %89 = getelementptr inbounds i64*, i64** %87, i64 %88
  %90 = load i64*, i64** %89, align 8
  %91 = getelementptr inbounds i64, i64* %90, i64 0
  %92 = load i64, i64* %91, align 8
  %93 = load i64**, i64*** @_LC, align 8
  %94 = load i64, i64* %3, align 8
  %95 = getelementptr inbounds i64*, i64** %93, i64 %94
  %96 = load i64*, i64** %95, align 8
  %97 = getelementptr inbounds i64, i64* %96, i64 1
  %98 = load i64, i64* %97, align 8
  %99 = load i64**, i64*** @_LC, align 8
  %100 = load i64, i64* %3, align 8
  %101 = getelementptr inbounds i64*, i64** %99, i64 %100
  %102 = load i64*, i64** %101, align 8
  %103 = getelementptr inbounds i64, i64* %102, i64 2
  %104 = load i64, i64* %103, align 8
  %105 = load i32, i32* @led_dim, align 4
  %106 = load i64, i64* @rainbow_loop.pos, align 8
  %107 = call i32 @SET_LED_RGB(i64 %92, i64 %98, i64 %104, i32 %105, i64 %106)
  store i32 1, i32* %4, align 4
  br label %108

108:                                              ; preds = %86, %79
  %109 = load i32, i32* @DEFAULT, align 4
  %110 = load %struct.TYPE_2__*, %struct.TYPE_2__** @rbw_led_keys, align 8
  %111 = load i64, i64* %5, align 8
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 1
  store i32 %109, i32* %113, align 8
  br label %115

114:                                              ; preds = %41
  br label %115

115:                                              ; preds = %114, %108, %72
  br label %116

116:                                              ; preds = %115
  %117 = load i64, i64* %5, align 8
  %118 = add i64 %117, 1
  store i64 %118, i64* %5, align 8
  br label %37

119:                                              ; preds = %37
  %120 = load i32, i32* %4, align 4
  store i32 %120, i32* %2, align 4
  br label %121

121:                                              ; preds = %119, %9
  %122 = load i32, i32* %2, align 4
  ret i32 %122
}

declare dso_local i32 @timer_elapsed(i32) #1

declare dso_local i32 @timer_read(...) #1

declare dso_local i32 @SET_LED_RGB(i64, i64, i64, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
