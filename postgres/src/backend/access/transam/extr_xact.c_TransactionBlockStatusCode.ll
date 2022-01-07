; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_xact.c_TransactionBlockStatusCode.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_xact.c_TransactionBlockStatusCode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@CurrentTransactionState = common dso_local global %struct.TYPE_3__* null, align 8
@FATAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"invalid transaction block state: %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local signext i8 @TransactionBlockStatusCode() #0 {
  %1 = alloca i8, align 1
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = load %struct.TYPE_3__*, %struct.TYPE_3__** @CurrentTransactionState, align 8
  store %struct.TYPE_3__* %3, %struct.TYPE_3__** %2, align 8
  %4 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %10 [
    i32 143, label %7
    i32 137, label %7
    i32 144, label %8
    i32 132, label %8
    i32 140, label %8
    i32 141, label %8
    i32 139, label %8
    i32 130, label %8
    i32 142, label %8
    i32 129, label %8
    i32 131, label %8
    i32 138, label %8
    i32 147, label %9
    i32 136, label %9
    i32 146, label %9
    i32 135, label %9
    i32 145, label %9
    i32 134, label %9
    i32 128, label %9
    i32 133, label %9
  ]

7:                                                ; preds = %0, %0
  store i8 73, i8* %1, align 1
  br label %17

8:                                                ; preds = %0, %0, %0, %0, %0, %0, %0, %0, %0, %0
  store i8 84, i8* %1, align 1
  br label %17

9:                                                ; preds = %0, %0, %0, %0, %0, %0, %0, %0
  store i8 69, i8* %1, align 1
  br label %17

10:                                               ; preds = %0
  %11 = load i32, i32* @FATAL, align 4
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @BlockStateAsString(i32 %14)
  %16 = call i32 @elog(i32 %11, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %15)
  store i8 0, i8* %1, align 1
  br label %17

17:                                               ; preds = %10, %9, %8, %7
  %18 = load i8, i8* %1, align 1
  ret i8 %18
}

declare dso_local i32 @elog(i32, i8*, i32) #1

declare dso_local i32 @BlockStateAsString(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
