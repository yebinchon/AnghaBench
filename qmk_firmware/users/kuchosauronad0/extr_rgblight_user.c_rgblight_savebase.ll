; ModuleID = '/home/carl/AnghaBench/qmk_firmware/users/kuchosauronad0/extr_rgblight_user.c_rgblight_savebase.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/users/kuchosauronad0/extr_rgblight_user.c_rgblight_savebase.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@rgblight_config = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@base_hue = common dso_local global i32 0, align 4
@base_sat = common dso_local global i32 0, align 4
@base_val = common dso_local global i32 0, align 4
@base_mod = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rgblight_savebase() #0 {
  %1 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @rgblight_config, i32 0, i32 3), align 4
  store i32 %1, i32* @base_hue, align 4
  %2 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @rgblight_config, i32 0, i32 2), align 4
  store i32 %2, i32* @base_sat, align 4
  %3 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @rgblight_config, i32 0, i32 1), align 4
  store i32 %3, i32* @base_val, align 4
  %4 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @rgblight_config, i32 0, i32 0), align 4
  store i32 %4, i32* @base_mod, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
