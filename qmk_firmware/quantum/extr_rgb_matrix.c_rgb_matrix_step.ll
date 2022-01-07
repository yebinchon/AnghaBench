; ModuleID = '/home/carl/AnghaBench/qmk_firmware/quantum/extr_rgb_matrix.c_rgb_matrix_step.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/quantum/extr_rgb_matrix.c_rgb_matrix_step.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@rgb_matrix_config = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@RGB_MATRIX_EFFECT_MAX = common dso_local global i32 0, align 4
@STARTING = common dso_local global i32 0, align 4
@rgb_task_state = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rgb_matrix_step() #0 {
  %1 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @rgb_matrix_config, i32 0, i32 0), align 4
  %2 = add nsw i32 %1, 1
  store i32 %2, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @rgb_matrix_config, i32 0, i32 0), align 4
  %3 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @rgb_matrix_config, i32 0, i32 0), align 4
  %4 = load i32, i32* @RGB_MATRIX_EFFECT_MAX, align 4
  %5 = icmp sge i32 %3, %4
  br i1 %5, label %6, label %7

6:                                                ; preds = %0
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @rgb_matrix_config, i32 0, i32 0), align 4
  br label %7

7:                                                ; preds = %6, %0
  %8 = load i32, i32* @STARTING, align 4
  store i32 %8, i32* @rgb_task_state, align 4
  %9 = call i32 (...) @eeconfig_update_rgb_matrix()
  ret void
}

declare dso_local i32 @eeconfig_update_rgb_matrix(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
