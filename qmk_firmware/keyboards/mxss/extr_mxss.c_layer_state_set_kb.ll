; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/mxss/extr_mxss.c_layer_state_set_kb.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/mxss/extr_mxss.c_layer_state_set_kb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32 }

@lc_size = common dso_local global i64 0, align 8
@layer_colors = common dso_local global %struct.TYPE_2__* null, align 8
@fled_val = common dso_local global i32 0, align 4
@fleds = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @layer_state_set_kb(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = call i64 @biton32(i32 %4)
  store i64 %5, i64* %3, align 8
  %6 = load i64, i64* %3, align 8
  %7 = load i64, i64* @lc_size, align 8
  %8 = icmp ult i64 %6, %7
  br i1 %8, label %9, label %38

9:                                                ; preds = %1
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** @layer_colors, align 8
  %11 = load i64, i64* %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i64 %11
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %9
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** @layer_colors, align 8
  %18 = load i64, i64* %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %38, label %23

23:                                               ; preds = %16, %9
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** @layer_colors, align 8
  %25 = load i64, i64* %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** @layer_colors, align 8
  %30 = load i64, i64* %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @fled_val, align 4
  %35 = load i32*, i32** @fleds, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 1
  %37 = call i32 @sethsv(i64 %28, i32 %33, i32 %34, i32* %36)
  br label %42

38:                                               ; preds = %16, %1
  %39 = load i32*, i32** @fleds, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 1
  %41 = call i32 @setrgb(i32 0, i32 0, i32 0, i32* %40)
  br label %42

42:                                               ; preds = %38, %23
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local i64 @biton32(i32) #1

declare dso_local i32 @sethsv(i64, i32, i32, i32*) #1

declare dso_local i32 @setrgb(i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
