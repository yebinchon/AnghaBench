; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/converter/palm_usb/extr_matrix.c_matrix_init.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/converter/palm_usb/extr_matrix.c_matrix_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@debug_enable = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"power up\0A\00", align 1
@VCC_PIN = common dso_local global i32 0, align 4
@PinLevelHigh = common dso_local global i64 0, align 8
@DCD_PIN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"dcd\0A\00", align 1
@last_activity = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"failed handshake\00", align 1
@MATRIX_ROWS = common dso_local global i64 0, align 8
@matrix = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @matrix_init() #0 {
  %1 = alloca i64, align 8
  store i32 1, i32* @debug_enable, align 4
  %2 = call i32 (...) @serial_init()
  %3 = call i32 (...) @pins_init()
  %4 = call i32 @print(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %5 = load i32, i32* @VCC_PIN, align 4
  %6 = load i64, i64* @PinLevelHigh, align 8
  %7 = call i32 @digitalWrite(i32 %5, i64 %6)
  br label %8

8:                                                ; preds = %13, %0
  %9 = load i32, i32* @DCD_PIN, align 4
  %10 = call i64 @digitalRead(i32 %9)
  %11 = load i64, i64* @PinLevelHigh, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %8
  br label %8

14:                                               ; preds = %8
  %15 = call i32 @print(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %16 = call i32 (...) @rts_reset()
  %17 = call i64 (...) @palm_handshake()
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %14
  %20 = call i32 (...) @timer_read()
  store i32 %20, i32* @last_activity, align 4
  br label %24

21:                                               ; preds = %14
  %22 = call i32 @print(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %23 = call i32 @_delay_ms(i32 1000)
  br label %24

24:                                               ; preds = %21, %19
  store i64 0, i64* %1, align 8
  br label %25

25:                                               ; preds = %33, %24
  %26 = load i64, i64* %1, align 8
  %27 = load i64, i64* @MATRIX_ROWS, align 8
  %28 = icmp ult i64 %26, %27
  br i1 %28, label %29, label %36

29:                                               ; preds = %25
  %30 = load i32*, i32** @matrix, align 8
  %31 = load i64, i64* %1, align 8
  %32 = getelementptr inbounds i32, i32* %30, i64 %31
  store i32 0, i32* %32, align 4
  br label %33

33:                                               ; preds = %29
  %34 = load i64, i64* %1, align 8
  %35 = add i64 %34, 1
  store i64 %35, i64* %1, align 8
  br label %25

36:                                               ; preds = %25
  %37 = call i32 (...) @matrix_init_quantum()
  ret void
}

declare dso_local i32 @serial_init(...) #1

declare dso_local i32 @pins_init(...) #1

declare dso_local i32 @print(i8*) #1

declare dso_local i32 @digitalWrite(i32, i64) #1

declare dso_local i64 @digitalRead(i32) #1

declare dso_local i32 @rts_reset(...) #1

declare dso_local i64 @palm_handshake(...) #1

declare dso_local i32 @timer_read(...) #1

declare dso_local i32 @_delay_ms(i32) #1

declare dso_local i32 @matrix_init_quantum(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
