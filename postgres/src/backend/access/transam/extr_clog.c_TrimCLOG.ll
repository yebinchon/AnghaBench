; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_clog.c_TrimCLOG.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_clog.c_TrimCLOG.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i8**, i32* }

@ShmemVariableCache = common dso_local global %struct.TYPE_7__* null, align 8
@CLogControlLock = common dso_local global i32 0, align 4
@LW_EXCLUSIVE = common dso_local global i32 0, align 4
@ClogCtl = common dso_local global %struct.TYPE_6__* null, align 8
@CLOG_BITS_PER_XACT = common dso_local global i32 0, align 4
@BLCKSZ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @TrimCLOG() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = load %struct.TYPE_7__*, %struct.TYPE_7__** @ShmemVariableCache, align 8
  %8 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @XidFromFullTransactionId(i32 %9)
  store i32 %10, i32* %1, align 4
  %11 = load i32, i32* %1, align 4
  %12 = call i32 @TransactionIdToPage(i32 %11)
  store i32 %12, i32* %2, align 4
  %13 = load i32, i32* @CLogControlLock, align 4
  %14 = load i32, i32* @LW_EXCLUSIVE, align 4
  %15 = call i32 @LWLockAcquire(i32 %13, i32 %14)
  %16 = load i32, i32* %2, align 4
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ClogCtl, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  store i32 %16, i32* %20, align 8
  %21 = load i32, i32* %1, align 4
  %22 = call i64 @TransactionIdToPgIndex(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %70

24:                                               ; preds = %0
  %25 = load i32, i32* %1, align 4
  %26 = call i32 @TransactionIdToByte(i32 %25)
  store i32 %26, i32* %3, align 4
  %27 = load i32, i32* %1, align 4
  %28 = call i32 @TransactionIdToBIndex(i32 %27)
  %29 = load i32, i32* @CLOG_BITS_PER_XACT, align 4
  %30 = mul nsw i32 %28, %29
  store i32 %30, i32* %4, align 4
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ClogCtl, align 8
  %32 = load i32, i32* %2, align 4
  %33 = load i32, i32* %1, align 4
  %34 = call i32 @SimpleLruReadPage(%struct.TYPE_6__* %31, i32 %32, i32 0, i32 %33)
  store i32 %34, i32* %5, align 4
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ClogCtl, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 1
  %39 = load i8**, i8*** %38, align 8
  %40 = load i32, i32* %5, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i8*, i8** %39, i64 %41
  %43 = load i8*, i8** %42, align 8
  %44 = load i32, i32* %3, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8, i8* %43, i64 %45
  store i8* %46, i8** %6, align 8
  %47 = load i32, i32* %4, align 4
  %48 = shl i32 1, %47
  %49 = sub nsw i32 %48, 1
  %50 = load i8*, i8** %6, align 8
  %51 = load i8, i8* %50, align 1
  %52 = sext i8 %51 to i32
  %53 = and i32 %52, %49
  %54 = trunc i32 %53 to i8
  store i8 %54, i8* %50, align 1
  %55 = load i8*, i8** %6, align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 1
  %57 = load i32, i32* @BLCKSZ, align 4
  %58 = load i32, i32* %3, align 4
  %59 = sub nsw i32 %57, %58
  %60 = sub nsw i32 %59, 1
  %61 = call i32 @MemSet(i8* %56, i32 0, i32 %60)
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ClogCtl, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 2
  %66 = load i32*, i32** %65, align 8
  %67 = load i32, i32* %5, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  store i32 1, i32* %69, align 4
  br label %70

70:                                               ; preds = %24, %0
  %71 = load i32, i32* @CLogControlLock, align 4
  %72 = call i32 @LWLockRelease(i32 %71)
  ret void
}

declare dso_local i32 @XidFromFullTransactionId(i32) #1

declare dso_local i32 @TransactionIdToPage(i32) #1

declare dso_local i32 @LWLockAcquire(i32, i32) #1

declare dso_local i64 @TransactionIdToPgIndex(i32) #1

declare dso_local i32 @TransactionIdToByte(i32) #1

declare dso_local i32 @TransactionIdToBIndex(i32) #1

declare dso_local i32 @SimpleLruReadPage(%struct.TYPE_6__*, i32, i32, i32) #1

declare dso_local i32 @MemSet(i8*, i32, i32) #1

declare dso_local i32 @LWLockRelease(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
