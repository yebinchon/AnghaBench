; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_xact.c_CleanupSubTransaction.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_xact.c_CleanupSubTransaction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32*, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32 }

@CurrentTransactionState = common dso_local global %struct.TYPE_5__* null, align 8
@.str = private unnamed_addr constant [22 x i8] c"CleanupSubTransaction\00", align 1
@TRANS_ABORT = common dso_local global i64 0, align 8
@WARNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"CleanupSubTransaction while in %s state\00", align 1
@CurrentResourceOwner = common dso_local global i32 0, align 4
@CurTransactionResourceOwner = common dso_local global i32 0, align 4
@TRANS_DEFAULT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @CleanupSubTransaction to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CleanupSubTransaction() #0 {
  %1 = alloca %struct.TYPE_5__*, align 8
  %2 = load %struct.TYPE_5__*, %struct.TYPE_5__** @CurrentTransactionState, align 8
  store %struct.TYPE_5__* %2, %struct.TYPE_5__** %1, align 8
  %3 = call i32 @ShowTransactionState(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %4 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %5 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @TRANS_ABORT, align 8
  %8 = icmp ne i64 %6, %7
  br i1 %8, label %9, label %16

9:                                                ; preds = %0
  %10 = load i32, i32* @WARNING, align 4
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = call i32 @TransStateAsString(i64 %13)
  %15 = call i32 @elog(i32 %10, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %14)
  br label %16

16:                                               ; preds = %9, %0
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @AtSubCleanup_Portals(i32 %19)
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 2
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* @CurrentResourceOwner, align 4
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 2
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* @CurTransactionResourceOwner, align 4
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %35, label %40

35:                                               ; preds = %16
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = call i32 @ResourceOwnerDelete(i32* %38)
  br label %40

40:                                               ; preds = %35, %16
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 1
  store i32* null, i32** %42, align 8
  %43 = call i32 (...) @AtSubCleanup_Memory()
  %44 = load i64, i64* @TRANS_DEFAULT, align 8
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  store i64 %44, i64* %46, align 8
  %47 = call i32 (...) @PopTransaction()
  ret void
}

declare dso_local i32 @ShowTransactionState(i8*) #1

declare dso_local i32 @elog(i32, i8*, i32) #1

declare dso_local i32 @TransStateAsString(i64) #1

declare dso_local i32 @AtSubCleanup_Portals(i32) #1

declare dso_local i32 @ResourceOwnerDelete(i32*) #1

declare dso_local i32 @AtSubCleanup_Memory(...) #1

declare dso_local i32 @PopTransaction(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
