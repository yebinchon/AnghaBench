; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_xact.c_StartSubTransaction.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_xact.c_StartSubTransaction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32 }

@CurrentTransactionState = common dso_local global %struct.TYPE_5__* null, align 8
@TRANS_DEFAULT = common dso_local global i64 0, align 8
@WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"StartSubTransaction while in %s state\00", align 1
@TRANS_START = common dso_local global i64 0, align 8
@TRANS_INPROGRESS = common dso_local global i64 0, align 8
@SUBXACT_EVENT_START_SUB = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"StartSubTransaction\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @StartSubTransaction to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @StartSubTransaction() #0 {
  %1 = alloca %struct.TYPE_5__*, align 8
  %2 = load %struct.TYPE_5__*, %struct.TYPE_5__** @CurrentTransactionState, align 8
  store %struct.TYPE_5__* %2, %struct.TYPE_5__** %1, align 8
  %3 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %4 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @TRANS_DEFAULT, align 8
  %7 = icmp ne i64 %5, %6
  br i1 %7, label %8, label %15

8:                                                ; preds = %0
  %9 = load i32, i32* @WARNING, align 4
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = call i32 @TransStateAsString(i64 %12)
  %14 = call i32 @elog(i32 %9, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %13)
  br label %15

15:                                               ; preds = %8, %0
  %16 = load i64, i64* @TRANS_START, align 8
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  store i64 %16, i64* %18, align 8
  %19 = call i32 (...) @AtSubStart_Memory()
  %20 = call i32 (...) @AtSubStart_ResourceOwner()
  %21 = call i32 (...) @AfterTriggerBeginSubXact()
  %22 = load i64, i64* @TRANS_INPROGRESS, align 8
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  store i64 %22, i64* %24, align 8
  %25 = load i32, i32* @SUBXACT_EVENT_START_SUB, align 4
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 1
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @CallSubXactCallbacks(i32 %25, i32 %28, i32 %33)
  %35 = call i32 @ShowTransactionState(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

declare dso_local i32 @elog(i32, i8*, i32) #1

declare dso_local i32 @TransStateAsString(i64) #1

declare dso_local i32 @AtSubStart_Memory(...) #1

declare dso_local i32 @AtSubStart_ResourceOwner(...) #1

declare dso_local i32 @AfterTriggerBeginSubXact(...) #1

declare dso_local i32 @CallSubXactCallbacks(i32, i32, i32) #1

declare dso_local i32 @ShowTransactionState(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
