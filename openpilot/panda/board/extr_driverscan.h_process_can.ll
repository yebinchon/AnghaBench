; ModuleID = '/home/carl/AnghaBench/openpilot/panda/board/extr_driverscan.h_process_can.c'
source_filename = "/home/carl/AnghaBench/openpilot/panda/board/extr_driverscan.h_process_can.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32, i32, i32 }
%struct.TYPE_9__ = type { i32, i32, i32, i32 }

@CAN_TSR_TME0 = common dso_local global i32 0, align 4
@CAN_TSR_RQCP0 = common dso_local global i32 0, align 4
@can_txd_cnt = common dso_local global i32 0, align 4
@CAN_TSR_TXOK0 = common dso_local global i32 0, align 4
@CAN_BUS_RET_FLAG = common dso_local global i32 0, align 4
@can_rx_q = common dso_local global i32 0, align 4
@can_send_errs = common dso_local global i32 0, align 4
@CAN_TSR_TERR0 = common dso_local global i32 0, align 4
@CAN_TSR_ALST0 = common dso_local global i32 0, align 4
@can_queues = common dso_local global i32* null, align 8
@can_tx_cnt = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @process_can(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_9__, align 4
  %6 = alloca %struct.TYPE_9__, align 4
  store i32 %0, i32* %2, align 4
  %7 = load i32, i32* %2, align 4
  %8 = icmp ne i32 %7, 255
  br i1 %8, label %9, label %147

9:                                                ; preds = %1
  %10 = call i32 (...) @ENTER_CRITICAL()
  %11 = load i32, i32* %2, align 4
  %12 = call %struct.TYPE_8__* @CANIF_FROM_CAN_NUM(i32 %11)
  store %struct.TYPE_8__* %12, %struct.TYPE_8__** %3, align 8
  %13 = load i32, i32* %2, align 4
  %14 = call i32 @BUS_NUM_FROM_CAN_NUM(i32 %13)
  store i32 %14, i32* %4, align 4
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @CAN_TSR_TME0, align 4
  %19 = and i32 %17, %18
  %20 = load i32, i32* @CAN_TSR_TME0, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %145

22:                                               ; preds = %9
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @CAN_TSR_RQCP0, align 4
  %27 = and i32 %25, %26
  %28 = load i32, i32* @CAN_TSR_RQCP0, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %105

30:                                               ; preds = %22
  %31 = load i32, i32* @can_txd_cnt, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* @can_txd_cnt, align 4
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @CAN_TSR_TXOK0, align 4
  %37 = and i32 %35, %36
  %38 = load i32, i32* @CAN_TSR_TXOK0, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %81

40:                                               ; preds = %30
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 1
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i64 0
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 1
  store i32 %46, i32* %47, align 4
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 1
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i64 0
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = and i32 %53, -65521
  %55 = load i32, i32* @CAN_BUS_RET_FLAG, align 4
  %56 = load i32, i32* %4, align 4
  %57 = or i32 %55, %56
  %58 = shl i32 %57, 4
  %59 = or i32 %54, %58
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 0
  store i32 %59, i32* %60, align 4
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 1
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i64 0
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 4
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 3
  store i32 %66, i32* %67, align 4
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 1
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i64 0
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 2
  store i32 %73, i32* %74, align 4
  %75 = call i64 @can_push(i32* @can_rx_q, %struct.TYPE_9__* %6)
  %76 = icmp ne i64 %75, 0
  %77 = zext i1 %76 to i64
  %78 = select i1 %76, i32 0, i32 1
  %79 = load i32, i32* @can_send_errs, align 4
  %80 = add i32 %79, %78
  store i32 %80, i32* @can_send_errs, align 4
  br label %81

81:                                               ; preds = %40, %30
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* @CAN_TSR_TERR0, align 4
  %86 = and i32 %84, %85
  %87 = load i32, i32* @CAN_TSR_TERR0, align 4
  %88 = icmp eq i32 %86, %87
  br i1 %88, label %89, label %90

89:                                               ; preds = %81
  br label %90

90:                                               ; preds = %89, %81
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* @CAN_TSR_ALST0, align 4
  %95 = and i32 %93, %94
  %96 = load i32, i32* @CAN_TSR_ALST0, align 4
  %97 = icmp eq i32 %95, %96
  br i1 %97, label %98, label %99

98:                                               ; preds = %90
  br label %99

99:                                               ; preds = %98, %90
  %100 = load i32, i32* @CAN_TSR_RQCP0, align 4
  %101 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = or i32 %103, %100
  store i32 %104, i32* %102, align 8
  br label %105

105:                                              ; preds = %99, %22
  %106 = load i32*, i32** @can_queues, align 8
  %107 = load i32, i32* %4, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %106, i64 %108
  %110 = load i32, i32* %109, align 4
  %111 = call i64 @can_pop(i32 %110, %struct.TYPE_9__* %5)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %144

113:                                              ; preds = %105
  %114 = load i32, i32* @can_tx_cnt, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* @can_tx_cnt, align 4
  %116 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 3
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i32 0, i32 1
  %120 = load %struct.TYPE_7__*, %struct.TYPE_7__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %120, i64 0
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 3
  store i32 %117, i32* %122, align 4
  %123 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 2
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %126 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %125, i32 0, i32 1
  %127 = load %struct.TYPE_7__*, %struct.TYPE_7__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %127, i64 0
  %129 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %128, i32 0, i32 2
  store i32 %124, i32* %129, align 4
  %130 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %133 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %132, i32 0, i32 1
  %134 = load %struct.TYPE_7__*, %struct.TYPE_7__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %134, i64 0
  %136 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %135, i32 0, i32 0
  store i32 %131, i32* %136, align 4
  %137 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %140 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %139, i32 0, i32 1
  %141 = load %struct.TYPE_7__*, %struct.TYPE_7__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %141, i64 0
  %143 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %142, i32 0, i32 1
  store i32 %138, i32* %143, align 4
  br label %144

144:                                              ; preds = %113, %105
  br label %145

145:                                              ; preds = %144, %9
  %146 = call i32 (...) @EXIT_CRITICAL()
  br label %147

147:                                              ; preds = %145, %1
  ret void
}

declare dso_local i32 @ENTER_CRITICAL(...) #1

declare dso_local %struct.TYPE_8__* @CANIF_FROM_CAN_NUM(i32) #1

declare dso_local i32 @BUS_NUM_FROM_CAN_NUM(i32) #1

declare dso_local i64 @can_push(i32*, %struct.TYPE_9__*) #1

declare dso_local i64 @can_pop(i32, %struct.TYPE_9__*) #1

declare dso_local i32 @EXIT_CRITICAL(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
