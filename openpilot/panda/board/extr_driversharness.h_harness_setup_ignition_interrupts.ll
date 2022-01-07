; ModuleID = '/home/carl/AnghaBench/openpilot/panda/board/extr_driversharness.h_harness_setup_ignition_interrupts.c'
source_filename = "/home/carl/AnghaBench/openpilot/panda/board/extr_driversharness.h_harness_setup_ignition_interrupts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32* }
%struct.TYPE_4__ = type { i32, i32, i32 }

@car_harness_status = common dso_local global i64 0, align 8
@HARNESS_STATUS_NORMAL = common dso_local global i64 0, align 8
@SYSCFG_EXTICR1_EXTI3_PC = common dso_local global i32 0, align 4
@SYSCFG = common dso_local global %struct.TYPE_3__* null, align 8
@EXTI = common dso_local global %struct.TYPE_4__* null, align 8
@.str = private unnamed_addr constant [26 x i8] c"setup interrupts: normal\0A\00", align 1
@HARNESS_STATUS_FLIPPED = common dso_local global i64 0, align 8
@SYSCFG_EXTICR1_EXTI0_PC = common dso_local global i32 0, align 4
@EXTI1_IRQn = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"setup interrupts: flipped\0A\00", align 1
@.str.2 = private unnamed_addr constant [62 x i8] c"tried to setup ignition interrupts without harness connected\0A\00", align 1
@EXTI0_IRQn = common dso_local global i32 0, align 4
@EXTI3_IRQn = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @harness_setup_ignition_interrupts() #0 {
  %1 = load i64, i64* @car_harness_status, align 8
  %2 = load i64, i64* @HARNESS_STATUS_NORMAL, align 8
  %3 = icmp eq i64 %1, %2
  br i1 %3, label %4, label %23

4:                                                ; preds = %0
  %5 = load i32, i32* @SYSCFG_EXTICR1_EXTI3_PC, align 4
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** @SYSCFG, align 8
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load i32*, i32** %7, align 8
  %9 = getelementptr inbounds i32, i32* %8, i64 0
  store i32 %5, i32* %9, align 4
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** @EXTI, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = or i32 %12, 8
  store i32 %13, i32* %11, align 4
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** @EXTI, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = or i32 %16, 8
  store i32 %17, i32* %15, align 4
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** @EXTI, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = or i32 %20, 8
  store i32 %21, i32* %19, align 4
  %22 = call i32 @puts(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %51

23:                                               ; preds = %0
  %24 = load i64, i64* @car_harness_status, align 8
  %25 = load i64, i64* @HARNESS_STATUS_FLIPPED, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %48

27:                                               ; preds = %23
  %28 = load i32, i32* @SYSCFG_EXTICR1_EXTI0_PC, align 4
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** @SYSCFG, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 0
  store i32 %28, i32* %32, align 4
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** @EXTI, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = or i32 %35, 1
  store i32 %36, i32* %34, align 4
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** @EXTI, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = or i32 %39, 1
  store i32 %40, i32* %38, align 4
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** @EXTI, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = or i32 %43, 1
  store i32 %44, i32* %42, align 4
  %45 = load i32, i32* @EXTI1_IRQn, align 4
  %46 = call i32 @NVIC_EnableIRQ(i32 %45)
  %47 = call i32 @puts(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  br label %50

48:                                               ; preds = %23
  %49 = call i32 @puts(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.2, i64 0, i64 0))
  br label %50

50:                                               ; preds = %48, %27
  br label %51

51:                                               ; preds = %50, %4
  %52 = load i32, i32* @EXTI0_IRQn, align 4
  %53 = call i32 @NVIC_EnableIRQ(i32 %52)
  %54 = load i32, i32* @EXTI3_IRQn, align 4
  %55 = call i32 @NVIC_EnableIRQ(i32 %54)
  ret void
}

declare dso_local i32 @puts(i8*) #1

declare dso_local i32 @NVIC_EnableIRQ(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
