; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/executor/extr_spi.c__SPI_rollback.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/executor/extr_spi.c__SPI_rollback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64 }

@CurrentMemoryContext = common dso_local global i32 0, align 4
@_SPI_current = common dso_local global %struct.TYPE_2__* null, align 8
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_INVALID_TRANSACTION_TERMINATION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"invalid transaction termination\00", align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"cannot roll back while a subtransaction is active\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @_SPI_rollback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_SPI_rollback(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* @CurrentMemoryContext, align 4
  store i32 %4, i32* %3, align 4
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** @_SPI_current, align 8
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %1
  %10 = load i32, i32* @ERROR, align 4
  %11 = load i32, i32* @ERRCODE_INVALID_TRANSACTION_TERMINATION, align 4
  %12 = call i32 @errcode(i32 %11)
  %13 = call i32 @errmsg(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %14 = call i32 @ereport(i32 %10, i32 %13)
  br label %15

15:                                               ; preds = %9, %1
  %16 = call i64 (...) @IsSubTransaction()
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %15
  %19 = load i32, i32* @ERROR, align 4
  %20 = load i32, i32* @ERRCODE_INVALID_TRANSACTION_TERMINATION, align 4
  %21 = call i32 @errcode(i32 %20)
  %22 = call i32 @errmsg(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0))
  %23 = call i32 @ereport(i32 %19, i32 %22)
  br label %24

24:                                               ; preds = %18, %15
  %25 = call i32 (...) @HoldPinnedPortals()
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** @_SPI_current, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  store i32 1, i32* %27, align 8
  %28 = load i32, i32* %2, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %24
  %31 = call i32 (...) @SaveTransactionCharacteristics()
  br label %32

32:                                               ; preds = %30, %24
  %33 = call i32 (...) @AbortCurrentTransaction()
  %34 = load i32, i32* %2, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %32
  %37 = call i32 (...) @StartTransactionCommand()
  %38 = call i32 (...) @RestoreTransactionCharacteristics()
  br label %39

39:                                               ; preds = %36, %32
  %40 = load i32, i32* %3, align 4
  %41 = call i32 @MemoryContextSwitchTo(i32 %40)
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** @_SPI_current, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  store i32 0, i32* %43, align 8
  ret void
}

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*) #1

declare dso_local i64 @IsSubTransaction(...) #1

declare dso_local i32 @HoldPinnedPortals(...) #1

declare dso_local i32 @SaveTransactionCharacteristics(...) #1

declare dso_local i32 @AbortCurrentTransaction(...) #1

declare dso_local i32 @StartTransactionCommand(...) #1

declare dso_local i32 @RestoreTransactionCharacteristics(...) #1

declare dso_local i32 @MemoryContextSwitchTo(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
