; ModuleID = '/home/carl/AnghaBench/openpilot/panda/board/extr_driverscan.h_can_rx.c'
source_filename = "/home/carl/AnghaBench/openpilot/panda/board/extr_driverscan.h_can_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32 (i32, i32)* }
%struct.TYPE_12__ = type { i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32, i32, i32, i32 }
%struct.TYPE_13__ = type { i32, i32, i32, i32 }

@CAN_RF0R_FMP0 = common dso_local global i32 0, align 4
@can_rx_cnt = common dso_local global i32 0, align 4
@pending_can_live = common dso_local global i32 0, align 4
@can_forwarding = common dso_local global i32* null, align 8
@current_board = common dso_local global %struct.TYPE_14__* null, align 8
@LED_BLUE = common dso_local global i32 0, align 4
@can_rx_q = common dso_local global i32 0, align 4
@can_send_errs = common dso_local global i32 0, align 4
@CAN_RF0R_RFOM0 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @can_rx(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_13__, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_13__, align 4
  store i32 %0, i32* %2, align 4
  %8 = load i32, i32* %2, align 4
  %9 = call %struct.TYPE_12__* @CANIF_FROM_CAN_NUM(i32 %8)
  store %struct.TYPE_12__* %9, %struct.TYPE_12__** %3, align 8
  %10 = load i32, i32* %2, align 4
  %11 = call i32 @BUS_NUM_FROM_CAN_NUM(i32 %10)
  store i32 %11, i32* %4, align 4
  br label %12

12:                                               ; preds = %92, %1
  %13 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @CAN_RF0R_FMP0, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %111

19:                                               ; preds = %12
  %20 = load i32, i32* @can_rx_cnt, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* @can_rx_cnt, align 4
  store i32 1, i32* @pending_can_live, align 4
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 1
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i64 0
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %5, i32 0, i32 0
  store i32 %27, i32* %28, align 4
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 1
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i64 0
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %5, i32 0, i32 1
  store i32 %34, i32* %35, align 4
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 1
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i64 0
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %5, i32 0, i32 3
  store i32 %41, i32* %42, align 4
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 1
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i64 0
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %5, i32 0, i32 2
  store i32 %48, i32* %49, align 4
  %50 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %5, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = and i32 %51, -65521
  %53 = load i32, i32* %4, align 4
  %54 = shl i32 %53, 4
  %55 = or i32 %52, %54
  %56 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %5, i32 0, i32 1
  store i32 %55, i32* %56, align 4
  %57 = load i32*, i32** @can_forwarding, align 8
  %58 = load i32, i32* %4, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = icmp ne i32 %61, -1
  br i1 %62, label %63, label %69

63:                                               ; preds = %19
  %64 = load i32*, i32** @can_forwarding, align 8
  %65 = load i32, i32* %4, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  %68 = load i32, i32* %67, align 4
  br label %72

69:                                               ; preds = %19
  %70 = load i32, i32* %4, align 4
  %71 = call i32 @safety_fwd_hook(i32 %70, %struct.TYPE_13__* %5)
  br label %72

72:                                               ; preds = %69, %63
  %73 = phi i32 [ %68, %63 ], [ %71, %69 ]
  store i32 %73, i32* %6, align 4
  %74 = load i32, i32* %6, align 4
  %75 = icmp ne i32 %74, -1
  br i1 %75, label %76, label %92

76:                                               ; preds = %72
  %77 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %5, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = or i32 %78, 1
  %80 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %7, i32 0, i32 0
  store i32 %79, i32* %80, align 4
  %81 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %5, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %7, i32 0, i32 1
  store i32 %82, i32* %83, align 4
  %84 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %5, i32 0, i32 3
  %85 = load i32, i32* %84, align 4
  %86 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %7, i32 0, i32 3
  store i32 %85, i32* %86, align 4
  %87 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %5, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %7, i32 0, i32 2
  store i32 %88, i32* %89, align 4
  %90 = load i32, i32* %6, align 4
  %91 = call i32 @can_send(%struct.TYPE_13__* %7, i32 %90)
  br label %92

92:                                               ; preds = %76, %72
  %93 = call i32 @safety_rx_hook(%struct.TYPE_13__* %5)
  %94 = call i32 @ignition_can_hook(%struct.TYPE_13__* %5)
  %95 = load %struct.TYPE_14__*, %struct.TYPE_14__** @current_board, align 8
  %96 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %95, i32 0, i32 0
  %97 = load i32 (i32, i32)*, i32 (i32, i32)** %96, align 8
  %98 = load i32, i32* @LED_BLUE, align 4
  %99 = call i32 %97(i32 %98, i32 1)
  %100 = call i64 @can_push(i32* @can_rx_q, %struct.TYPE_13__* %5)
  %101 = icmp ne i64 %100, 0
  %102 = zext i1 %101 to i64
  %103 = select i1 %101, i32 0, i32 1
  %104 = load i32, i32* @can_send_errs, align 4
  %105 = add i32 %104, %103
  store i32 %105, i32* @can_send_errs, align 4
  %106 = load i32, i32* @CAN_RF0R_RFOM0, align 4
  %107 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %108 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = or i32 %109, %106
  store i32 %110, i32* %108, align 8
  br label %12

111:                                              ; preds = %12
  ret void
}

declare dso_local %struct.TYPE_12__* @CANIF_FROM_CAN_NUM(i32) #1

declare dso_local i32 @BUS_NUM_FROM_CAN_NUM(i32) #1

declare dso_local i32 @safety_fwd_hook(i32, %struct.TYPE_13__*) #1

declare dso_local i32 @can_send(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @safety_rx_hook(%struct.TYPE_13__*) #1

declare dso_local i32 @ignition_can_hook(%struct.TYPE_13__*) #1

declare dso_local i64 @can_push(i32*, %struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
