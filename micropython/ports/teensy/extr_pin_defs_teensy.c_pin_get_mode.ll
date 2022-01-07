; ModuleID = '/home/carl/AnghaBench/micropython/ports/teensy/extr_pin_defs_teensy.c_pin_get_mode.c'
source_filename = "/home/carl/AnghaBench/micropython/ports/teensy/extr_pin_defs_teensy.c_pin_get_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@GPIO_MODE_ANALOG = common dso_local global i32 0, align 4
@PORT_PCR_MUX_MASK = common dso_local global i32 0, align 4
@PORT_PCR_ODE = common dso_local global i32 0, align 4
@GPIO_MODE_OUTPUT_OD = common dso_local global i32 0, align 4
@GPIO_MODE_OUTPUT_PP = common dso_local global i32 0, align 4
@GPIO_MODE_INPUT = common dso_local global i32 0, align 4
@GPIO_MODE_AF_OD = common dso_local global i32 0, align 4
@GPIO_MODE_AF_PP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pin_get_mode(%struct.TYPE_4__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 1
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %10 = icmp eq %struct.TYPE_5__* %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i32, i32* @GPIO_MODE_ANALOG, align 4
  store i32 %12, i32* %2, align 4
  br label %66

13:                                               ; preds = %1
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 1
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i32* @GPIO_PIN_TO_PORT_PCR(%struct.TYPE_5__* %16, i32 %19)
  store i32* %20, i32** %4, align 8
  %21 = load i32*, i32** %4, align 8
  %22 = load volatile i32, i32* %21, align 4
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @PORT_PCR_MUX_MASK, align 4
  %25 = and i32 %23, %24
  %26 = ashr i32 %25, 8
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %13
  %30 = load i32, i32* @GPIO_MODE_ANALOG, align 4
  store i32 %30, i32* %2, align 4
  br label %66

31:                                               ; preds = %13
  %32 = load i32, i32* %6, align 4
  %33 = icmp eq i32 %32, 1
  br i1 %33, label %34, label %57

34:                                               ; preds = %31
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = shl i32 1, %42
  %44 = and i32 %39, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %55

46:                                               ; preds = %34
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* @PORT_PCR_ODE, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %46
  %52 = load i32, i32* @GPIO_MODE_OUTPUT_OD, align 4
  store i32 %52, i32* %2, align 4
  br label %66

53:                                               ; preds = %46
  %54 = load i32, i32* @GPIO_MODE_OUTPUT_PP, align 4
  store i32 %54, i32* %2, align 4
  br label %66

55:                                               ; preds = %34
  %56 = load i32, i32* @GPIO_MODE_INPUT, align 4
  store i32 %56, i32* %2, align 4
  br label %66

57:                                               ; preds = %31
  %58 = load i32, i32* %5, align 4
  %59 = load i32, i32* @PORT_PCR_ODE, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %57
  %63 = load i32, i32* @GPIO_MODE_AF_OD, align 4
  store i32 %63, i32* %2, align 4
  br label %66

64:                                               ; preds = %57
  %65 = load i32, i32* @GPIO_MODE_AF_PP, align 4
  store i32 %65, i32* %2, align 4
  br label %66

66:                                               ; preds = %64, %62, %55, %53, %51, %29, %11
  %67 = load i32, i32* %2, align 4
  ret i32 %67
}

declare dso_local i32* @GPIO_PIN_TO_PORT_PCR(%struct.TYPE_5__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
