; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_ws2812_effects.c_ws2812_effects_mode_delay.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_ws2812_effects.c_ws2812_effects_mode_delay.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64, i32 }

@state = common dso_local global %struct.TYPE_2__* null, align 8
@SPEED_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @ws2812_effects_mode_delay to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ws2812_effects_mode_delay() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load %struct.TYPE_2__*, %struct.TYPE_2__** @state, align 8
  %4 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %17

7:                                                ; preds = %0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** @state, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = icmp sgt i64 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %7
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** @state, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = trunc i64 %15 to i32
  store i32 %16, i32* %1, align 4
  br label %64

17:                                               ; preds = %7, %0
  store i32 10, i32* %2, align 4
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** @state, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  switch i32 %20, label %62 [
    i32 141, label %21
    i32 131, label %21
    i32 130, label %21
    i32 134, label %33
    i32 137, label %33
    i32 135, label %33
    i32 136, label %33
    i32 129, label %50
    i32 133, label %50
    i32 140, label %50
    i32 132, label %50
    i32 138, label %50
    i32 139, label %50
    i32 128, label %50
  ]

21:                                               ; preds = %17, %17, %17
  %22 = load i32, i32* @SPEED_MAX, align 4
  %23 = sext i32 %22 to i64
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** @state, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = sub nsw i64 %23, %26
  %28 = trunc i64 %27 to i32
  %29 = mul nsw i32 1000, %28
  %30 = load i32, i32* @SPEED_MAX, align 4
  %31 = sdiv i32 %29, %30
  %32 = add nsw i32 10, %31
  store i32 %32, i32* %2, align 4
  br label %62

33:                                               ; preds = %17, %17, %17, %17
  %34 = call i32 (...) @rand()
  %35 = srem i32 %34, 100
  %36 = add nsw i32 30, %35
  %37 = sext i32 %36 to i64
  %38 = load i32, i32* @SPEED_MAX, align 4
  %39 = sext i32 %38 to i64
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** @state, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = sub nsw i64 %39, %42
  %44 = mul nsw i64 200, %43
  %45 = load i32, i32* @SPEED_MAX, align 4
  %46 = sext i32 %45 to i64
  %47 = sdiv i64 %44, %46
  %48 = add nsw i64 %37, %47
  %49 = trunc i64 %48 to i32
  store i32 %49, i32* %2, align 4
  br label %62

50:                                               ; preds = %17, %17, %17, %17, %17, %17, %17
  %51 = load i32, i32* @SPEED_MAX, align 4
  %52 = sext i32 %51 to i64
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** @state, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = sub nsw i64 %52, %55
  %57 = trunc i64 %56 to i32
  %58 = mul nsw i32 1000, %57
  %59 = load i32, i32* @SPEED_MAX, align 4
  %60 = sdiv i32 %58, %59
  %61 = add nsw i32 10, %60
  store i32 %61, i32* %2, align 4
  br label %62

62:                                               ; preds = %17, %50, %33, %21
  %63 = load i32, i32* %2, align 4
  store i32 %63, i32* %1, align 4
  br label %64

64:                                               ; preds = %62, %12
  %65 = load i32, i32* %1, align 4
  ret i32 %65
}

declare dso_local i32 @rand(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
