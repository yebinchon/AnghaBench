; ModuleID = '/home/carl/AnghaBench/openpilot/panda/board/pedal/extr_main.c_CAN1_RX0_IRQHandler.c'
source_filename = "/home/carl/AnghaBench/openpilot/panda/board/pedal/extr_main.c_CAN1_RX0_IRQHandler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@CAN = common dso_local global %struct.TYPE_6__* null, align 8
@CAN_RF0R_FMP0 = common dso_local global i32 0, align 4
@CAN_GAS_INPUT = common dso_local global i32 0, align 4
@ENTER_SOFTLOADER_MAGIC = common dso_local global i32 0, align 4
@enter_bootloader_mode = common dso_local global i32 0, align 4
@ENTER_BOOTLOADER_MAGIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Failed entering Softloader or Bootloader\0A\00", align 1
@COUNTER_CYCLE = common dso_local global i32 0, align 4
@CAN_GAS_SIZE = common dso_local global i64 0, align 8
@current_index = common dso_local global i32 0, align 4
@gas_set_0 = common dso_local global i32 0, align 4
@gas_set_1 = common dso_local global i32 0, align 4
@NO_FAULT = common dso_local global i32 0, align 4
@state = common dso_local global i32 0, align 4
@FAULT_INVALID = common dso_local global i32 0, align 4
@timeout = common dso_local global i64 0, align 8
@FAULT_BAD_CHECKSUM = common dso_local global i32 0, align 4
@CAN_RF0R_RFOM0 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CAN1_RX0_IRQHandler() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [8 x i32], align 16
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  br label %8

8:                                                ; preds = %134, %0
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** @CAN, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @CAN_RF0R_FMP0, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %140

15:                                               ; preds = %8
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** @CAN, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 1
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i64 0
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = ashr i32 %21, 21
  store i32 %22, i32* %1, align 4
  %23 = load i32, i32* %1, align 4
  %24 = load i32, i32* @CAN_GAS_INPUT, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %134

26:                                               ; preds = %15
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** @CAN, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 1
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i64 0
  %31 = call i32 @GET_BYTES_04(%struct.TYPE_5__* %30)
  %32 = icmp eq i32 %31, -559023410
  br i1 %32, label %33, label %57

33:                                               ; preds = %26
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** @CAN, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 1
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i64 0
  %38 = call i32 @GET_BYTES_48(%struct.TYPE_5__* %37)
  %39 = icmp eq i32 %38, 179309342
  br i1 %39, label %40, label %43

40:                                               ; preds = %33
  %41 = load i32, i32* @ENTER_SOFTLOADER_MAGIC, align 4
  store i32 %41, i32* @enter_bootloader_mode, align 4
  %42 = call i32 (...) @NVIC_SystemReset()
  br label %56

43:                                               ; preds = %33
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** @CAN, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 1
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i64 0
  %48 = call i32 @GET_BYTES_48(%struct.TYPE_5__* %47)
  %49 = icmp eq i32 %48, 45091614
  br i1 %49, label %50, label %53

50:                                               ; preds = %43
  %51 = load i32, i32* @ENTER_BOOTLOADER_MAGIC, align 4
  store i32 %51, i32* @enter_bootloader_mode, align 4
  %52 = call i32 (...) @NVIC_SystemReset()
  br label %55

