; ModuleID = '/home/carl/AnghaBench/openpilot/panda/board/pedal/extr_main.c_TIM3_IRQHandler.c'
source_filename = "/home/carl/AnghaBench/openpilot/panda/board/pedal/extr_main.c_TIM3_IRQHandler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32 (i32, i32)* }
%struct.TYPE_7__ = type { i32, i64 }

@CAN = common dso_local global %struct.TYPE_8__* null, align 8
@CAN_TSR_TME0 = common dso_local global i32 0, align 4
@pdl0 = common dso_local global i32 0, align 4
@pdl1 = common dso_local global i32 0, align 4
@state = common dso_local global i32 0, align 4
@pkt_idx = common dso_local global i32 0, align 4
@CAN_GAS_SIZE = common dso_local global i64 0, align 8
@CAN_GAS_OUTPUT = common dso_local global i32 0, align 4
@COUNTER_CYCLE = common dso_local global i32 0, align 4
@FAULT_SEND = common dso_local global i32 0, align 4
@current_board = common dso_local global %struct.TYPE_6__* null, align 8
@LED_GREEN = common dso_local global i32 0, align 4
@led_value = common dso_local global i32 0, align 4
@TIM3 = common dso_local global %struct.TYPE_7__* null, align 8
@timeout = common dso_local global i64 0, align 8
@MAX_TIMEOUT = common dso_local global i64 0, align 8
@FAULT_TIMEOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @TIM3_IRQHandler() #0 {
  %1 = alloca [8 x i32], align 16
  %2 = load %struct.TYPE_8__*, %struct.TYPE_8__** @CAN, align 8
  %3 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %2, i32 0, i32 0
  %4 = load i32, i32* %3, align 8
  %5 = load i32, i32* @CAN_TSR_TME0, align 4
  %6 = and i32 %4, %5
  %7 = load i32, i32* @CAN_TSR_TME0, align 4
  %8 = icmp eq i32 %6, %7
  br i1 %8, label %9, label %85

9:                                                ; preds = %0
  %10 = load i32, i32* @pdl0, align 4
  %11 = ashr i32 %10, 8
  %12 = and i32 %11, 255
  %13 = getelementptr inbounds [8 x i32], [8 x i32]* %1, i64 0, i64 0
  store i32 %12, i32* %13, align 16
  %14 = load i32, i32* @pdl0, align 4
  %15 = ashr i32 %14, 0
  %16 = and i32 %15, 255
  %17 = getelementptr inbounds [8 x i32], [8 x i32]* %1, i64 0, i64 1
  store i32 %16, i32* %17, align 4
  %18 = load i32, i32* @pdl1, align 4
  %19 = ashr i32 %18, 8
  %20 = and i32 %19, 255
  %21 = getelementptr inbounds [8 x i32], [8 x i32]* %1, i64 0, i64 2
  store i32 %20, i32* %21, align 8
  %22 = load i32, i32* @pdl1, align 4
  %23 = ashr i32 %22, 0
  %24 = and i32 %23, 255
  %25 = getelementptr inbounds [8 x i32], [8 x i32]* %1, i64 0, i64 3
  store i32 %24, i32* %25, align 4
  %26 = load i32, i32* @state, align 4
  %27 = and i32 %26, 15
  %28 = shl i32 %27, 4
  %29 = load i32, i32* @pkt_idx, align 4
  %30 = or i32 %28, %29
  %31 = getelementptr inbounds [8 x i32], [8 x i32]* %1, i64 0, i64 4
  store i32 %30, i32* %31, align 16
  %32 = getelementptr inbounds [8 x i32], [8 x i32]* %1, i64 0, i64 0
  %33 = load i64, i64* @CAN_GAS_SIZE, align 8
  %34 = sub nsw i64 %33, 1
  %35 = call i32 @pedal_checksum(i32* %32, i64 %34)
  %36 = getelementptr inbounds [8 x i32], [8 x i32]* %1, i64 0, i64 5
  store i32 %35, i32* %36, align 4
  %37 = getelementptr inbounds [8 x i32], [8 x i32]* %1, i64 0, i64 0
  %38 = load i32, i32* %37, align 16
  %39 = getelementptr inbounds [8 x i32], [8 x i32]* %1, i64 0, i64 1
  %40 = load i32, i32* %39, align 4
  %41 = shl i32 %40, 8
  %42 = or i32 %38, %41
  %43 = getelementptr inbounds [8 x i32], [8 x i32]* %1, i64 0, i64 2
  %44 = load i32, i32* %43, align 8
  %45 = shl i32 %44, 16
  %46 = or i32 %42, %45
  %47 = getelementptr inbounds [8 x i32], [8 x i32]* %1, i64 0, i64 3
  %48 = load i32, i32* %47, align 4
  %49 = shl i32 %48, 24
  %50 = or i32 %46, %49
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** @CAN, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 1
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i64 0
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  store i32 %50, i32* %55, align 4
  %56 = getelementptr inbounds [8 x i32], [8 x i32]* %1, i64 0, i64 4
  %57 = load i32, i32* %56, align 16
  %58 = getelementptr inbounds [8 x i32], [8 x i32]* %1, i64 0, i64 5
  %59 = load i32, i32* %58, align 4
  %60 = shl i32 %59, 8
  %61 = or i32 %57, %60
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** @CAN, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 1
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i64 0
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 1
  store i32 %61, i32* %66, align 4
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** @CAN, align 8
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 1
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i64 0
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 2
  store i32 6, i32* %71, align 4
  %72 = load i32, i32* @CAN_GAS_OUTPUT, align 4
  %73 = shl i32 %72, 21
  %74 = or i32 %73, 1
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** @CAN, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 1
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i64 0
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 3
  store i32 %74, i32* %79, align 4
  %80 = load i32, i32* @pkt_idx, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* @pkt_idx, align 4
  %82 = load i32, i32* @COUNTER_CYCLE, align 4
  %83 = load i32, i32* @pkt_idx, align 4
  %84 = and i32 %83, %82
  store i32 %84, i32* @pkt_idx, align 4
  br label %87

85:                                               ; preds = %0
  %86 = load i32, i32* @FAULT_SEND, align 4
  store i32 %86, i32* @state, align 4
  br label %87

87:                                               ; preds = %85, %9
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current_board, align 8
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 0
  %90 = load i32 (i32, i32)*, i32 (i32, i32)** %89, align 8
  %91 = load i32, i32* @LED_GREEN, align 4
  %92 = load i32, i32* @led_value, align 4
  %93 = call i32 %90(i32 %91, i32 %92)
  %94 = load i32, i32* @led_value, align 4
  %95 = icmp ne i32 %94, 0
  %96 = xor i1 %95, true
  %97 = zext i1 %96 to i32
  store i32 %97, i32* @led_value, align 4
  %98 = load %struct.TYPE_7__*, %struct.TYPE_7__** @TIM3, align 8
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 1
  store i64 0, i64* %99, align 8
  %100 = load i64, i64* @timeout, align 8
  %101 = load i64, i64* @MAX_TIMEOUT, align 8
  %102 = icmp eq i64 %100, %101
  br i1 %102, label %103, label %105

103:                                              ; preds = %87
  %104 = load i32, i32* @FAULT_TIMEOUT, align 4
  store i32 %104, i32* @state, align 4
  br label %108

105:                                              ; preds = %87
  %106 = load i64, i64* @timeout, align 8
  %107 = add nsw i64 %106, 1
  store i64 %107, i64* @timeout, align 8
  br label %108

108:                                              ; preds = %105, %103
  ret void
}

declare dso_local i32 @pedal_checksum(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
