; ModuleID = '/home/carl/AnghaBench/qmk_firmware/tmk_core/protocol/extr_serial_mouse_microsoft.c_serial_mouse_task.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/tmk_core/protocol/extr_serial_mouse_microsoft.c_serial_mouse_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32 }

@serial_mouse_task.buffer = internal global [3 x i32] zeroinitializer, align 4
@serial_mouse_task.buffer_cur = internal global i32 0, align 4
@serial_mouse_task.report = internal global %struct.TYPE_4__ zeroinitializer, align 4
@debug_mouse = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"serial_mouse: byte: %04X\0A\00", align 1
@MOUSE_BTN3 = common dso_local global i32 0, align 4
@MOUSE_BTN1 = common dso_local global i32 0, align 4
@MOUSE_BTN2 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @serial_mouse_task() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 (...) @serial_recv2()
  store i32 %2, i32* %1, align 4
  %3 = load i32, i32* %1, align 4
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %0
  br label %76

6:                                                ; preds = %0
  %7 = load i64, i64* @debug_mouse, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %6
  %10 = load i32, i32* %1, align 4
  %11 = call i32 @xprintf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %10)
  br label %12

12:                                               ; preds = %9, %6
  %13 = load i32, i32* %1, align 4
  %14 = and i32 %13, 64
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %12
  store i32 0, i32* @serial_mouse_task.buffer_cur, align 4
  br label %17

17:                                               ; preds = %16, %12
  %18 = load i32, i32* %1, align 4
  %19 = load i32, i32* @serial_mouse_task.buffer_cur, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [3 x i32], [3 x i32]* @serial_mouse_task.buffer, i64 0, i64 %20
  store i32 %18, i32* %21, align 4
  %22 = load i32, i32* @serial_mouse_task.buffer_cur, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %36

24:                                               ; preds = %17
  %25 = load i32, i32* @serial_mouse_task.buffer_cur, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [3 x i32], [3 x i32]* @serial_mouse_task.buffer, i64 0, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = icmp eq i32 %28, 32
  br i1 %29, label %30, label %36

30:                                               ; preds = %24
  %31 = load i32, i32* @MOUSE_BTN3, align 4
  %32 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @serial_mouse_task.report, i32 0, i32 2), align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @serial_mouse_task.report, i32 0, i32 2), align 4
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @serial_mouse_task.report, i32 0, i32 1), align 4
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @serial_mouse_task.report, i32 0, i32 0), align 4
  %34 = call i32 @print_usb_data(%struct.TYPE_4__* @serial_mouse_task.report)
  %35 = call i32 @host_mouse_send(%struct.TYPE_4__* @serial_mouse_task.report)
  br label %76

36:                                               ; preds = %24, %17
  %37 = load i32, i32* @serial_mouse_task.buffer_cur, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* @serial_mouse_task.buffer_cur, align 4
  %39 = load i32, i32* @serial_mouse_task.buffer_cur, align 4
  %40 = icmp slt i32 %39, 3
  br i1 %40, label %41, label %42

41:                                               ; preds = %36
  br label %76

42:                                               ; preds = %36
  store i32 0, i32* @serial_mouse_task.buffer_cur, align 4
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @serial_mouse_task.report, i32 0, i32 2), align 4
  %43 = load i32, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @serial_mouse_task.buffer, i64 0, i64 0), align 4
  %44 = and i32 %43, 32
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %42
  %47 = load i32, i32* @MOUSE_BTN1, align 4
  %48 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @serial_mouse_task.report, i32 0, i32 2), align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @serial_mouse_task.report, i32 0, i32 2), align 4
  br label %50

50:                                               ; preds = %46, %42
  %51 = load i32, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @serial_mouse_task.buffer, i64 0, i64 0), align 4
  %52 = and i32 %51, 16
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %50
  %55 = load i32, i32* @MOUSE_BTN2, align 4
  %56 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @serial_mouse_task.report, i32 0, i32 2), align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @serial_mouse_task.report, i32 0, i32 2), align 4
  br label %58

58:                                               ; preds = %54, %50
  %59 = load i32, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @serial_mouse_task.buffer, i64 0, i64 0), align 4
  %60 = shl i32 %59, 6
  %61 = load i32, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @serial_mouse_task.buffer, i64 0, i64 1), align 4
  %62 = or i32 %60, %61
  store i32 %62, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @serial_mouse_task.report, i32 0, i32 0), align 4
  %63 = load i32, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @serial_mouse_task.buffer, i64 0, i64 0), align 4
  %64 = shl i32 %63, 4
  %65 = and i32 %64, 192
  %66 = load i32, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @serial_mouse_task.buffer, i64 0, i64 2), align 4
  %67 = or i32 %65, %66
  store i32 %67, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @serial_mouse_task.report, i32 0, i32 1), align 4
  %68 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @serial_mouse_task.report, i32 0, i32 0), align 4
  %69 = call i8* @MAX(i32 %68, i32 -127)
  %70 = ptrtoint i8* %69 to i32
  store i32 %70, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @serial_mouse_task.report, i32 0, i32 0), align 4
  %71 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @serial_mouse_task.report, i32 0, i32 1), align 4
  %72 = call i8* @MAX(i32 %71, i32 -127)
  %73 = ptrtoint i8* %72 to i32
  store i32 %73, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @serial_mouse_task.report, i32 0, i32 1), align 4
  %74 = call i32 @print_usb_data(%struct.TYPE_4__* @serial_mouse_task.report)
  %75 = call i32 @host_mouse_send(%struct.TYPE_4__* @serial_mouse_task.report)
  br label %76

76:                                               ; preds = %58, %41, %30, %5
  ret void
}

declare dso_local i32 @serial_recv2(...) #1

declare dso_local i32 @xprintf(i8*, i32) #1

declare dso_local i32 @print_usb_data(%struct.TYPE_4__*) #1

declare dso_local i32 @host_mouse_send(%struct.TYPE_4__*) #1

declare dso_local i8* @MAX(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
