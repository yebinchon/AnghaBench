; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/storage/buffer/extr_freelist.c_ClockSweepTick.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/storage/buffer/extr_freelist.c_ClockSweepTick.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 }

@StrategyControl = common dso_local global %struct.TYPE_2__* null, align 8
@NBuffers = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @ClockSweepTick to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ClockSweepTick() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** @StrategyControl, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 2
  %8 = call i32 @pg_atomic_fetch_add_u32(i32* %7, i32 1)
  store i32 %8, i32* %1, align 4
  %9 = load i32, i32* %1, align 4
  %10 = load i32, i32* @NBuffers, align 4
  %11 = icmp sge i32 %9, %10
  br i1 %11, label %12, label %50

12:                                               ; preds = %0
  %13 = load i32, i32* %1, align 4
  store i32 %13, i32* %2, align 4
  %14 = load i32, i32* %1, align 4
  %15 = load i32, i32* @NBuffers, align 4
  %16 = srem i32 %14, %15
  store i32 %16, i32* %1, align 4
  %17 = load i32, i32* %1, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %49

19:                                               ; preds = %12
  store i32 0, i32* %5, align 4
  %20 = load i32, i32* %2, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %3, align 4
  br label %22

22:                                               ; preds = %44, %19
  %23 = load i32, i32* %5, align 4
  %24 = icmp ne i32 %23, 0
  %25 = xor i1 %24, true
  br i1 %25, label %26, label %48

26:                                               ; preds = %22
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** @StrategyControl, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = call i32 @SpinLockAcquire(i32* %28)
  %30 = load i32, i32* %3, align 4
  %31 = load i32, i32* @NBuffers, align 4
  %32 = srem i32 %30, %31
  store i32 %32, i32* %4, align 4
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** @StrategyControl, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 2
  %35 = load i32, i32* %4, align 4
  %36 = call i32 @pg_atomic_compare_exchange_u32(i32* %34, i32* %3, i32 %35)
  store i32 %36, i32* %5, align 4
  %37 = load i32, i32* %5, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %26
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** @StrategyControl, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %41, align 4
  br label %44

44:                                               ; preds = %39, %26
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** @StrategyControl, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = call i32 @SpinLockRelease(i32* %46)
  br label %22

48:                                               ; preds = %22
  br label %49

49:                                               ; preds = %48, %12
  br label %50

50:                                               ; preds = %49, %0
  %51 = load i32, i32* %1, align 4
  ret i32 %51
}

declare dso_local i32 @pg_atomic_fetch_add_u32(i32*, i32) #1

declare dso_local i32 @SpinLockAcquire(i32*) #1

declare dso_local i32 @pg_atomic_compare_exchange_u32(i32*, i32*, i32) #1

declare dso_local i32 @SpinLockRelease(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
