; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_xact.c_AtStart_Memory.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_xact.c_AtStart_Memory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32* }

@CurrentTransactionState = common dso_local global %struct.TYPE_3__* null, align 8
@TransactionAbortContext = common dso_local global i32* null, align 8
@TopMemoryContext = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"TransactionAbortContext\00", align 1
@TopTransactionContext = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [22 x i8] c"TopTransactionContext\00", align 1
@ALLOCSET_DEFAULT_SIZES = common dso_local global i32 0, align 4
@CurTransactionContext = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @AtStart_Memory to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @AtStart_Memory() #0 {
  %1 = alloca %struct.TYPE_3__*, align 8
  %2 = load %struct.TYPE_3__*, %struct.TYPE_3__** @CurrentTransactionState, align 8
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %1, align 8
  %3 = load i32*, i32** @TransactionAbortContext, align 8
  %4 = icmp eq i32* %3, null
  br i1 %4, label %5, label %9

5:                                                ; preds = %0
  %6 = load i32, i32* @TopMemoryContext, align 4
  %7 = call i8* (i32, i8*, i32, ...) @AllocSetContextCreate(i32 %6, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 32768, i32 32768, i32 32768)
  %8 = bitcast i8* %7 to i32*
  store i32* %8, i32** @TransactionAbortContext, align 8
  br label %9

9:                                                ; preds = %5, %0
  %10 = load i32*, i32** @TopTransactionContext, align 8
  %11 = icmp eq i32* %10, null
  %12 = zext i1 %11 to i32
  %13 = call i32 @Assert(i32 %12)
  %14 = load i32, i32* @TopMemoryContext, align 4
  %15 = load i32, i32* @ALLOCSET_DEFAULT_SIZES, align 4
  %16 = call i8* (i32, i8*, i32, ...) @AllocSetContextCreate(i32 %14, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %15)
  %17 = bitcast i8* %16 to i32*
  store i32* %17, i32** @TopTransactionContext, align 8
  %18 = load i32*, i32** @TopTransactionContext, align 8
  store i32* %18, i32** @CurTransactionContext, align 8
  %19 = load i32*, i32** @CurTransactionContext, align 8
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  store i32* %19, i32** %21, align 8
  %22 = load i32*, i32** @CurTransactionContext, align 8
  %23 = call i32 @MemoryContextSwitchTo(i32* %22)
  ret void
}

declare dso_local i8* @AllocSetContextCreate(i32, i8*, i32, ...) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @MemoryContextSwitchTo(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
