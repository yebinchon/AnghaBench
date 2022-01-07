; ModuleID = '/home/carl/AnghaBench/qmk_firmware/drivers/issi/extr_is31fl3736.c_IS31FL3736_update_pwm_buffers.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/drivers/issi/extr_is31fl3736.c_IS31FL3736_update_pwm_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@g_pwm_buffer_update_required = common dso_local global i32 0, align 4
@ISSI_COMMANDREGISTER_WRITELOCK = common dso_local global i32 0, align 4
@ISSI_COMMANDREGISTER = common dso_local global i32 0, align 4
@ISSI_PAGE_PWM = common dso_local global i32 0, align 4
@g_pwm_buffer = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @IS31FL3736_update_pwm_buffers(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* @g_pwm_buffer_update_required, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %20

7:                                                ; preds = %2
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* @ISSI_COMMANDREGISTER_WRITELOCK, align 4
  %10 = call i32 @IS31FL3736_write_register(i32 %8, i32 %9, i32 197)
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* @ISSI_COMMANDREGISTER, align 4
  %13 = load i32, i32* @ISSI_PAGE_PWM, align 4
  %14 = call i32 @IS31FL3736_write_register(i32 %11, i32 %12, i32 %13)
  %15 = load i32, i32* %3, align 4
  %16 = load i32*, i32** @g_pwm_buffer, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @IS31FL3736_write_pwm_buffer(i32 %15, i32 %18)
  br label %20

20:                                               ; preds = %7, %2
  store i32 0, i32* @g_pwm_buffer_update_required, align 4
  ret void
}

declare dso_local i32 @IS31FL3736_write_register(i32, i32, i32) #1

declare dso_local i32 @IS31FL3736_write_pwm_buffer(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
