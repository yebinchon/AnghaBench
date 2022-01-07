; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_twophase.c_RecoverPreparedTransactions.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_twophase.c_RecoverPreparedTransactions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, %struct.TYPE_8__** }
%struct.TYPE_8__ = type { i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@TwoPhaseStateLock = common dso_local global i32 0, align 4
@LW_EXCLUSIVE = common dso_local global i32 0, align 4
@TwoPhaseState = common dso_local global %struct.TYPE_9__* null, align 8
@LOG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"recovering prepared transaction %u from shared memory\00", align 1
@twophase_recover_callbacks = common dso_local global i32 0, align 4
@InHotStandby = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @RecoverPreparedTransactions() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = load i32, i32* @TwoPhaseStateLock, align 4
  %10 = load i32, i32* @LW_EXCLUSIVE, align 4
  %11 = call i32 @LWLockAcquire(i32 %9, i32 %10)
  store i32 0, i32* %1, align 4
  br label %12

12:                                               ; preds = %152, %0
  %13 = load i32, i32* %1, align 4
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** @TwoPhaseState, align 8
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp slt i32 %13, %16
  br i1 %17, label %18, label %155

18:                                               ; preds = %12
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** @TwoPhaseState, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 1
  %21 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %20, align 8
  %22 = load i32, i32* %1, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %21, i64 %23
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %24, align 8
  store %struct.TYPE_8__* %25, %struct.TYPE_8__** %4, align 8
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %2, align 4
  %29 = load i32, i32* %2, align 4
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i8* @ProcessTwoPhaseBuffer(i32 %29, i32 %32, i32 %35, i32 1, i32 0)
  store i8* %36, i8** %3, align 8
  %37 = load i8*, i8** %3, align 8
  %38 = icmp eq i8* %37, null
  br i1 %38, label %39, label %40

39:                                               ; preds = %18
  br label %152

40:                                               ; preds = %18
  %41 = load i32, i32* @LOG, align 4
  %42 = load i32, i32* %2, align 4
  %43 = call i32 @errmsg(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i32 %42)
  %44 = call i32 @ereport(i32 %41, i32 %43)
  %45 = load i8*, i8** %3, align 8
  %46 = bitcast i8* %45 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %46, %struct.TYPE_7__** %6, align 8
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 8
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %2, align 4
  %51 = call i32 @TransactionIdEquals(i32 %49, i32 %50)
  %52 = call i32 @Assert(i32 %51)
  %53 = load i8*, i8** %3, align 8
  %54 = call i32 @MAXALIGN(i32 36)
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i8, i8* %53, i64 %55
  store i8* %56, i8** %5, align 8
  %57 = load i8*, i8** %5, align 8
  store i8* %57, i8** %8, align 8
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @MAXALIGN(i32 %60)
  %62 = load i8*, i8** %5, align 8
  %63 = sext i32 %61 to i64
  %64 = getelementptr inbounds i8, i8* %62, i64 %63
  store i8* %64, i8** %5, align 8
  %65 = load i8*, i8** %5, align 8
  %66 = bitcast i8* %65 to i32*
  store i32* %66, i32** %7, align 8
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = sext i32 %69 to i64
  %71 = mul i64 %70, 4
  %72 = trunc i64 %71 to i32
  %73 = call i32 @MAXALIGN(i32 %72)
  %74 = load i8*, i8** %5, align 8
  %75 = sext i32 %73 to i64
  %76 = getelementptr inbounds i8, i8* %74, i64 %75
  store i8* %76, i8** %5, align 8
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = sext i32 %79 to i64
  %81 = mul i64 %80, 4
  %82 = trunc i64 %81 to i32
  %83 = call i32 @MAXALIGN(i32 %82)
  %84 = load i8*, i8** %5, align 8
  %85 = sext i32 %83 to i64
  %86 = getelementptr inbounds i8, i8* %84, i64 %85
  store i8* %86, i8** %5, align 8
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 4
  %90 = sext i32 %89 to i64
  %91 = mul i64 %90, 4
  %92 = trunc i64 %91 to i32
  %93 = call i32 @MAXALIGN(i32 %92)
  %94 = load i8*, i8** %5, align 8
  %95 = sext i32 %93 to i64
  %96 = getelementptr inbounds i8, i8* %94, i64 %95
  store i8* %96, i8** %5, align 8
  %97 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 4
  %99 = load i32, i32* %98, align 4
  %100 = sext i32 %99 to i64
  %101 = mul i64 %100, 4
  %102 = trunc i64 %101 to i32
  %103 = call i32 @MAXALIGN(i32 %102)
  %104 = load i8*, i8** %5, align 8
  %105 = sext i32 %103 to i64
  %106 = getelementptr inbounds i8, i8* %104, i64 %105
  store i8* %106, i8** %5, align 8
  %107 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %108 = load i32, i32* %2, align 4
  %109 = load i8*, i8** %8, align 8
  %110 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 7
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 6
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i32 0, i32 5
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @MarkAsPreparingGuts(%struct.TYPE_8__* %107, i32 %108, i8* %109, i32 %112, i32 %115, i32 %118)
  %120 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %121 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %120, i32 0, i32 0
  store i32 0, i32* %121, align 4
  %122 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %123 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = load i32*, i32** %7, align 8
  %127 = call i32 @GXactLoadSubxactData(%struct.TYPE_8__* %122, i32 %125, i32* %126)
  %128 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %129 = call i32 @MarkAsPrepared(%struct.TYPE_8__* %128, i32 1)
  %130 = load i32, i32* @TwoPhaseStateLock, align 4
  %131 = call i32 @LWLockRelease(i32 %130)
  %132 = load i8*, i8** %5, align 8
  %133 = load i32, i32* %2, align 4
  %134 = load i32, i32* @twophase_recover_callbacks, align 4
  %135 = call i32 @ProcessRecords(i8* %132, i32 %133, i32 %134)
  %136 = load i64, i64* @InHotStandby, align 8
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %145

138:                                              ; preds = %40
  %139 = load i32, i32* %2, align 4
  %140 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %141 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = load i32*, i32** %7, align 8
  %144 = call i32 @StandbyReleaseLockTree(i32 %139, i32 %142, i32* %143)
  br label %145

145:                                              ; preds = %138, %40
  %146 = call i32 (...) @PostPrepare_Twophase()
  %147 = load i8*, i8** %3, align 8
  %148 = call i32 @pfree(i8* %147)
  %149 = load i32, i32* @TwoPhaseStateLock, align 4
  %150 = load i32, i32* @LW_EXCLUSIVE, align 4
  %151 = call i32 @LWLockAcquire(i32 %149, i32 %150)
  br label %152

152:                                              ; preds = %145, %39
  %153 = load i32, i32* %1, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %1, align 4
  br label %12

155:                                              ; preds = %12
  %156 = load i32, i32* @TwoPhaseStateLock, align 4
  %157 = call i32 @LWLockRelease(i32 %156)
  ret void
}

declare dso_local i32 @LWLockAcquire(i32, i32) #1

declare dso_local i8* @ProcessTwoPhaseBuffer(i32, i32, i32, i32, i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errmsg(i8*, i32) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @TransactionIdEquals(i32, i32) #1

declare dso_local i32 @MAXALIGN(i32) #1

declare dso_local i32 @MarkAsPreparingGuts(%struct.TYPE_8__*, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @GXactLoadSubxactData(%struct.TYPE_8__*, i32, i32*) #1

declare dso_local i32 @MarkAsPrepared(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @LWLockRelease(i32) #1

declare dso_local i32 @ProcessRecords(i8*, i32, i32) #1

declare dso_local i32 @StandbyReleaseLockTree(i32, i32, i32*) #1

declare dso_local i32 @PostPrepare_Twophase(...) #1

declare dso_local i32 @pfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
