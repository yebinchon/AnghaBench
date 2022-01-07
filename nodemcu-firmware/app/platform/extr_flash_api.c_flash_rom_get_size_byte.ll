; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/platform/extr_flash_api.c_flash_rom_get_size_byte.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/platform/extr_flash_api.c_flash_rom_get_size_byte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@flash_rom_get_size_byte.flash_size = internal global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @flash_rom_get_size_byte() #0 {
  %1 = load i64, i64* @flash_rom_get_size_byte.flash_size, align 8
  %2 = icmp eq i64 %1, 0
  br i1 %2, label %3, label %19

3:                                                ; preds = %0
  %4 = call %struct.TYPE_2__* (...) @flash_rom_getinfo()
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %17 [
    i32 134, label %7
    i32 130, label %8
    i32 128, label %9
    i32 136, label %10
    i32 133, label %11
    i32 135, label %12
    i32 131, label %13
    i32 132, label %14
    i32 129, label %15
    i32 137, label %16
  ]

7:                                                ; preds = %3
  store i64 262144, i64* @flash_rom_get_size_byte.flash_size, align 8
  br label %18

8:                                                ; preds = %3
  store i64 524288, i64* @flash_rom_get_size_byte.flash_size, align 8
  br label %18

9:                                                ; preds = %3
  store i64 1048576, i64* @flash_rom_get_size_byte.flash_size, align 8
  br label %18

10:                                               ; preds = %3
  store i64 2097152, i64* @flash_rom_get_size_byte.flash_size, align 8
  br label %18

11:                                               ; preds = %3
  store i64 4194304, i64* @flash_rom_get_size_byte.flash_size, align 8
  br label %18

12:                                               ; preds = %3
  store i64 2097152, i64* @flash_rom_get_size_byte.flash_size, align 8
  br label %18

13:                                               ; preds = %3
  store i64 4194304, i64* @flash_rom_get_size_byte.flash_size, align 8
  br label %18

14:                                               ; preds = %3
  store i64 4194304, i64* @flash_rom_get_size_byte.flash_size, align 8
  br label %18

15:                                               ; preds = %3
  store i64 8388608, i64* @flash_rom_get_size_byte.flash_size, align 8
  br label %18

16:                                               ; preds = %3
  store i64 16777216, i64* @flash_rom_get_size_byte.flash_size, align 8
  br label %18

17:                                               ; preds = %3
  store i64 524288, i64* @flash_rom_get_size_byte.flash_size, align 8
  br label %18

18:                                               ; preds = %17, %16, %15, %14, %13, %12, %11, %10, %9, %8, %7
  br label %19

19:                                               ; preds = %18, %0
  %20 = load i64, i64* @flash_rom_get_size_byte.flash_size, align 8
  ret i64 %20
}

declare dso_local %struct.TYPE_2__* @flash_rom_getinfo(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
