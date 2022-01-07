; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/storage/lmgr/extr_deadlock.c_InitDeadLockChecking.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/storage/lmgr/extr_deadlock.c_InitDeadLockChecking.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TopMemoryContext = common dso_local global i32 0, align 4
@MaxBackends = common dso_local global i32 0, align 4
@visitedProcs = common dso_local global i32** null, align 8
@deadlockDetails = common dso_local global i32* null, align 8
@topoProcs = common dso_local global i32** null, align 8
@beforeConstraints = common dso_local global i32* null, align 8
@afterConstraints = common dso_local global i32* null, align 8
@waitOrders = common dso_local global i32* null, align 8
@waitOrderProcs = common dso_local global i32** null, align 8
@maxCurConstraints = common dso_local global i32 0, align 4
@curConstraints = common dso_local global i32* null, align 8
@maxPossibleConstraints = common dso_local global i32 0, align 4
@possibleConstraints = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @InitDeadLockChecking() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @TopMemoryContext, align 4
  %3 = call i32 @MemoryContextSwitchTo(i32 %2)
  store i32 %3, i32* %1, align 4
  %4 = load i32, i32* @MaxBackends, align 4
  %5 = sext i32 %4 to i64
  %6 = mul i64 %5, 8
  %7 = trunc i64 %6 to i32
  %8 = call i64 @palloc(i32 %7)
  %9 = inttoptr i64 %8 to i32**
  store i32** %9, i32*** @visitedProcs, align 8
  %10 = load i32, i32* @MaxBackends, align 4
  %11 = sext i32 %10 to i64
  %12 = mul i64 %11, 4
  %13 = trunc i64 %12 to i32
  %14 = call i64 @palloc(i32 %13)
  %15 = inttoptr i64 %14 to i32*
  store i32* %15, i32** @deadlockDetails, align 8
  %16 = load i32**, i32*** @visitedProcs, align 8
  store i32** %16, i32*** @topoProcs, align 8
  %17 = load i32, i32* @MaxBackends, align 4
  %18 = sext i32 %17 to i64
  %19 = mul i64 %18, 4
  %20 = trunc i64 %19 to i32
  %21 = call i64 @palloc(i32 %20)
  %22 = inttoptr i64 %21 to i32*
  store i32* %22, i32** @beforeConstraints, align 8
  %23 = load i32, i32* @MaxBackends, align 4
  %24 = sext i32 %23 to i64
  %25 = mul i64 %24, 4
  %26 = trunc i64 %25 to i32
  %27 = call i64 @palloc(i32 %26)
  %28 = inttoptr i64 %27 to i32*
  store i32* %28, i32** @afterConstraints, align 8
  %29 = load i32, i32* @MaxBackends, align 4
  %30 = sdiv i32 %29, 2
  %31 = sext i32 %30 to i64
  %32 = mul i64 %31, 4
  %33 = trunc i64 %32 to i32
  %34 = call i64 @palloc(i32 %33)
  %35 = inttoptr i64 %34 to i32*
  store i32* %35, i32** @waitOrders, align 8
  %36 = load i32, i32* @MaxBackends, align 4
  %37 = sext i32 %36 to i64
  %38 = mul i64 %37, 8
  %39 = trunc i64 %38 to i32
  %40 = call i64 @palloc(i32 %39)
  %41 = inttoptr i64 %40 to i32**
  store i32** %41, i32*** @waitOrderProcs, align 8
  %42 = load i32, i32* @MaxBackends, align 4
  store i32 %42, i32* @maxCurConstraints, align 4
  %43 = load i32, i32* @maxCurConstraints, align 4
  %44 = sext i32 %43 to i64
  %45 = mul i64 %44, 4
  %46 = trunc i64 %45 to i32
  %47 = call i64 @palloc(i32 %46)
  %48 = inttoptr i64 %47 to i32*
  store i32* %48, i32** @curConstraints, align 8
  %49 = load i32, i32* @MaxBackends, align 4
  %50 = mul nsw i32 %49, 4
  store i32 %50, i32* @maxPossibleConstraints, align 4
  %51 = load i32, i32* @maxPossibleConstraints, align 4
  %52 = sext i32 %51 to i64
  %53 = mul i64 %52, 4
  %54 = trunc i64 %53 to i32
  %55 = call i64 @palloc(i32 %54)
  %56 = inttoptr i64 %55 to i32*
  store i32* %56, i32** @possibleConstraints, align 8
  %57 = load i32, i32* %1, align 4
  %58 = call i32 @MemoryContextSwitchTo(i32 %57)
  ret void
}

declare dso_local i32 @MemoryContextSwitchTo(i32) #1

declare dso_local i64 @palloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
