; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_xact.c_BeginTransactionBlock.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_xact.c_BeginTransactionBlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@CurrentTransactionState = common dso_local global %struct.TYPE_3__* null, align 8
@WARNING = common dso_local global i32 0, align 4
@ERRCODE_ACTIVE_SQL_TRANSACTION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"there is already a transaction in progress\00", align 1
@FATAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"BeginTransactionBlock: unexpected state %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @BeginTransactionBlock() #0 {
  %1 = alloca %struct.TYPE_3__*, align 8
  %2 = load %struct.TYPE_3__*, %struct.TYPE_3__** @CurrentTransactionState, align 8
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %1, align 8
  %3 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %4 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  switch i32 %5, label %25 [
    i32 137, label %6
    i32 141, label %9
    i32 140, label %12
    i32 139, label %12
    i32 130, label %12
    i32 147, label %12
    i32 136, label %12
    i32 143, label %18
    i32 144, label %18
    i32 132, label %18
    i32 142, label %18
    i32 129, label %18
    i32 131, label %18
    i32 146, label %18
    i32 135, label %18
    i32 145, label %18
    i32 134, label %18
    i32 128, label %18
    i32 133, label %18
    i32 138, label %18
  ]

6:                                                ; preds = %0
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  store i32 144, i32* %8, align 4
  br label %25

9:                                                ; preds = %0
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  store i32 144, i32* %11, align 4
  br label %25

12:                                               ; preds = %0, %0, %0, %0, %0
  %13 = load i32, i32* @WARNING, align 4
  %14 = load i32, i32* @ERRCODE_ACTIVE_SQL_TRANSACTION, align 4
  %15 = call i32 @errcode(i32 %14)
  %16 = call i32 @errmsg(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %17 = call i32 @ereport(i32 %13, i32 %16)
  br label %25

18:                                               ; preds = %0, %0, %0, %0, %0, %0, %0, %0, %0, %0, %0, %0, %0
  %19 = load i32, i32* @FATAL, align 4
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @BlockStateAsString(i32 %22)
  %24 = call i32 @elog(i32 %19, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %23)
  br label %25

25:                                               ; preds = %0, %18, %12, %9, %6
  ret void
}

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*) #1

declare dso_local i32 @elog(i32, i8*, i32) #1

declare dso_local i32 @BlockStateAsString(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
