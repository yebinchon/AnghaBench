; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_xact.c_xact_redo_commit.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_xact.c_xact_redo_commit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@XACT_XINFO_HAS_ORIGIN = common dso_local global i32 0, align 4
@InvalidRepOriginId = common dso_local global i32 0, align 4
@standbyState = common dso_local global i64 0, align 8
@STANDBY_DISABLED = common dso_local global i64 0, align 8
@XACT_XINFO_HAS_AE_LOCKS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i32, i32, i32)* @xact_redo_commit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xact_redo_commit(%struct.TYPE_3__* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load i32, i32* %6, align 4
  %12 = call i32 @TransactionIdIsValid(i32 %11)
  %13 = call i32 @Assert(i32 %12)
  %14 = load i32, i32* %6, align 4
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 5
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 4
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @TransactionIdLatest(i32 %14, i32 %17, i32 %20)
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %9, align 4
  %23 = call i32 @AdvanceNextFullTransactionIdPastXid(i32 %22)
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @XACT_XINFO_HAS_ORIGIN, align 4
  %28 = and i32 %26, %27
  %29 = icmp eq i32 %28, 0
  %30 = zext i1 %29 to i32
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* @InvalidRepOriginId, align 4
  %33 = icmp eq i32 %31, %32
  %34 = zext i1 %33 to i32
  %35 = icmp eq i32 %30, %34
  %36 = zext i1 %35 to i32
  %37 = call i32 @Assert(i32 %36)
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @XACT_XINFO_HAS_ORIGIN, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %4
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 11
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %10, align 4
  br label %52

48:                                               ; preds = %4
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 10
  %51 = load i32, i32* %50, align 8
  store i32 %51, i32* %10, align 4
  br label %52

52:                                               ; preds = %48, %44
  %53 = load i32, i32* %6, align 4
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 5
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 4
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* %10, align 4
  %61 = load i32, i32* %8, align 4
  %62 = call i32 @TransactionTreeSetCommitTsData(i32 %53, i32 %56, i32 %59, i32 %60, i32 %61, i32 0)
  %63 = load i64, i64* @standbyState, align 8
  %64 = load i64, i64* @STANDBY_DISABLED, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %75

66:                                               ; preds = %52
  %67 = load i32, i32* %6, align 4
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 5
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 4
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @TransactionIdCommitTree(i32 %67, i32 %70, i32 %73)
  br label %129

75:                                               ; preds = %52
  %76 = load i32, i32* %9, align 4
  %77 = call i32 @RecordKnownAssignedTransactionIds(i32 %76)
  %78 = load i32, i32* %6, align 4
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 5
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 4
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* %7, align 4
  %86 = call i32 @TransactionIdAsyncCommitTree(i32 %78, i32 %81, i32 %84, i32 %85)
  %87 = load i32, i32* %6, align 4
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 5
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 4
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* %9, align 4
  %95 = call i32 @ExpireTreeKnownAssignedTransactionIds(i32 %87, i32 %90, i32 %93, i32 %94)
  %96 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 9
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 8
  %101 = load i32, i32* %100, align 8
  %102 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = call i32 @XactCompletionRelcacheInitFileInval(i32 %104)
  %106 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 7
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i32 0, i32 6
  %111 = load i32, i32* %110, align 8
  %112 = call i32 @ProcessCommittedInvalidationMessages(i32 %98, i32 %101, i32 %105, i32 %108, i32 %111)
  %113 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = load i32, i32* @XACT_XINFO_HAS_AE_LOCKS, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %128

119:                                              ; preds = %75
  %120 = load i32, i32* %6, align 4
  %121 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i32 0, i32 5
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %124, i32 0, i32 4
  %126 = load i32, i32* %125, align 8
  %127 = call i32 @StandbyReleaseLockTree(i32 %120, i32 %123, i32 %126)
  br label %128

128:                                              ; preds = %119, %75
  br label %129

129:                                              ; preds = %128, %66
  %130 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %131 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = load i32, i32* @XACT_XINFO_HAS_ORIGIN, align 4
  %134 = and i32 %132, %133
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %143

136:                                              ; preds = %129
  %137 = load i32, i32* %8, align 4
  %138 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %139 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %138, i32 0, i32 3
  %140 = load i32, i32* %139, align 4
  %141 = load i32, i32* %7, align 4
  %142 = call i32 @replorigin_advance(i32 %137, i32 %140, i32 %141, i32 0, i32 0)
  br label %143

143:                                              ; preds = %136, %129
  %144 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %145 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %144, i32 0, i32 1
  %146 = load i64, i64* %145, align 8
  %147 = icmp sgt i64 %146, 0
  br i1 %147, label %148, label %158

148:                                              ; preds = %143
  %149 = load i32, i32* %7, align 4
  %150 = call i32 @XLogFlush(i32 %149)
  %151 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %152 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 8
  %154 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %155 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %154, i32 0, i32 1
  %156 = load i64, i64* %155, align 8
  %157 = call i32 @DropRelationFiles(i32 %153, i64 %156, i32 1)
  br label %158

158:                                              ; preds = %148, %143
  %159 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %160 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = call i64 @XactCompletionForceSyncCommit(i32 %161)
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %167

164:                                              ; preds = %158
  %165 = load i32, i32* %7, align 4
  %166 = call i32 @XLogFlush(i32 %165)
  br label %167

167:                                              ; preds = %164, %158
  %168 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %169 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = call i64 @XactCompletionApplyFeedback(i32 %170)
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %175

173:                                              ; preds = %167
  %174 = call i32 (...) @XLogRequestWalReceiverReply()
  br label %175

175:                                              ; preds = %173, %167
  ret void
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @TransactionIdIsValid(i32) #1

declare dso_local i32 @TransactionIdLatest(i32, i32, i32) #1

declare dso_local i32 @AdvanceNextFullTransactionIdPastXid(i32) #1

declare dso_local i32 @TransactionTreeSetCommitTsData(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @TransactionIdCommitTree(i32, i32, i32) #1

declare dso_local i32 @RecordKnownAssignedTransactionIds(i32) #1

declare dso_local i32 @TransactionIdAsyncCommitTree(i32, i32, i32, i32) #1

declare dso_local i32 @ExpireTreeKnownAssignedTransactionIds(i32, i32, i32, i32) #1

declare dso_local i32 @ProcessCommittedInvalidationMessages(i32, i32, i32, i32, i32) #1

declare dso_local i32 @XactCompletionRelcacheInitFileInval(i32) #1

declare dso_local i32 @StandbyReleaseLockTree(i32, i32, i32) #1

declare dso_local i32 @replorigin_advance(i32, i32, i32, i32, i32) #1

declare dso_local i32 @XLogFlush(i32) #1

declare dso_local i32 @DropRelationFiles(i32, i64, i32) #1

declare dso_local i64 @XactCompletionForceSyncCommit(i32) #1

declare dso_local i64 @XactCompletionApplyFeedback(i32) #1

declare dso_local i32 @XLogRequestWalReceiverReply(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
