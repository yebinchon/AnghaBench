; ModuleID = '/home/carl/AnghaBench/micropython/ports/stm32/extr_stm32_it.c_HardFault_C_Handler.c'
source_filename = "/home/carl/AnghaBench/micropython/ports/stm32/extr_stm32_it.c_HardFault_C_Handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@pyb_hard_fault_debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"HardFault\0D\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"R0    \00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"R1    \00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"R2    \00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"R3    \00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"R12   \00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"SP    \00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"LR    \00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"PC    \00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"XPSR  \00", align 1
@_ram_start = common dso_local global i32 0, align 4
@_ram_end = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [9 x i8] c"Stack:\0D\0A\00", align 1
@_estack = common dso_local global i32 0, align 4
@_sstack = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [3 x i8] c"  \00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"HardFault\00", align 1
@SCB = common dso_local global %struct.TYPE_5__* null, align 8
@pyb_usb_flags = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @HardFault_C_Handler(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  %5 = load i32, i32* @pyb_hard_fault_debug, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  %8 = call i32 (...) @powerctrl_mcu_reset()
  br label %9

9:                                                ; preds = %7, %1
  %10 = call i32 @mp_hal_stdout_tx_str(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @print_reg(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %13)
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @print_reg(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %17)
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @print_reg(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 %21)
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @print_reg(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32 %25)
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @print_reg(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i32 %29)
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %32 = ptrtoint %struct.TYPE_4__* %31 to i32
  %33 = call i32 @print_reg(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i32 %32)
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 5
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @print_reg(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i32 %36)
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 6
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @print_reg(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i32 %40)
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 7
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @print_reg(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), i32 %44)
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %47 = bitcast %struct.TYPE_4__* %46 to i8*
  %48 = icmp ule i8* bitcast (i32* @_ram_start to i8*), %47
  br i1 %48, label %49, label %79

49:                                               ; preds = %9
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %51 = bitcast %struct.TYPE_4__* %50 to i8*
  %52 = icmp ult i8* %51, bitcast (i32* @_ram_end to i8*)
  br i1 %52, label %53, label %79

53:                                               ; preds = %49
  %54 = call i32 @mp_hal_stdout_tx_str(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0))
  store i32* @_estack, i32** %3, align 8
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %56 = bitcast %struct.TYPE_4__* %55 to i8*
  %57 = icmp ult i8* %56, bitcast (i32* @_sstack to i8*)
  br i1 %57, label %58, label %62

58:                                               ; preds = %53
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %60 = bitcast %struct.TYPE_4__* %59 to i32*
  %61 = getelementptr inbounds i32, i32* %60, i64 32
  store i32* %61, i32** %3, align 8
  br label %62

62:                                               ; preds = %58, %53
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %64 = bitcast %struct.TYPE_4__* %63 to i32*
  store i32* %64, i32** %4, align 8
  br label %65

65:                                               ; preds = %75, %62
  %66 = load i32*, i32** %4, align 8
  %67 = load i32*, i32** %3, align 8
  %68 = icmp ult i32* %66, %67
  br i1 %68, label %69, label %78

69:                                               ; preds = %65
  %70 = load i32*, i32** %4, align 8
  %71 = ptrtoint i32* %70 to i32
  %72 = load i32*, i32** %4, align 8
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @print_hex_hex(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0), i32 %71, i32 %73)
  br label %75

75:                                               ; preds = %69
  %76 = load i32*, i32** %4, align 8
  %77 = getelementptr inbounds i32, i32* %76, i32 1
  store i32* %77, i32** %4, align 8
  br label %65

78:                                               ; preds = %65
  br label %79

79:                                               ; preds = %78, %49, %9
  br label %80

80:                                               ; preds = %79, %80
  %81 = call i32 @__fatal_error(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0))
  br label %80
}

declare dso_local i32 @powerctrl_mcu_reset(...) #1

declare dso_local i32 @mp_hal_stdout_tx_str(i8*) #1

declare dso_local i32 @print_reg(i8*, i32) #1

declare dso_local i32 @print_hex_hex(i8*, i32, i32) #1

declare dso_local i32 @__fatal_error(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
