; ModuleID = '/home/carl/AnghaBench/qmk_firmware/quantum/extr_rgb_matrix.c_rgb_matrix_test.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/quantum/extr_rgb_matrix.c_rgb_matrix_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@g_rgb_counters = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rgb_matrix_test() #0 {
  %1 = alloca i32, align 4
  store i32 10, i32* %1, align 4
  %2 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g_rgb_counters, i32 0, i32 0), align 4
  %3 = load i32, i32* %1, align 4
  %4 = shl i32 3, %3
  %5 = and i32 %2, %4
  %6 = load i32, i32* %1, align 4
  %7 = ashr i32 %5, %6
  switch i32 %7, label %16 [
    i32 0, label %8
    i32 1, label %10
    i32 2, label %12
    i32 3, label %14
  ]

8:                                                ; preds = %0
  %9 = call i32 @rgb_matrix_set_color_all(i32 20, i32 0, i32 0)
  br label %16

10:                                               ; preds = %0
  %11 = call i32 @rgb_matrix_set_color_all(i32 0, i32 20, i32 0)
  br label %16

12:                                               ; preds = %0
  %13 = call i32 @rgb_matrix_set_color_all(i32 0, i32 0, i32 20)
  br label %16

14:                                               ; preds = %0
  %15 = call i32 @rgb_matrix_set_color_all(i32 20, i32 20, i32 20)
  br label %16

16:                                               ; preds = %0, %14, %12, %10, %8
  ret void
}

declare dso_local i32 @rgb_matrix_set_color_all(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
