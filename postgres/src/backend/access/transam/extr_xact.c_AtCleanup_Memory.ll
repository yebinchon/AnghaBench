; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_xact.c_AtCleanup_Memory.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_xact.c_AtCleanup_Memory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32*, i32* }

@CurrentTransactionState = common dso_local global %struct.TYPE_2__* null, align 8
@TopMemoryContext = common dso_local global i32 0, align 4
@TransactionAbortContext = common dso_local global i32* null, align 8
@TopTransactionContext = common dso_local global i32* null, align 8
@CurTransactionContext = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @AtCleanup_Memory to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @AtCleanup_Memory() #0 {
  %1 = load %struct.TYPE_2__*, %struct.TYPE_2__** @CurrentTransactionState, align 8
  %2 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %1, i32 0, i32 1
  %3 = load i32*, i32** %2, align 8
  %4 = icmp eq i32* %3, null
  %5 = zext i1 %4 to i32
  %6 = call i32 @Assert(i32 %5)
  %7 = load i32, i32* @TopMemoryContext, align 4
  %8 = call i32 @MemoryContextSwitchTo(i32 %7)
  %9 = load i32*, i32** @TransactionAbortContext, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %0
  %12 = load i32*, i32** @TransactionAbortContext, align 8
  %13 = call i32 @MemoryContextResetAndDeleteChildren(i32* %12)
  br label %14

14:                                               ; preds = %11, %0
  %15 = load i32*, i32** @TopTransactionContext, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %14
  %18 = load i32*, i32** @TopTransactionContext, align 8
  %19 = call i32 @MemoryContextDelete(i32* %18)
  br label %20

20:                                               ; preds = %17, %14
  store i32* null, i32** @TopTransactionContext, align 8
  store i32* null, i32** @CurTransactionContext, align 8
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** @CurrentTransactionState, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  store i32* null, i32** %22, align 8
  ret void
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @MemoryContextSwitchTo(i32) #1

declare dso_local i32 @MemoryContextResetAndDeleteChildren(i32*) #1

declare dso_local i32 @MemoryContextDelete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
