; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_xact.c_RollbackAndReleaseCurrentSubTransaction.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_xact.c_RollbackAndReleaseCurrentSubTransaction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@CurrentTransactionState = common dso_local global %struct.TYPE_3__* null, align 8
@FATAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [61 x i8] c"RollbackAndReleaseCurrentSubTransaction: unexpected state %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @RollbackAndReleaseCurrentSubTransaction() #0 {
  %1 = alloca %struct.TYPE_3__*, align 8
  %2 = load %struct.TYPE_3__*, %struct.TYPE_3__** @CurrentTransactionState, align 8
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %1, align 8
  %3 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %4 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  switch i32 %5, label %14 [
    i32 130, label %6
    i32 136, label %6
    i32 143, label %7
    i32 137, label %7
    i32 144, label %7
    i32 141, label %7
    i32 139, label %7
    i32 132, label %7
    i32 140, label %7
    i32 142, label %7
    i32 129, label %7
    i32 131, label %7
    i32 147, label %7
    i32 146, label %7
    i32 135, label %7
    i32 145, label %7
    i32 134, label %7
    i32 128, label %7
    i32 133, label %7
    i32 138, label %7
  ]

6:                                                ; preds = %0, %0
  br label %14

7:                                                ; preds = %0, %0, %0, %0, %0, %0, %0, %0, %0, %0, %0, %0, %0, %0, %0, %0, %0, %0
  %8 = load i32, i32* @FATAL, align 4
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @BlockStateAsString(i32 %11)
  %13 = call i32 @elog(i32 %8, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), i32 %12)
  br label %14

14:                                               ; preds = %0, %7, %6
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp eq i32 %17, 130
  br i1 %18, label %19, label %21

19:                                               ; preds = %14
  %20 = call i32 (...) @AbortSubTransaction()
  br label %21

21:                                               ; preds = %19, %14
  %22 = call i32 (...) @CleanupSubTransaction()
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** @CurrentTransactionState, align 8
  store %struct.TYPE_3__* %23, %struct.TYPE_3__** %1, align 8
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp eq i32 %26, 130
  br i1 %27, label %43, label %28

28:                                               ; preds = %21
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp eq i32 %31, 140
  br i1 %32, label %43, label %33

33:                                               ; preds = %28
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp eq i32 %36, 141
  br i1 %37, label %43, label %38

38:                                               ; preds = %33
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = icmp eq i32 %41, 137
  br label %43

43:                                               ; preds = %38, %33, %28, %21
  %44 = phi i1 [ true, %33 ], [ true, %28 ], [ true, %21 ], [ %42, %38 ]
  %45 = zext i1 %44 to i32
  %46 = call i32 @AssertState(i32 %45)
  ret void
}

declare dso_local i32 @elog(i32, i8*, i32) #1

declare dso_local i32 @BlockStateAsString(i32) #1

declare dso_local i32 @AbortSubTransaction(...) #1

declare dso_local i32 @CleanupSubTransaction(...) #1

declare dso_local i32 @AssertState(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
