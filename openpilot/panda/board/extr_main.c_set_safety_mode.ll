; ModuleID = '/home/carl/AnghaBench/openpilot/panda/board/extr_main.c_set_safety_mode.c'
source_filename = "/home/carl/AnghaBench/openpilot/panda/board/extr_main.c_set_safety_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (i32)* }

@.str = private unnamed_addr constant [31 x i8] c"Error: safety set mode failed\0A\00", align 1
@current_board = common dso_local global %struct.TYPE_2__* null, align 8
@CAN_MODE_NORMAL = common dso_local global i32 0, align 4
@ALL_CAN_SILENT = common dso_local global i32 0, align 4
@can_silent = common dso_local global i32 0, align 4
@heartbeat_counter = common dso_local global i32 0, align 4
@CAN_MODE_OBD_CAN2 = common dso_local global i32 0, align 4
@ALL_CAN_LIVE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_safety_mode(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* %4, align 4
  %8 = call i32 @safety_set_mode(i32 %6, i32 %7)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = icmp eq i32 %9, -1
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = call i32 @puts(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %53

13:                                               ; preds = %2
  %14 = load i32, i32* %3, align 4
  switch i32 %14, label %39 [
    i32 128, label %15
    i32 129, label %27
  ]

15:                                               ; preds = %13
  %16 = call i32 @set_intercept_relay(i32 0)
  %17 = call i32 (...) @board_has_obd()
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %15
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current_board, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32 (i32)*, i32 (i32)** %21, align 8
  %23 = load i32, i32* @CAN_MODE_NORMAL, align 4
  %24 = call i32 %22(i32 %23)
  br label %25

25:                                               ; preds = %19, %15
  %26 = load i32, i32* @ALL_CAN_SILENT, align 4
  store i32 %26, i32* @can_silent, align 4
  br label %51

27:                                               ; preds = %13
  %28 = call i32 @set_intercept_relay(i32 0)
  store i32 0, i32* @heartbeat_counter, align 4
  %29 = call i32 (...) @board_has_obd()
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %27
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current_board, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32 (i32)*, i32 (i32)** %33, align 8
  %35 = load i32, i32* @CAN_MODE_OBD_CAN2, align 4
  %36 = call i32 %34(i32 %35)
  br label %37

37:                                               ; preds = %31, %27
  %38 = load i32, i32* @ALL_CAN_LIVE, align 4
  store i32 %38, i32* @can_silent, align 4
  br label %51

39:                                               ; preds = %13
  %40 = call i32 @set_intercept_relay(i32 1)
  store i32 0, i32* @heartbeat_counter, align 4
  %41 = call i32 (...) @board_has_obd()
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %39
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current_board, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32 (i32)*, i32 (i32)** %45, align 8
  %47 = load i32, i32* @CAN_MODE_NORMAL, align 4
  %48 = call i32 %46(i32 %47)
  br label %49

49:                                               ; preds = %43, %39
  %50 = load i32, i32* @ALL_CAN_LIVE, align 4
  store i32 %50, i32* @can_silent, align 4
  br label %51

51:                                               ; preds = %49, %37, %25
  %52 = call i32 (...) @can_init_all()
  br label %53

53:                                               ; preds = %51, %11
  ret void
}

declare dso_local i32 @safety_set_mode(i32, i32) #1

declare dso_local i32 @puts(i8*) #1

declare dso_local i32 @set_intercept_relay(i32) #1

declare dso_local i32 @board_has_obd(...) #1

declare dso_local i32 @can_init_all(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
