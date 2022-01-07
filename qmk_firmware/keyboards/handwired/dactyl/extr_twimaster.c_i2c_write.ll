; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/handwired/dactyl/extr_twimaster.c_i2c_write.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/handwired/dactyl/extr_twimaster.c_i2c_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TWDR = common dso_local global i8 0, align 1
@TWINT = common dso_local global i32 0, align 4
@TWEN = common dso_local global i32 0, align 4
@TWCR = common dso_local global i32 0, align 4
@TW_STATUS = common dso_local global i32 0, align 4
@TW_MT_DATA_ACK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i8 @i2c_write(i8 zeroext %0) #0 {
  %2 = alloca i8, align 1
  %3 = alloca i8, align 1
  %4 = alloca i32, align 4
  store i8 %0, i8* %3, align 1
  %5 = load i8, i8* %3, align 1
  store i8 %5, i8* @TWDR, align 1
  %6 = load i32, i32* @TWINT, align 4
  %7 = shl i32 1, %6
  %8 = load i32, i32* @TWEN, align 4
  %9 = shl i32 1, %8
  %10 = or i32 %7, %9
  store i32 %10, i32* @TWCR, align 4
  br label %11

11:                                               ; preds = %18, %1
  %12 = load i32, i32* @TWCR, align 4
  %13 = load i32, i32* @TWINT, align 4
  %14 = shl i32 1, %13
  %15 = and i32 %12, %14
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  br i1 %17, label %18, label %19

18:                                               ; preds = %11
  br label %11

19:                                               ; preds = %11
  %20 = load i32, i32* @TW_STATUS, align 4
  %21 = and i32 %20, 248
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @TW_MT_DATA_ACK, align 4
  %24 = icmp ne i32 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  store i8 1, i8* %2, align 1
  br label %27

26:                                               ; preds = %19
  store i8 0, i8* %2, align 1
  br label %27

27:                                               ; preds = %26, %25
  %28 = load i8, i8* %2, align 1
  ret i8 %28
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
