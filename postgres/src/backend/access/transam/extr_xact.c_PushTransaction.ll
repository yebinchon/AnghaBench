; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_xact.c_PushTransaction.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_xact.c_PushTransaction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32, i32, i32, i32, i32, i32, i32, i64, %struct.TYPE_4__*, i64, i32 }

@CurrentTransactionState = common dso_local global %struct.TYPE_4__* null, align 8
@TopTransactionContext = common dso_local global i32 0, align 4
@currentSubTransactionId = common dso_local global i64 0, align 8
@InvalidSubTransactionId = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_PROGRAM_LIMIT_EXCEEDED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [62 x i8] c"cannot have more than 2^32-1 subtransactions in a transaction\00", align 1
@InvalidFullTransactionId = common dso_local global i32 0, align 4
@TRANS_DEFAULT = common dso_local global i32 0, align 4
@TBLOCK_SUBBEGIN = common dso_local global i32 0, align 4
@XactReadOnly = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @PushTransaction to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @PushTransaction() #0 {
  %1 = alloca %struct.TYPE_4__*, align 8
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = load %struct.TYPE_4__*, %struct.TYPE_4__** @CurrentTransactionState, align 8
  store %struct.TYPE_4__* %3, %struct.TYPE_4__** %1, align 8
  %4 = load i32, i32* @TopTransactionContext, align 4
  %5 = call i64 @MemoryContextAllocZero(i32 %4, i32 4)
  %6 = inttoptr i64 %5 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %6, %struct.TYPE_4__** %2, align 8
  %7 = load i64, i64* @currentSubTransactionId, align 8
  %8 = add nsw i64 %7, 1
  store i64 %8, i64* @currentSubTransactionId, align 8
  %9 = load i64, i64* @currentSubTransactionId, align 8
  %10 = load i64, i64* @InvalidSubTransactionId, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %22

12:                                               ; preds = %0
  %13 = load i64, i64* @currentSubTransactionId, align 8
  %14 = sub nsw i64 %13, 1
  store i64 %14, i64* @currentSubTransactionId, align 8
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %16 = call i32 @pfree(%struct.TYPE_4__* %15)
  %17 = load i32, i32* @ERROR, align 4
  %18 = load i32, i32* @ERRCODE_PROGRAM_LIMIT_EXCEEDED, align 4
  %19 = call i32 @errcode(i32 %18)
  %20 = call i32 @errmsg(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0))
  %21 = call i32 @ereport(i32 %17, i32 %20)
  br label %22

22:                                               ; preds = %12, %0
  %23 = load i32, i32* @InvalidFullTransactionId, align 4
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 11
  store i32 %23, i32* %25, align 8
  %26 = load i64, i64* @currentSubTransactionId, align 8
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 10
  store i64 %26, i64* %28, align 8
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 9
  store %struct.TYPE_4__* %29, %struct.TYPE_4__** %31, align 8
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 8
  %34 = load i64, i64* %33, align 8
  %35 = add nsw i64 %34, 1
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 8
  store i64 %35, i64* %37, align 8
  %38 = call i32 (...) @NewGUCNestLevel()
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 7
  store i32 %38, i32* %40, align 8
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 6
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 6
  store i32 %43, i32* %45, align 4
  %46 = load i32, i32* @TRANS_DEFAULT, align 4
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 5
  store i32 %46, i32* %48, align 8
  %49 = load i32, i32* @TBLOCK_SUBBEGIN, align 4
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 4
  store i32 %49, i32* %51, align 4
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 3
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 2
  %56 = call i32 @GetUserIdAndSecContext(i32* %53, i32* %55)
  %57 = load i32, i32* @XactReadOnly, align 4
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 1
  store i32 %57, i32* %59, align 8
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  store i64 0, i64* %61, align 8
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  store %struct.TYPE_4__* %62, %struct.TYPE_4__** @CurrentTransactionState, align 8
  ret void
}

declare dso_local i64 @MemoryContextAllocZero(i32, i32) #1

declare dso_local i32 @pfree(%struct.TYPE_4__*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*) #1

declare dso_local i32 @NewGUCNestLevel(...) #1

declare dso_local i32 @GetUserIdAndSecContext(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
