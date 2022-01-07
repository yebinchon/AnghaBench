; ModuleID = '/home/carl/AnghaBench/qmk_firmware/drivers/haptic/extr_DRV2605L.c_DRV_read.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/drivers/haptic/extr_DRV2605L.c_DRV_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DRV2605L_tx_register = common dso_local global i64* null, align 8
@MSG_OK = common dso_local global i64 0, align 8
@DRV2605L_BASE_ADDRESS = common dso_local global i32 0, align 4
@DRV2605L_read_buffer = common dso_local global i64* null, align 8
@.str = private unnamed_addr constant [18 x i8] c"err reading reg \0A\00", align 1
@DRV2605L_read_register = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @DRV_read(i64 %0) #0 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  %4 = load i64*, i64** @DRV2605L_tx_register, align 8
  %5 = getelementptr inbounds i64, i64* %4, i64 0
  store i64 %3, i64* %5, align 8
  %6 = load i64, i64* @MSG_OK, align 8
  %7 = load i32, i32* @DRV2605L_BASE_ADDRESS, align 4
  %8 = shl i32 %7, 1
  %9 = load i64*, i64** @DRV2605L_tx_register, align 8
  %10 = load i64*, i64** @DRV2605L_read_buffer, align 8
  %11 = call i64 @i2c_transmit_receive(i32 %8, i64* %9, i32 1, i64* %10, i32 1)
  %12 = icmp ne i64 %6, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = call i32 @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %15

15:                                               ; preds = %13, %1
  %16 = load i64*, i64** @DRV2605L_read_buffer, align 8
  %17 = getelementptr inbounds i64, i64* %16, i64 0
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* @DRV2605L_read_register, align 8
  %19 = load i64, i64* @DRV2605L_read_register, align 8
  ret i64 %19
}

declare dso_local i64 @i2c_transmit_receive(i32, i64*, i32, i64*, i32) #1

declare dso_local i32 @printf(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
