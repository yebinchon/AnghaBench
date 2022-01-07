; ModuleID = '/home/carl/AnghaBench/qmk_firmware/quantum/extr_rgb_matrix.c_rgb_matrix_decrease_hue.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/quantum/extr_rgb_matrix.c_rgb_matrix_decrease_hue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@RGB_MATRIX_HUE_STEP = common dso_local global i64 0, align 8
@rgb_matrix_config = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rgb_matrix_decrease_hue() #0 {
  %1 = load i64, i64* @RGB_MATRIX_HUE_STEP, align 8
  %2 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @rgb_matrix_config, i32 0, i32 0, i32 0), align 4
  %3 = sext i32 %2 to i64
  %4 = sub nsw i64 %3, %1
  %5 = trunc i64 %4 to i32
  store i32 %5, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @rgb_matrix_config, i32 0, i32 0, i32 0), align 4
  %6 = call i32 (...) @eeconfig_update_rgb_matrix()
  ret void
}

declare dso_local i32 @eeconfig_update_rgb_matrix(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
