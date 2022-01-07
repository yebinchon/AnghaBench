; ModuleID = '/home/carl/AnghaBench/micropython/ports/stm32/extr_dma.c_dma_enable_clock.c'
source_filename = "/home/carl/AnghaBench/micropython/ports/stm32/extr_dma.c_dma_enable_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@dma_enable_mask = common dso_local global i32 0, align 4
@NSTREAMS_PER_CONTROLLER = common dso_local global i32 0, align 4
@DMA1_ENABLE_MASK = common dso_local global i32 0, align 4
@DMA_INVALID_CHANNEL = common dso_local global i32 0, align 4
@dma_last_sub_instance = common dso_local global i32* null, align 8
@DMA2_ENABLE_MASK = common dso_local global i32 0, align 4
@NSTREAM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @dma_enable_clock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dma_enable_clock(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %6 = call i32 (...) @MICROPY_BEGIN_ATOMIC_SECTION()
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* @dma_enable_mask, align 4
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %2, align 4
  %9 = shl i32 1, %8
  %10 = load i32, i32* @dma_enable_mask, align 4
  %11 = or i32 %10, %9
  store i32 %11, i32* @dma_enable_mask, align 4
  %12 = load i32, i32* %3, align 4
  %13 = call i32 @MICROPY_END_ATOMIC_SECTION(i32 %12)
  %14 = load i32, i32* %2, align 4
  %15 = load i32, i32* @NSTREAMS_PER_CONTROLLER, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %42

17:                                               ; preds = %1
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @DMA1_ENABLE_MASK, align 4
  %20 = and i32 %18, %19
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %41

22:                                               ; preds = %17
  %23 = call i32 (...) @DMA1_IS_CLK_ENABLED()
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %41, label %25

25:                                               ; preds = %22
  %26 = call i32 (...) @__HAL_RCC_DMA1_CLK_ENABLE()
  store i32 0, i32* %5, align 4
  br label %27

27:                                               ; preds = %37, %25
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @NSTREAMS_PER_CONTROLLER, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %40

31:                                               ; preds = %27
  %32 = load i32, i32* @DMA_INVALID_CHANNEL, align 4
  %33 = load i32*, i32** @dma_last_sub_instance, align 8
  %34 = load i32, i32* %5, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  store i32 %32, i32* %36, align 4
  br label %37

37:                                               ; preds = %31
  %38 = load i32, i32* %5, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %5, align 4
  br label %27

40:                                               ; preds = %27
  br label %41

41:                                               ; preds = %40, %22, %17
  br label %42

42:                                               ; preds = %41, %1
  ret void
}

declare dso_local i32 @MICROPY_BEGIN_ATOMIC_SECTION(...) #1

declare dso_local i32 @MICROPY_END_ATOMIC_SECTION(i32) #1

declare dso_local i32 @DMA1_IS_CLK_ENABLED(...) #1

declare dso_local i32 @__HAL_RCC_DMA1_CLK_ENABLE(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
