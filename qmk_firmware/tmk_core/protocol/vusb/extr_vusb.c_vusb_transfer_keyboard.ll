; ModuleID = '/home/carl/AnghaBench/qmk_firmware/tmk_core/protocol/vusb/extr_vusb.c_vusb_transfer_keyboard.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/tmk_core/protocol/vusb/extr_vusb.c_vusb_transfer_keyboard.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VUSB_TRANSFER_KEYBOARD_MAX_TRIES = common dso_local global i32 0, align 4
@kbuf_head = common dso_local global i64 0, align 8
@kbuf_tail = common dso_local global i64 0, align 8
@kbuf = common dso_local global i32* null, align 8
@KBUF_SIZE = common dso_local global i64 0, align 8
@debug_keyboard = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [13 x i8] c"V-USB: kbuf[\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"->\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"](\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c")\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vusb_transfer_keyboard() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  br label %2

2:                                                ; preds = %55, %0
  %3 = load i32, i32* %1, align 4
  %4 = load i32, i32* @VUSB_TRANSFER_KEYBOARD_MAX_TRIES, align 4
  %5 = icmp slt i32 %3, %4
  br i1 %5, label %6, label %58

6:                                                ; preds = %2
  %7 = call i64 (...) @usbInterruptIsReady()
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %52

9:                                                ; preds = %6
  %10 = load i64, i64* @kbuf_head, align 8
  %11 = load i64, i64* @kbuf_tail, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %51

13:                                               ; preds = %9
  %14 = load i32*, i32** @kbuf, align 8
  %15 = load i64, i64* @kbuf_tail, align 8
  %16 = getelementptr inbounds i32, i32* %14, i64 %15
  %17 = bitcast i32* %16 to i8*
  %18 = call i32 @usbSetInterrupt(i8* %17, i32 4)
  %19 = load i64, i64* @kbuf_tail, align 8
  %20 = add i64 %19, 1
  %21 = load i64, i64* @KBUF_SIZE, align 8
  %22 = urem i64 %20, %21
  store i64 %22, i64* @kbuf_tail, align 8
  %23 = load i64, i64* @debug_keyboard, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %50

25:                                               ; preds = %13
  %26 = call i32 @print(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %27 = load i64, i64* @kbuf_tail, align 8
  %28 = call i32 @pdec(i64 %27)
  %29 = call i32 @print(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %30 = load i64, i64* @kbuf_head, align 8
  %31 = call i32 @pdec(i64 %30)
  %32 = call i32 @print(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %33 = load i64, i64* @kbuf_head, align 8
  %34 = load i64, i64* @kbuf_tail, align 8
  %35 = icmp ult i64 %33, %34
  br i1 %35, label %36, label %42

36:                                               ; preds = %25
  %37 = load i64, i64* @KBUF_SIZE, align 8
  %38 = load i64, i64* @kbuf_tail, align 8
  %39 = sub i64 %37, %38
  %40 = load i64, i64* @kbuf_head, align 8
  %41 = add i64 %39, %40
  br label %46

42:                                               ; preds = %25
  %43 = load i64, i64* @kbuf_head, align 8
  %44 = load i64, i64* @kbuf_tail, align 8
  %45 = sub i64 %43, %44
  br label %46

46:                                               ; preds = %42, %36
  %47 = phi i64 [ %41, %36 ], [ %45, %42 ]
  %48 = call i32 @phex(i64 %47)
  %49 = call i32 @print(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  br label %50

50:                                               ; preds = %46, %13
  br label %51

51:                                               ; preds = %50, %9
  br label %58

52:                                               ; preds = %6
  %53 = call i32 (...) @usbPoll()
  %54 = call i32 @_delay_ms(i32 1)
  br label %55

55:                                               ; preds = %52
  %56 = load i32, i32* %1, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %1, align 4
  br label %2

58:                                               ; preds = %51, %2
  ret void
}

declare dso_local i64 @usbInterruptIsReady(...) #1

declare dso_local i32 @usbSetInterrupt(i8*, i32) #1

declare dso_local i32 @print(i8*) #1

declare dso_local i32 @pdec(i64) #1

declare dso_local i32 @phex(i64) #1

declare dso_local i32 @usbPoll(...) #1

declare dso_local i32 @_delay_ms(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
