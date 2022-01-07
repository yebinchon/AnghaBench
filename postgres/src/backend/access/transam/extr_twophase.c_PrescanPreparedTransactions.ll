; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_twophase.c_PrescanPreparedTransactions.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_twophase.c_PrescanPreparedTransactions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32, %struct.TYPE_4__** }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }

@ShmemVariableCache = common dso_local global %struct.TYPE_6__* null, align 8
@TwoPhaseStateLock = common dso_local global i32 0, align 4
@LW_EXCLUSIVE = common dso_local global i32 0, align 4
@TwoPhaseState = common dso_local global %struct.TYPE_5__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @PrescanPreparedTransactions(i32** %0, i32* %1) #0 {
  %3 = alloca i32**, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca %struct.TYPE_4__*, align 8
  store i32** %0, i32*** %3, align 8
  store i32* %1, i32** %4, align 8
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ShmemVariableCache, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @XidFromFullTransactionId(i32 %18)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  store i32 %20, i32* %7, align 4
  store i32* null, i32** %8, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %21 = load i32, i32* @TwoPhaseStateLock, align 4
  %22 = load i32, i32* @LW_EXCLUSIVE, align 4
  %23 = call i32 @LWLockAcquire(i32 %21, i32 %22)
  store i32 0, i32* %11, align 4
  br label %24

24:                                               ; preds = %99, %2
  %25 = load i32, i32* %11, align 4
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** @TwoPhaseState, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp slt i32 %25, %28
  br i1 %29, label %30, label %102

30:                                               ; preds = %24
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** @TwoPhaseState, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 1
  %33 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %32, align 8
  %34 = load i32, i32* %11, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %33, i64 %35
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  store %struct.TYPE_4__* %37, %struct.TYPE_4__** %14, align 8
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @Assert(i32 %40)
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %12, align 4
  %45 = load i32, i32* %12, align 4
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i8* @ProcessTwoPhaseBuffer(i32 %45, i32 %48, i32 %51, i32 0, i32 1)
  store i8* %52, i8** %13, align 8
  %53 = load i8*, i8** %13, align 8
  %54 = icmp eq i8* %53, null
  br i1 %54, label %55, label %56

55:                                               ; preds = %30
  br label %99

56:                                               ; preds = %30
  %57 = load i32, i32* %12, align 4
  %58 = load i32, i32* %7, align 4
  %59 = call i64 @TransactionIdPrecedes(i32 %57, i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %56
  %62 = load i32, i32* %12, align 4
  store i32 %62, i32* %7, align 4
  br label %63

63:                                               ; preds = %61, %56
  %64 = load i32**, i32*** %3, align 8
  %65 = icmp ne i32** %64, null
  br i1 %65, label %66, label %96

66:                                               ; preds = %63
  %67 = load i32, i32* %9, align 4
  %68 = load i32, i32* %10, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %89

70:                                               ; preds = %66
  %71 = load i32, i32* %9, align 4
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %79

73:                                               ; preds = %70
  store i32 10, i32* %10, align 4
  %74 = load i32, i32* %10, align 4
  %75 = sext i32 %74 to i64
  %76 = mul i64 %75, 4
  %77 = trunc i64 %76 to i32
  %78 = call i32* @palloc(i32 %77)
  store i32* %78, i32** %8, align 8
  br label %88

79:                                               ; preds = %70
  %80 = load i32, i32* %10, align 4
  %81 = mul nsw i32 %80, 2
  store i32 %81, i32* %10, align 4
  %82 = load i32*, i32** %8, align 8
  %83 = load i32, i32* %10, align 4
  %84 = sext i32 %83 to i64
  %85 = mul i64 %84, 4
  %86 = trunc i64 %85 to i32
  %87 = call i32* @repalloc(i32* %82, i32 %86)
  store i32* %87, i32** %8, align 8
  br label %88

88:                                               ; preds = %79, %73
  br label %89

89:                                               ; preds = %88, %66
  %90 = load i32, i32* %12, align 4
  %91 = load i32*, i32** %8, align 8
  %92 = load i32, i32* %9, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %9, align 4
  %94 = sext i32 %92 to i64
  %95 = getelementptr inbounds i32, i32* %91, i64 %94
  store i32 %90, i32* %95, align 4
  br label %96

96:                                               ; preds = %89, %63
  %97 = load i8*, i8** %13, align 8
  %98 = call i32 @pfree(i8* %97)
  br label %99

99:                                               ; preds = %96, %55
  %100 = load i32, i32* %11, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %11, align 4
  br label %24

102:                                              ; preds = %24
  %103 = load i32, i32* @TwoPhaseStateLock, align 4
  %104 = call i32 @LWLockRelease(i32 %103)
  %105 = load i32**, i32*** %3, align 8
  %106 = icmp ne i32** %105, null
  br i1 %106, label %107, label %112

107:                                              ; preds = %102
  %108 = load i32*, i32** %8, align 8
  %109 = load i32**, i32*** %3, align 8
  store i32* %108, i32** %109, align 8
  %110 = load i32, i32* %9, align 4
  %111 = load i32*, i32** %4, align 8
  store i32 %110, i32* %111, align 4
  br label %112

112:                                              ; preds = %107, %102
  %113 = load i32, i32* %7, align 4
  ret i32 %113
}

declare dso_local i32 @XidFromFullTransactionId(i32) #1

declare dso_local i32 @LWLockAcquire(i32, i32) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i8* @ProcessTwoPhaseBuffer(i32, i32, i32, i32, i32) #1

declare dso_local i64 @TransactionIdPrecedes(i32, i32) #1

declare dso_local i32* @palloc(i32) #1

declare dso_local i32* @repalloc(i32*, i32) #1

declare dso_local i32 @pfree(i8*) #1

declare dso_local i32 @LWLockRelease(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