53:                                               ; preds = %43
  %54 = call i32 @puts(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  br label %55

55:                                               ; preds = %53, %50
  br label %56

56:                                               ; preds = %55, %40
  br label %57

57:                                               ; preds = %56, %26
  store i32 0, i32* %3, align 4
  br label %58

58:                                               ; preds = %71, %57
  %59 = load i32, i32* %3, align 4
  %60 = icmp slt i32 %59, 8
  br i1 %60, label %61, label %74

61:                                               ; preds = %58
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** @CAN, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 1
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i64 0
  %66 = load i32, i32* %3, align 4
  %67 = call i32 @GET_BYTE(%struct.TYPE_5__* %65, i32 %66)
  %68 = load i32, i32* %3, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds [8 x i32], [8 x i32]* %2, i64 0, i64 %69
  store i32 %67, i32* %70, align 4
  br label %71

71:                                               ; preds = %61
  %72 = load i32, i32* %3, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %3, align 4
  br label %58

74:                                               ; preds = %58
  %75 = getelementptr inbounds [8 x i32], [8 x i32]* %2, i64 0, i64 0
  %76 = load i32, i32* %75, align 16
  %77 = shl i32 %76, 8
  %78 = getelementptr inbounds [8 x i32], [8 x i32]* %2, i64 0, i64 1
  %79 = load i32, i32* %78, align 4
  %80 = or i32 %77, %79
  store i32 %80, i32* %4, align 4
  %81 = getelementptr inbounds [8 x i32], [8 x i32]* %2, i64 0, i64 2
  %82 = load i32, i32* %81, align 8
  %83 = shl i32 %82, 8
  %84 = getelementptr inbounds [8 x i32], [8 x i32]* %2, i64 0, i64 3
  %85 = load i32, i32* %84, align 4
  %86 = or i32 %83, %85
  store i32 %86, i32* %5, align 4
  %87 = getelementptr inbounds [8 x i32], [8 x i32]* %2, i64 0, i64 4
  %88 = load i32, i32* %87, align 16
  %89 = ashr i32 %88, 7
  %90 = and i32 %89, 1
  %91 = icmp ne i32 %90, 0
  %92 = zext i1 %91 to i32
  store i32 %92, i32* %6, align 4
  %93 = getelementptr inbounds [8 x i32], [8 x i32]* %2, i64 0, i64 4
  %94 = load i32, i32* %93, align 16
  %95 = load i32, i32* @COUNTER_CYCLE, align 4
  %96 = and i32 %94, %95
  store i32 %96, i32* %7, align 4
  %97 = getelementptr inbounds [8 x i32], [8 x i32]* %2, i64 0, i64 0
  %98 = load i64, i64* @CAN_GAS_SIZE, align 8
  %99 = sub nsw i64 %98, 1
  %100 = call i32 @pedal_checksum(i32* %97, i64 %99)
  %101 = getelementptr inbounds [8 x i32], [8 x i32]* %2, i64 0, i64 5
  %102 = load i32, i32* %101, align 4
  %103 = icmp eq i32 %100, %102
  br i1 %103, label %104, label %131

104:                                              ; preds = %74
  %105 = load i32, i32* @current_index, align 4
  %106 = add i32 %105, 1
  %107 = load i32, i32* @COUNTER_CYCLE, align 4
  %108 = and i32 %106, %107
  %109 = load i32, i32* %7, align 4
  %110 = icmp eq i32 %108, %109
  br i1 %110, label %111, label %129

111:                                              ; preds = %104
  %112 = load i32, i32* %6, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %117

114:                                              ; preds = %111
  %115 = load i32, i32* %4, align 4
  store i32 %115, i32* @gas_set_0, align 4
  %116 = load i32, i32* %5, align 4
  store i32 %116, i32* @gas_set_1, align 4
  br label %128

117:                                              ; preds = %111
  %118 = load i32, i32* %4, align 4
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %125

120:                                              ; preds = %117
  %121 = load i32, i32* %5, align 4
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %123, label %125

123:                                              ; preds = %120
  %124 = load i32, i32* @NO_FAULT, align 4
  store i32 %124, i32* @state, align 4
  br label %127

125:                                              ; preds = %120, %117
  %126 = load i32, i32* @FAULT_INVALID, align 4
  store i32 %126, i32* @state, align 4
  br label %127

127:                                              ; preds = %125, %123
  store i32 0, i32* @gas_set_0, align 4
  store i32 0, i32* @gas_set_1, align 4
  br label %128

128:                                              ; preds = %127, %114
  store i64 0, i64* @timeout, align 8
  br label %129

129:                                              ; preds = %128, %104
  %130 = load i32, i32* %7, align 4
  store i32 %130, i32* @current_index, align 4
  br label %133

131:                                              ; preds = %74
  %132 = load i32, i32* @FAULT_BAD_CHECKSUM, align 4
  store i32 %132, i32* @state, align 4
  br label %133

133:                                              ; preds = %131, %129
  br label %134

134:                                              ; preds = %133, %15
  %135 = load i32, i32* @CAN_RF0R_RFOM0, align 4
  %136 = load %struct.TYPE_6__*, %struct.TYPE_6__** @CAN, align 8
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = or i32 %138, %135
  store i32 %139, i32* %137, align 8
  br label %8

140:                                              ; preds = %8
  ret void
}

declare dso_local i32 @GET_BYTES_04(%struct.TYPE_5__*) #1

declare dso_local i32 @GET_BYTES_48(%struct.TYPE_5__*) #1

declare dso_local i32 @NVIC_SystemReset(...) #1

declare dso_local i32 @puts(i8*) #1

declare dso_local i32 @GET_BYTE(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @pedal_checksum(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
