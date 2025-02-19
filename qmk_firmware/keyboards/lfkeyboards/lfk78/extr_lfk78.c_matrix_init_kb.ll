; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/lfkeyboards/lfk78/extr_lfk78.c_matrix_init_kb.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/lfkeyboards/lfk78/extr_lfk78.c_matrix_init_kb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TCCR1A = common dso_local global i32 0, align 4
@TCCR1B = common dso_local global i32 0, align 4
@ICR1 = common dso_local global i32 0, align 4
@OCR1C = common dso_local global i32 0, align 4
@OCR1B = common dso_local global i32 0, align 4
@OCR1A = common dso_local global i32 0, align 4
@DDRB = common dso_local global i32 0, align 4
@DDRC = common dso_local global i32 0, align 4
@PORTC = common dso_local global i32 0, align 4
@WDTO_500MS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @matrix_init_kb() #0 {
  %1 = call i32 (...) @matrix_init_user()
  store i32 254, i32* @TCCR1A, align 4
  store i32 25, i32* @TCCR1B, align 4
  store i32 65535, i32* @ICR1, align 4
  store i32 0, i32* @OCR1C, align 4
  store i32 0, i32* @OCR1B, align 4
  store i32 4095, i32* @OCR1A, align 4
  %2 = load i32, i32* @DDRB, align 4
  %3 = or i32 %2, 224
  store i32 %3, i32* @DDRB, align 4
  %4 = load i32, i32* @DDRC, align 4
  %5 = call i32 @sbi(i32 %4, i32 6)
  %6 = load i32, i32* @PORTC, align 4
  %7 = call i32 @cbi(i32 %6, i32 6)
  ret void
}

declare dso_local i32 @matrix_init_user(...) #1

declare dso_local i32 @sbi(i32, i32) #1

declare dso_local i32 @cbi(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
