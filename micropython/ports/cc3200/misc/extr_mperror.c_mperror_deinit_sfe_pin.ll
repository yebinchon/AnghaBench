; ModuleID = '/home/carl/AnghaBench/micropython/ports/cc3200/misc/extr_mperror.c_mperror_deinit_sfe_pin.c'
source_filename = "/home/carl/AnghaBench/micropython/ports/cc3200/misc/extr_mperror.c_mperror_deinit_sfe_pin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MICROPY_SAFE_BOOT_PIN_NUM = common dso_local global i32 0, align 4
@PIN_STRENGTH_4MA = common dso_local global i32 0, align 4
@PIN_TYPE_STD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mperror_deinit_sfe_pin() #0 {
  %1 = load i32, i32* @MICROPY_SAFE_BOOT_PIN_NUM, align 4
  %2 = load i32, i32* @PIN_STRENGTH_4MA, align 4
  %3 = load i32, i32* @PIN_TYPE_STD, align 4
  %4 = call i32 @MAP_PinConfigSet(i32 %1, i32 %2, i32 %3)
  ret void
}

declare dso_local i32 @MAP_PinConfigSet(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
