; ModuleID = '/home/carl/AnghaBench/openpilot/panda/board/extr_driversllcan.h_llcan_init.c'
source_filename = "/home/carl/AnghaBench/openpilot/panda/board/extr_driversllcan.h_llcan_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64, i64 }

@CAN_FMR_FINIT = common dso_local global i32 0, align 4
@CAN_IER_TMEIE = common dso_local global i32 0, align 4
@CAN_IER_FMPIE0 = common dso_local global i32 0, align 4
@CAN_IER_WKUIE = common dso_local global i32 0, align 4
@CAN1 = common dso_local global %struct.TYPE_8__* null, align 8
@CAN1_TX_IRQn = common dso_local global i32 0, align 4
@CAN1_RX0_IRQn = common dso_local global i32 0, align 4
@CAN1_SCE_IRQn = common dso_local global i32 0, align 4
@CAN2 = common dso_local global %struct.TYPE_8__* null, align 8
@CAN2_TX_IRQn = common dso_local global i32 0, align 4
@CAN2_RX0_IRQn = common dso_local global i32 0, align 4
@CAN2_SCE_IRQn = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Invalid CAN: initialization failed\0A\00", align 1
@CAN3 = common dso_local global %struct.TYPE_8__* null, align 8
@CAN3_RX0_IRQn = common dso_local global i32 0, align 4
@CAN3_SCE_IRQn = common dso_local global i32 0, align 4
@CAN3_TX_IRQn = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @llcan_init(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  %3 = load i32, i32* @CAN_FMR_FINIT, align 4
  %4 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 2
  %6 = load i32, i32* %5, align 8
  %7 = or i32 %6, %3
  store i32 %7, i32* %5, align 8
  %8 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 3
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i64 0
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 1
  store i64 0, i64* %12, align 8
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 3
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i64 0
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  store i64 0, i64* %17, align 8
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 3
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i64 14
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 1
  store i64 0, i64* %22, align 8
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 3
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i64 14
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  store i64 0, i64* %27, align 8
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = or i32 %30, 16385
  store i32 %31, i32* %29, align 8
  %32 = load i32, i32* @CAN_FMR_FINIT, align 4
  %33 = xor i32 %32, -1
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = and i32 %36, %33
  store i32 %37, i32* %35, align 8
  %38 = load i32, i32* @CAN_IER_TMEIE, align 4
  %39 = load i32, i32* @CAN_IER_FMPIE0, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* @CAN_IER_WKUIE, align 4
  %42 = or i32 %40, %41
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = or i32 %45, %42
  store i32 %46, i32* %44, align 4
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** @CAN1, align 8
  %49 = icmp eq %struct.TYPE_8__* %47, %48
  br i1 %49, label %50, label %57

50:                                               ; preds = %1
  %51 = load i32, i32* @CAN1_TX_IRQn, align 4
  %52 = call i32 @NVIC_EnableIRQ(i32 %51)
  %53 = load i32, i32* @CAN1_RX0_IRQn, align 4
  %54 = call i32 @NVIC_EnableIRQ(i32 %53)
  %55 = load i32, i32* @CAN1_SCE_IRQn, align 4
  %56 = call i32 @NVIC_EnableIRQ(i32 %55)
  br label %71

57:                                               ; preds = %1
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** @CAN2, align 8
  %60 = icmp eq %struct.TYPE_8__* %58, %59
  br i1 %60, label %61, label %68

61:                                               ; preds = %57
  %62 = load i32, i32* @CAN2_TX_IRQn, align 4
  %63 = call i32 @NVIC_EnableIRQ(i32 %62)
  %64 = load i32, i32* @CAN2_RX0_IRQn, align 4
  %65 = call i32 @NVIC_EnableIRQ(i32 %64)
  %66 = load i32, i32* @CAN2_SCE_IRQn, align 4
  %67 = call i32 @NVIC_EnableIRQ(i32 %66)
  br label %70

68:                                               ; preds = %57
  %69 = call i32 @puts(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %70

70:                                               ; preds = %68, %61
  br label %71

71:                                               ; preds = %70, %50
  ret void
}

declare dso_local i32 @NVIC_EnableIRQ(i32) #1

declare dso_local i32 @puts(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
