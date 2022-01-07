; ModuleID = '/home/carl/AnghaBench/openpilot/panda/board/extr_driverspwm.h_pwm_init.c'
source_filename = "/home/carl/AnghaBench/openpilot/panda/board/extr_driverspwm.h_pwm_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32 }

@TIM_CR1_CEN = common dso_local global i32 0, align 4
@TIM_CR1_ARPE = common dso_local global i32 0, align 4
@TIM_CCMR1_OC1M_2 = common dso_local global i32 0, align 4
@TIM_CCMR1_OC1M_1 = common dso_local global i32 0, align 4
@TIM_CCMR1_OC1PE = common dso_local global i32 0, align 4
@TIM_CCER_CC1E = common dso_local global i32 0, align 4
@TIM_CCMR1_OC2M_2 = common dso_local global i32 0, align 4
@TIM_CCMR1_OC2M_1 = common dso_local global i32 0, align 4
@TIM_CCMR1_OC2PE = common dso_local global i32 0, align 4
@TIM_CCER_CC2E = common dso_local global i32 0, align 4
@TIM_CCMR2_OC3M_2 = common dso_local global i32 0, align 4
@TIM_CCMR2_OC3M_1 = common dso_local global i32 0, align 4
@TIM_CCMR2_OC3PE = common dso_local global i32 0, align 4
@TIM_CCER_CC3E = common dso_local global i32 0, align 4
@TIM_CCMR2_OC4M_2 = common dso_local global i32 0, align 4
@TIM_CCMR2_OC4M_1 = common dso_local global i32 0, align 4
@TIM_CCMR2_OC4PE = common dso_local global i32 0, align 4
@TIM_CCER_CC4E = common dso_local global i32 0, align 4
@PWM_COUNTER_OVERFLOW = common dso_local global i32 0, align 4
@TIM_EGR_UG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pwm_init(%struct.TYPE_3__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* @TIM_CR1_CEN, align 4
  %6 = load i32, i32* @TIM_CR1_ARPE, align 4
  %7 = or i32 %5, %6
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  store i32 %7, i32* %9, align 4
  %10 = load i32, i32* %4, align 4
  switch i32 %10, label %71 [
    i32 1, label %11
    i32 2, label %26
    i32 3, label %41
    i32 4, label %56
  ]

11:                                               ; preds = %2
  %12 = load i32, i32* @TIM_CCMR1_OC1M_2, align 4
  %13 = load i32, i32* @TIM_CCMR1_OC1M_1, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @TIM_CCMR1_OC1PE, align 4
  %16 = or i32 %14, %15
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = or i32 %19, %16
  store i32 %20, i32* %18, align 4
  %21 = load i32, i32* @TIM_CCER_CC1E, align 4
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 5
  %24 = load i32, i32* %23, align 4
  %25 = or i32 %24, %21
  store i32 %25, i32* %23, align 4
  br label %72

26:                                               ; preds = %2
  %27 = load i32, i32* @TIM_CCMR1_OC2M_2, align 4
  %28 = load i32, i32* @TIM_CCMR1_OC2M_1, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @TIM_CCMR1_OC2PE, align 4
  %31 = or i32 %29, %30
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = or i32 %34, %31
  store i32 %35, i32* %33, align 4
  %36 = load i32, i32* @TIM_CCER_CC2E, align 4
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 5
  %39 = load i32, i32* %38, align 4
  %40 = or i32 %39, %36
  store i32 %40, i32* %38, align 4
  br label %72

41:                                               ; preds = %2
  %42 = load i32, i32* @TIM_CCMR2_OC3M_2, align 4
  %43 = load i32, i32* @TIM_CCMR2_OC3M_1, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* @TIM_CCMR2_OC3PE, align 4
  %46 = or i32 %44, %45
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = or i32 %49, %46
  store i32 %50, i32* %48, align 4
  %51 = load i32, i32* @TIM_CCER_CC3E, align 4
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 5
  %54 = load i32, i32* %53, align 4
  %55 = or i32 %54, %51
  store i32 %55, i32* %53, align 4
  br label %72

56:                                               ; preds = %2
  %57 = load i32, i32* @TIM_CCMR2_OC4M_2, align 4
  %58 = load i32, i32* @TIM_CCMR2_OC4M_1, align 4
  %59 = or i32 %57, %58
  %60 = load i32, i32* @TIM_CCMR2_OC4PE, align 4
  %61 = or i32 %59, %60
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = or i32 %64, %61
  store i32 %65, i32* %63, align 4
  %66 = load i32, i32* @TIM_CCER_CC4E, align 4
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 5
  %69 = load i32, i32* %68, align 4
  %70 = or i32 %69, %66
  store i32 %70, i32* %68, align 4
  br label %72

71:                                               ; preds = %2
  br label %72

72:                                               ; preds = %71, %56, %41, %26, %11
  %73 = load i32, i32* @PWM_COUNTER_OVERFLOW, align 4
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 4
  store i32 %73, i32* %75, align 4
  %76 = load i32, i32* @TIM_EGR_UG, align 4
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 4
  %80 = or i32 %79, %76
  store i32 %80, i32* %78, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
