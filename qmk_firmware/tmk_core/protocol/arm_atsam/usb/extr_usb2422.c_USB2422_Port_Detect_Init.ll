; ModuleID = '/home/carl/AnghaBench/qmk_firmware/tmk_core/protocol/arm_atsam/usb/extr_usb2422.c_USB2422_Port_Detect_Init.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/tmk_core/protocol/arm_atsam/usb/extr_usb2422.c_USB2422_Port_Detect_Init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DC_PORT_DETECT_INIT_BEGIN = common dso_local global i32 0, align 4
@PORT_DETECT_RETRY_INTERVAL = common dso_local global i32 0, align 4
@v_con_1 = common dso_local global i64 0, align 8
@v_con_2 = common dso_local global i64 0, align 8
@DBG_LED_ON = common dso_local global i32 0, align 4
@DBG_LED_OFF = common dso_local global i32 0, align 4
@DC_PORT_DETECT_INIT_FAILED = common dso_local global i32 0, align 4
@DC_PORT_DETECT_INIT_COMPLETE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @USB2422_Port_Detect_Init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = load i32, i32* @DC_PORT_DETECT_INIT_BEGIN, align 4
  %5 = call i32 @DBGC(i32 %4)
  %6 = call i32 (...) @USB_set_host_by_voltage()
  %7 = call i32 (...) @timer_read64()
  %8 = load i32, i32* @PORT_DETECT_RETRY_INTERVAL, align 4
  %9 = add nsw i32 %7, %8
  store i32 %9, i32* %2, align 4
  br label %10

10:                                               ; preds = %64, %0
  %11 = call i32 (...) @USB_active()
  %12 = icmp ne i32 %11, 0
  %13 = xor i1 %12, true
  br i1 %13, label %14, label %65

14:                                               ; preds = %10
  %15 = call i32 (...) @timer_read64()
  %16 = load i32, i32* @PORT_DETECT_RETRY_INTERVAL, align 4
  %17 = srem i32 %15, %16
  store i32 %17, i32* %3, align 4
  %18 = load i64, i64* @v_con_1, align 8
  %19 = load i64, i64* @v_con_2, align 8
  %20 = icmp sgt i64 %18, %19
  br i1 %20, label %21, label %32

21:                                               ; preds = %14
  %22 = load i32, i32* %3, align 4
  %23 = icmp sgt i32 %22, 500
  br i1 %23, label %24, label %29

24:                                               ; preds = %21
  %25 = load i32, i32* %3, align 4
  %26 = icmp slt i32 %25, 600
  br i1 %26, label %27, label %29

27:                                               ; preds = %24
  %28 = load i32, i32* @DBG_LED_ON, align 4
  br label %31

29:                                               ; preds = %24, %21
  %30 = load i32, i32* @DBG_LED_OFF, align 4
  br label %31

31:                                               ; preds = %29, %27
  br label %57

32:                                               ; preds = %14
  %33 = load i64, i64* @v_con_2, align 8
  %34 = load i64, i64* @v_con_1, align 8
  %35 = icmp sgt i64 %33, %34
  br i1 %35, label %36, label %56

36:                                               ; preds = %32
  %37 = load i32, i32* %3, align 4
  %38 = icmp sgt i32 %37, 500
  br i1 %38, label %39, label %44

39:                                               ; preds = %36
  %40 = load i32, i32* %3, align 4
  %41 = icmp slt i32 %40, 600
  br i1 %41, label %42, label %44

42:                                               ; preds = %39
  %43 = load i32, i32* @DBG_LED_ON, align 4
  br label %55

44:                                               ; preds = %39, %36
  %45 = load i32, i32* %3, align 4
  %46 = icmp sgt i32 %45, 700
  br i1 %46, label %47, label %52

47:                                               ; preds = %44
  %48 = load i32, i32* %3, align 4
  %49 = icmp slt i32 %48, 800
  br i1 %49, label %50, label %52

50:                                               ; preds = %47
  %51 = load i32, i32* @DBG_LED_ON, align 4
  br label %54

52:                                               ; preds = %47, %44
  %53 = load i32, i32* @DBG_LED_OFF, align 4
  br label %54

54:                                               ; preds = %52, %50
  br label %55

55:                                               ; preds = %54, %42
  br label %56

56:                                               ; preds = %55, %32
  br label %57

57:                                               ; preds = %56, %31
  %58 = call i32 (...) @timer_read64()
  %59 = load i32, i32* %2, align 4
  %60 = icmp sgt i32 %58, %59
  br i1 %60, label %61, label %64

61:                                               ; preds = %57
  %62 = load i32, i32* @DC_PORT_DETECT_INIT_FAILED, align 4
  %63 = call i32 @DBGC(i32 %62)
  store i32 0, i32* %1, align 4
  br label %68

64:                                               ; preds = %57
  br label %10

65:                                               ; preds = %10
  %66 = load i32, i32* @DC_PORT_DETECT_INIT_COMPLETE, align 4
  %67 = call i32 @DBGC(i32 %66)
  store i32 1, i32* %1, align 4
  br label %68

68:                                               ; preds = %65, %61
  %69 = load i32, i32* %1, align 4
  ret i32 %69
}

declare dso_local i32 @DBGC(i32) #1

declare dso_local i32 @USB_set_host_by_voltage(...) #1

declare dso_local i32 @timer_read64(...) #1

declare dso_local i32 @USB_active(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
