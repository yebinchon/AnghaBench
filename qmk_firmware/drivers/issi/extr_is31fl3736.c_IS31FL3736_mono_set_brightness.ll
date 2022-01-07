; ModuleID = '/home/carl/AnghaBench/qmk_firmware/drivers/issi/extr_is31fl3736.c_IS31FL3736_mono_set_brightness.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/drivers/issi/extr_is31fl3736.c_IS31FL3736_mono_set_brightness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@g_pwm_buffer = common dso_local global i64** null, align 8
@g_pwm_buffer_update_required = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @IS31FL3736_mono_set_brightness(i32 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i64 %1, i64* %4, align 8
  %6 = load i32, i32* %3, align 4
  %7 = icmp sge i32 %6, 0
  br i1 %7, label %8, label %21

8:                                                ; preds = %2
  %9 = load i32, i32* %3, align 4
  %10 = icmp slt i32 %9, 96
  br i1 %10, label %11, label %21

11:                                               ; preds = %8
  %12 = load i32, i32* %3, align 4
  %13 = mul nsw i32 %12, 2
  %14 = sext i32 %13 to i64
  store i64 %14, i64* %5, align 8
  %15 = load i64, i64* %4, align 8
  %16 = load i64**, i64*** @g_pwm_buffer, align 8
  %17 = getelementptr inbounds i64*, i64** %16, i64 0
  %18 = load i64*, i64** %17, align 8
  %19 = load i64, i64* %5, align 8
  %20 = getelementptr inbounds i64, i64* %18, i64 %19
  store i64 %15, i64* %20, align 8
  store i32 1, i32* @g_pwm_buffer_update_required, align 4
  br label %21

21:                                               ; preds = %11, %8, %2
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
