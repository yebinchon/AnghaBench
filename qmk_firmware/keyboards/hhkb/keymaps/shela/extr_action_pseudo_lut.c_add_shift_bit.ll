; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/hhkb/keymaps/shela/extr_action_pseudo_lut.c_add_shift_bit.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/hhkb/keymaps/shela/extr_action_pseudo_lut.c_add_shift_bit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SHIFT_BIT_SIZE = common dso_local global i32 0, align 4
@send_key_shift_bit = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [51 x i8] c"add_shift_bit: Can't add shift bit. keycode: %02X\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @add_shift_bit(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = ashr i32 %3, 3
  %5 = load i32, i32* @SHIFT_BIT_SIZE, align 4
  %6 = icmp slt i32 %4, %5
  br i1 %6, label %7, label %18

7:                                                ; preds = %1
  %8 = load i32, i32* %2, align 4
  %9 = and i32 %8, 7
  %10 = shl i32 1, %9
  %11 = load i32*, i32** @send_key_shift_bit, align 8
  %12 = load i32, i32* %2, align 4
  %13 = ashr i32 %12, 3
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i32, i32* %11, i64 %14
  %16 = load i32, i32* %15, align 4
  %17 = or i32 %16, %10
  store i32 %17, i32* %15, align 4
  br label %21

18:                                               ; preds = %1
  %19 = load i32, i32* %2, align 4
  %20 = call i32 @dprintf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %19)
  br label %21

21:                                               ; preds = %18, %7
  ret void
}

declare dso_local i32 @dprintf(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
