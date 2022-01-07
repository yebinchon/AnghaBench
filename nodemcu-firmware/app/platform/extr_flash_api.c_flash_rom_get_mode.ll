; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/platform/extr_flash_api.c_flash_rom_get_mode.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/platform/extr_flash_api.c_flash_rom_get_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @flash_rom_get_mode() #0 {
  %1 = alloca i32, align 4
  %2 = call %struct.TYPE_2__* (...) @flash_rom_getinfo()
  %3 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %2, i32 0, i32 0
  %4 = load i32, i32* %3, align 4
  store i32 %4, i32* %1, align 4
  %5 = load i32, i32* %1, align 4
  switch i32 %5, label %10 [
    i32 129, label %6
    i32 128, label %7
    i32 131, label %8
    i32 130, label %9
  ]

6:                                                ; preds = %0
  br label %10

7:                                                ; preds = %0
  br label %10

8:                                                ; preds = %0
  br label %10

9:                                                ; preds = %0
  br label %10

10:                                               ; preds = %0, %9, %8, %7, %6
  %11 = load i32, i32* %1, align 4
  ret i32 %11
}

declare dso_local %struct.TYPE_2__* @flash_rom_getinfo(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
