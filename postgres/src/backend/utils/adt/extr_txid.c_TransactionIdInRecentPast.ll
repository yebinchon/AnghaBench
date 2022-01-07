; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_txid.c_TransactionIdInRecentPast.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_txid.c_TransactionIdInRecentPast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@ERROR = common dso_local global i32 0, align 4
@ERRCODE_INVALID_PARAMETER_VALUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"transaction ID %s is in the future\00", align 1
@UINT64_FORMAT = common dso_local global i32 0, align 4
@CLogTruncationLock = common dso_local global i32 0, align 4
@ShmemVariableCache = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64*)* @TransactionIdInRecentPast to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @TransactionIdInRecentPast(i32 %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i64* %1, i64** %5, align 8
  %11 = load i32, i32* %4, align 4
  %12 = ashr i32 %11, 32
  %13 = sext i32 %12 to i64
  store i64 %13, i64* %6, align 8
  %14 = load i32, i32* %4, align 4
  %15 = sext i32 %14 to i64
  store i64 %15, i64* %7, align 8
  %16 = call i32 (...) @ReadNextFullTransactionId()
  store i32 %16, i32* %10, align 4
  %17 = load i32, i32* %10, align 4
  %18 = call i64 @XidFromFullTransactionId(i32 %17)
  store i64 %18, i64* %9, align 8
  %19 = load i32, i32* %10, align 4
  %20 = call i64 @EpochFromFullTransactionId(i32 %19)
  store i64 %20, i64* %8, align 8
  %21 = load i64*, i64** %5, align 8
  %22 = icmp ne i64* %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %2
  %24 = load i64, i64* %7, align 8
  %25 = load i64*, i64** %5, align 8
  store i64 %24, i64* %25, align 8
  br label %26

26:                                               ; preds = %23, %2
  %27 = load i64, i64* %7, align 8
  %28 = call i32 @TransactionIdIsValid(i64 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %26
  store i32 0, i32* %3, align 4
  br label %76

31:                                               ; preds = %26
  %32 = load i64, i64* %7, align 8
  %33 = call i32 @TransactionIdIsNormal(i64 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %31
  store i32 1, i32* %3, align 4
  br label %76

36:                                               ; preds = %31
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* %10, align 4
  %39 = call i32 @U64FromFullTransactionId(i32 %38)
  %40 = icmp sge i32 %37, %39
  br i1 %40, label %41, label %50

41:                                               ; preds = %36
  %42 = load i32, i32* @ERROR, align 4
  %43 = load i32, i32* @ERRCODE_INVALID_PARAMETER_VALUE, align 4
  %44 = call i32 @errcode(i32 %43)
  %45 = load i32, i32* @UINT64_FORMAT, align 4
  %46 = load i32, i32* %4, align 4
  %47 = call i32 @psprintf(i32 %45, i32 %46)
  %48 = call i32 @errmsg(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %47)
  %49 = call i32 @ereport(i32 %42, i32 %48)
  br label %50

50:                                               ; preds = %41, %36
  %51 = load i32, i32* @CLogTruncationLock, align 4
  %52 = call i32 @LWLockHeldByMe(i32 %51)
  %53 = call i32 @Assert(i32 %52)
  %54 = load i64, i64* %6, align 8
  %55 = add nsw i64 %54, 1
  %56 = load i64, i64* %8, align 8
  %57 = icmp slt i64 %55, %56
  br i1 %57, label %74, label %58

58:                                               ; preds = %50
  %59 = load i64, i64* %6, align 8
  %60 = add nsw i64 %59, 1
  %61 = load i64, i64* %8, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %67

63:                                               ; preds = %58
  %64 = load i64, i64* %7, align 8
  %65 = load i64, i64* %9, align 8
  %66 = icmp slt i64 %64, %65
  br i1 %66, label %74, label %67

67:                                               ; preds = %63, %58
  %68 = load i64, i64* %7, align 8
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ShmemVariableCache, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i64 @TransactionIdPrecedes(i64 %68, i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %67, %63, %50
  store i32 0, i32* %3, align 4
  br label %76

75:                                               ; preds = %67
  store i32 1, i32* %3, align 4
  br label %76

76:                                               ; preds = %75, %74, %35, %30
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

declare dso_local i32 @ReadNextFullTransactionId(...) #1

declare dso_local i64 @XidFromFullTransactionId(i32) #1

declare dso_local i64 @EpochFromFullTransactionId(i32) #1

declare dso_local i32 @TransactionIdIsValid(i64) #1

declare dso_local i32 @TransactionIdIsNormal(i64) #1

declare dso_local i32 @U64FromFullTransactionId(i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i32) #1

declare dso_local i32 @psprintf(i32, i32) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @LWLockHeldByMe(i32) #1

declare dso_local i64 @TransactionIdPrecedes(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
