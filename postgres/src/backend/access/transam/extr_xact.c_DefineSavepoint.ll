; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_xact.c_DefineSavepoint.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_xact.c_DefineSavepoint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@CurrentTransactionState = common dso_local global %struct.TYPE_3__* null, align 8
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_INVALID_TRANSACTION_STATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"cannot define savepoints during a parallel operation\00", align 1
@TopTransactionContext = common dso_local global i32 0, align 4
@ERRCODE_NO_ACTIVE_SQL_TRANSACTION = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"%s can only be used in transaction blocks\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"SAVEPOINT\00", align 1
@FATAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [37 x i8] c"DefineSavepoint: unexpected state %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @DefineSavepoint(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_3__*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load %struct.TYPE_3__*, %struct.TYPE_3__** @CurrentTransactionState, align 8
  store %struct.TYPE_3__* %4, %struct.TYPE_3__** %3, align 8
  %5 = call i64 (...) @IsInParallelMode()
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %13

7:                                                ; preds = %1
  %8 = load i32, i32* @ERROR, align 4
  %9 = load i32, i32* @ERRCODE_INVALID_TRANSACTION_STATE, align 4
  %10 = call i32 @errcode(i32 %9)
  %11 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0))
  %12 = call i32 @ereport(i32 %8, i32 %11)
  br label %13

13:                                               ; preds = %7, %1
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  switch i32 %16, label %42 [
    i32 140, label %17
    i32 130, label %17
    i32 141, label %29
    i32 143, label %35
    i32 137, label %35
    i32 144, label %35
    i32 139, label %35
    i32 132, label %35
    i32 142, label %35
    i32 129, label %35
    i32 131, label %35
    i32 147, label %35
    i32 136, label %35
    i32 146, label %35
    i32 135, label %35
    i32 145, label %35
    i32 134, label %35
    i32 128, label %35
    i32 133, label %35
    i32 138, label %35
  ]

17:                                               ; preds = %13, %13
  %18 = call i32 (...) @PushTransaction()
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** @CurrentTransactionState, align 8
  store %struct.TYPE_3__* %19, %struct.TYPE_3__** %3, align 8
  %20 = load i8*, i8** %2, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %28

22:                                               ; preds = %17
  %23 = load i32, i32* @TopTransactionContext, align 4
  %24 = load i8*, i8** %2, align 8
  %25 = call i32 @MemoryContextStrdup(i32 %23, i8* %24)
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 4
  br label %28

28:                                               ; preds = %22, %17
  br label %42

29:                                               ; preds = %13
  %30 = load i32, i32* @ERROR, align 4
  %31 = load i32, i32* @ERRCODE_NO_ACTIVE_SQL_TRANSACTION, align 4
  %32 = call i32 @errcode(i32 %31)
  %33 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %34 = call i32 @ereport(i32 %30, i32 %33)
  br label %42

35:                                               ; preds = %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13
  %36 = load i32, i32* @FATAL, align 4
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @BlockStateAsString(i32 %39)
  %41 = call i32 @elog(i32 %36, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i32 %40)
  br label %42

42:                                               ; preds = %13, %35, %29, %28
  ret void
}

declare dso_local i64 @IsInParallelMode(...) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, ...) #1

declare dso_local i32 @PushTransaction(...) #1

declare dso_local i32 @MemoryContextStrdup(i32, i8*) #1

declare dso_local i32 @elog(i32, i8*, i32) #1

declare dso_local i32 @BlockStateAsString(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
