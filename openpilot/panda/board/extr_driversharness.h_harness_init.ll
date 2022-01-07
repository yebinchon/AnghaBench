; ModuleID = '/home/carl/AnghaBench/openpilot/panda/board/extr_driversharness.h_harness_init.c'
source_filename = "/home/carl/AnghaBench/openpilot/panda/board/extr_driversharness.h_harness_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__*, i32 (i32, i32)* }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }

@current_board = common dso_local global %struct.TYPE_4__* null, align 8
@LED_BLUE = common dso_local global i32 0, align 4
@HARNESS_STATUS_NC = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [39 x i8] c"detected car harness with orientation \00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@car_harness_status = common dso_local global i64 0, align 8
@MODE_INPUT = common dso_local global i32 0, align 4
@HARNESS_STATUS_NORMAL = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [31 x i8] c"failed to detect car harness!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @harness_init() #0 {
  %1 = alloca i64, align 8
  %2 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current_board, align 8
  %3 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 1
  %4 = load i32 (i32, i32)*, i32 (i32, i32)** %3, align 8
  %5 = load i32, i32* @LED_BLUE, align 4
  %6 = call i32 %4(i32 %5, i32 1)
  %7 = call i32 @delay(i32 10000000)
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current_board, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 1
  %10 = load i32 (i32, i32)*, i32 (i32, i32)** %9, align 8
  %11 = load i32, i32* @LED_BLUE, align 4
  %12 = call i32 %10(i32 %11, i32 0)
  %13 = call i64 (...) @harness_detect_orientation()
  store i64 %13, i64* %1, align 8
  %14 = load i64, i64* %1, align 8
  %15 = load i64, i64* @HARNESS_STATUS_NC, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %79

17:                                               ; preds = %0
  %18 = call i32 @puts(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %19 = load i64, i64* %1, align 8
  %20 = call i32 @puth2(i64 %19)
  %21 = call i32 @puts(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %22 = load i64, i64* %1, align 8
  store i64 %22, i64* @car_harness_status, align 8
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current_board, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current_board, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @MODE_INPUT, align 4
  %34 = call i32 @set_gpio_mode(i32 %27, i32 %32, i32 %33)
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current_board, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current_board, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @MODE_INPUT, align 4
  %46 = call i32 @set_gpio_mode(i32 %39, i32 %44, i32 %45)
  %47 = load i64, i64* @car_harness_status, align 8
  %48 = load i64, i64* @HARNESS_STATUS_NORMAL, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %63

50:                                               ; preds = %17
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current_board, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current_board, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @MODE_INPUT, align 4
  %62 = call i32 @set_gpio_mode(i32 %55, i32 %60, i32 %61)
  br label %76

63:                                               ; preds = %17
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current_board, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current_board, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @MODE_INPUT, align 4
  %75 = call i32 @set_gpio_mode(i32 %68, i32 %73, i32 %74)
  br label %76

76:                                               ; preds = %63, %50
  %77 = call i32 @set_intercept_relay(i32 0)
  %78 = call i32 (...) @harness_setup_ignition_interrupts()
  br label %81

79:                                               ; preds = %0
  %80 = call i32 @puts(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  br label %81

81:                                               ; preds = %79, %76
  ret void
}

declare dso_local i32 @delay(i32) #1

declare dso_local i64 @harness_detect_orientation(...) #1

declare dso_local i32 @puts(i8*) #1

declare dso_local i32 @puth2(i64) #1

declare dso_local i32 @set_gpio_mode(i32, i32, i32) #1

declare dso_local i32 @set_intercept_relay(i32) #1

declare dso_local i32 @harness_setup_ignition_interrupts(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
