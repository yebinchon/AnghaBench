; ModuleID = '/home/carl/AnghaBench/qmk_firmware/tmk_core/protocol/extr_ps2_mouse.c_ps2_mouse_task.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/tmk_core/protocol/extr_ps2_mouse.c_ps2_mouse_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32, i32 }

@ps2_mouse_task.buttons_prev = internal global i64 0, align 8
@PS2_MOUSE_READ_DATA = common dso_local global i32 0, align 4
@PS2_ACK = common dso_local global i64 0, align 8
@tp_buttons = external dso_local global i32, align 4
@mouse_report = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@PS2_MOUSE_X_MULTIPLIER = common dso_local global i32 0, align 4
@PS2_MOUSE_Y_MULTIPLIER = common dso_local global i32 0, align 4
@debug_mouse = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [37 x i8] c"ps2_mouse: fail to get mouse packet\0A\00", align 1
@PS2_MOUSE_BTN_MASK = common dso_local global i64 0, align 8
@PS2_MOUSE_SCROLL_MASK = common dso_local global i32 0, align 4
@PS2_MOUSE_V_MULTIPLIER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ps2_mouse_task() #0 {
  %1 = alloca i64, align 8
  %2 = load i32, i32* @PS2_MOUSE_READ_DATA, align 4
  %3 = call i64 @ps2_host_send(i32 %2)
  store i64 %3, i64* %1, align 8
  %4 = load i64, i64* %1, align 8
  %5 = load i64, i64* @PS2_ACK, align 8
  %6 = icmp eq i64 %4, %5
  br i1 %6, label %7, label %17

7:                                                ; preds = %0
  %8 = call i32 (...) @ps2_host_recv_response()
  %9 = load i32, i32* @tp_buttons, align 4
  %10 = or i32 %8, %9
  store i32 %10, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @mouse_report, i32 0, i32 0), align 4
  %11 = call i32 (...) @ps2_host_recv_response()
  %12 = load i32, i32* @PS2_MOUSE_X_MULTIPLIER, align 4
  %13 = mul nsw i32 %11, %12
  store i32 %13, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @mouse_report, i32 0, i32 1), align 4
  %14 = call i32 (...) @ps2_host_recv_response()
  %15 = load i32, i32* @PS2_MOUSE_Y_MULTIPLIER, align 4
  %16 = mul nsw i32 %14, %15
  store i32 %16, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @mouse_report, i32 0, i32 2), align 4
  br label %23

17:                                               ; preds = %0
  %18 = load i64, i64* @debug_mouse, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %17
  %21 = call i32 @print(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  br label %22

22:                                               ; preds = %20, %17
  br label %47

23:                                               ; preds = %7
  %24 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @mouse_report, i32 0, i32 1), align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %40, label %26

26:                                               ; preds = %23
  %27 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @mouse_report, i32 0, i32 2), align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %40, label %29

29:                                               ; preds = %26
  %30 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @mouse_report, i32 0, i32 3), align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %40, label %32

32:                                               ; preds = %29
  %33 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @mouse_report, i32 0, i32 0), align 4
  %34 = sext i32 %33 to i64
  %35 = load i64, i64* @ps2_mouse_task.buttons_prev, align 8
  %36 = xor i64 %34, %35
  %37 = load i64, i64* @PS2_MOUSE_BTN_MASK, align 8
  %38 = and i64 %36, %37
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %32, %29, %26, %23
  %41 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @mouse_report, i32 0, i32 0), align 4
  %42 = sext i32 %41 to i64
  store i64 %42, i64* @ps2_mouse_task.buttons_prev, align 8
  %43 = call i32 @ps2_mouse_convert_report_to_hid(%struct.TYPE_7__* @mouse_report)
  %44 = call i32 @host_mouse_send(%struct.TYPE_7__* @mouse_report)
  br label %45

45:                                               ; preds = %40, %32
  %46 = call i32 @ps2_mouse_clear_report(%struct.TYPE_7__* @mouse_report)
  br label %47

47:                                               ; preds = %45, %22
  ret void
}

declare dso_local i64 @ps2_host_send(i32) #1

declare dso_local i32 @ps2_host_recv_response(...) #1

declare dso_local i32 @print(i8*) #1

declare dso_local i32 @ps2_mouse_convert_report_to_hid(%struct.TYPE_7__*) #1

declare dso_local i32 @host_mouse_send(%struct.TYPE_7__*) #1

declare dso_local i32 @ps2_mouse_clear_report(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
