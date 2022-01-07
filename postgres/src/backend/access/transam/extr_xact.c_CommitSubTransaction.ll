; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_xact.c_CommitSubTransaction.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_xact.c_CommitSubTransaction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32*, %struct.TYPE_4__*, i32, i32, i32, i32, i32, i64 }
%struct.TYPE_4__ = type { i32*, i32 }

@CurrentTransactionState = common dso_local global %struct.TYPE_5__* null, align 8
@.str = private unnamed_addr constant [21 x i8] c"CommitSubTransaction\00", align 1
@TRANS_INPROGRESS = common dso_local global i64 0, align 8
@WARNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"CommitSubTransaction while in %s state\00", align 1
@SUBXACT_EVENT_PRE_COMMIT_SUB = common dso_local global i32 0, align 4
@TRANS_COMMIT = common dso_local global i64 0, align 8
@SUBXACT_EVENT_COMMIT_SUB = common dso_local global i32 0, align 4
@RESOURCE_RELEASE_BEFORE_LOCKS = common dso_local global i32 0, align 4
@CurrentResourceOwner = common dso_local global i32* null, align 8
@RESOURCE_RELEASE_LOCKS = common dso_local global i32 0, align 4
@RESOURCE_RELEASE_AFTER_LOCKS = common dso_local global i32 0, align 4
@XactReadOnly = common dso_local global i32 0, align 4
@CurTransactionResourceOwner = common dso_local global i32* null, align 8
@TRANS_DEFAULT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @CommitSubTransaction to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CommitSubTransaction() #0 {
  %1 = alloca %struct.TYPE_5__*, align 8
  %2 = load %struct.TYPE_5__*, %struct.TYPE_5__** @CurrentTransactionState, align 8
  store %struct.TYPE_5__* %2, %struct.TYPE_5__** %1, align 8
  %3 = call i32 @ShowTransactionState(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %4 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %5 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @TRANS_INPROGRESS, align 8
  %8 = icmp ne i64 %6, %7
  br i1 %8, label %9, label %16

9:                                                ; preds = %0
  %10 = load i32, i32* @WARNING, align 4
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = call i32 @TransStateAsString(i64 %13)
  %15 = call i32 @elog(i32 %10, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %14)
  br label %16

16:                                               ; preds = %9, %0
  %17 = load i32, i32* @SUBXACT_EVENT_PRE_COMMIT_SUB, align 4
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 5
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 2
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @CallSubXactCallbacks(i32 %17, i32 %20, i32 %25)
  %27 = call i64 (...) @IsInParallelMode()
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %16
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 5
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @AtEOSubXact_Parallel(i32 1, i32 %32)
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 8
  store i64 0, i64* %35, align 8
  br label %36

36:                                               ; preds = %29, %16
  %37 = load i64, i64* @TRANS_COMMIT, align 8
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  store i64 %37, i64* %39, align 8
  %40 = call i32 (...) @CommandCounterIncrement()
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 7
  %43 = load i32, i32* %42, align 8
  %44 = call i64 @FullTransactionIdIsValid(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %36
  %47 = call i32 (...) @AtSubCommit_childXids()
  br label %48

48:                                               ; preds = %46, %36
  %49 = call i32 @AfterTriggerEndSubXact(i32 1)
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 5
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 2
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 2
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = call i32 @AtSubCommit_Portals(i32 %52, i32 %57, i32* %62)
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 5
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 2
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @AtEOSubXact_LargeObject(i32 1, i32 %66, i32 %71)
  %73 = call i32 (...) @AtSubCommit_Notify()
  %74 = load i32, i32* @SUBXACT_EVENT_COMMIT_SUB, align 4
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 5
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 2
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @CallSubXactCallbacks(i32 %74, i32 %77, i32 %82)
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 1
  %86 = load i32*, i32** %85, align 8
  %87 = load i32, i32* @RESOURCE_RELEASE_BEFORE_LOCKS, align 4
  %88 = call i32 @ResourceOwnerRelease(i32* %86, i32 %87, i32 1, i32 0)
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 5
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 2
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @AtEOSubXact_RelationCache(i32 1, i32 %91, i32 %96)
  %98 = call i32 @AtEOSubXact_Inval(i32 1)
  %99 = call i32 (...) @AtSubCommit_smgr()
  %100 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 1
  %102 = load i32*, i32** %101, align 8
  store i32* %102, i32** @CurrentResourceOwner, align 8
  %103 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 7
  %105 = load i32, i32* %104, align 8
  %106 = call i64 @FullTransactionIdIsValid(i32 %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %114

108:                                              ; preds = %48
  %109 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 7
  %111 = load i32, i32* %110, align 8
  %112 = call i32 @XidFromFullTransactionId(i32 %111)
  %113 = call i32 @XactLockTableDelete(i32 %112)
  br label %114

114:                                              ; preds = %108, %48
  %115 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i32 0, i32 1
  %117 = load i32*, i32** %116, align 8
  %118 = load i32, i32* @RESOURCE_RELEASE_LOCKS, align 4
  %119 = call i32 @ResourceOwnerRelease(i32* %117, i32 %118, i32 1, i32 0)
  %120 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i32 0, i32 1
  %122 = load i32*, i32** %121, align 8
  %123 = load i32, i32* @RESOURCE_RELEASE_AFTER_LOCKS, align 4
  %124 = call i32 @ResourceOwnerRelease(i32* %122, i32 %123, i32 1, i32 0)
  %125 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i32 0, i32 6
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @AtEOXact_GUC(i32 1, i32 %127)
  %129 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %130 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %129, i32 0, i32 5
  %131 = load i32, i32* %130, align 8
  %132 = call i32 @AtEOSubXact_SPI(i32 1, i32 %131)
  %133 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %134 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %133, i32 0, i32 5
  %135 = load i32, i32* %134, align 8
  %136 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %137 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %136, i32 0, i32 2
  %138 = load %struct.TYPE_4__*, %struct.TYPE_4__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 8
  %141 = call i32 @AtEOSubXact_on_commit_actions(i32 1, i32 %135, i32 %140)
  %142 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %143 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %142, i32 0, i32 5
  %144 = load i32, i32* %143, align 8
  %145 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %146 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %145, i32 0, i32 2
  %147 = load %struct.TYPE_4__*, %struct.TYPE_4__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 8
  %150 = call i32 @AtEOSubXact_Namespace(i32 1, i32 %144, i32 %149)
  %151 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %152 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %151, i32 0, i32 5
  %153 = load i32, i32* %152, align 8
  %154 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %155 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %154, i32 0, i32 2
  %156 = load %struct.TYPE_4__*, %struct.TYPE_4__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 8
  %159 = call i32 @AtEOSubXact_Files(i32 1, i32 %153, i32 %158)
  %160 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %161 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %160, i32 0, i32 4
  %162 = load i32, i32* %161, align 4
  %163 = call i32 @AtEOSubXact_HashTables(i32 1, i32 %162)
  %164 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %165 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %164, i32 0, i32 4
  %166 = load i32, i32* %165, align 4
  %167 = call i32 @AtEOSubXact_PgStat(i32 1, i32 %166)
  %168 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %169 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %168, i32 0, i32 4
  %170 = load i32, i32* %169, align 4
  %171 = call i32 @AtSubCommit_Snapshot(i32 %170)
  %172 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %173 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %172, i32 0, i32 4
  %174 = load i32, i32* %173, align 4
  %175 = call i32 @AtEOSubXact_ApplyLauncher(i32 1, i32 %174)
  %176 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %177 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %176, i32 0, i32 3
  %178 = load i32, i32* %177, align 8
  store i32 %178, i32* @XactReadOnly, align 4
  %179 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %180 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %179, i32 0, i32 2
  %181 = load %struct.TYPE_4__*, %struct.TYPE_4__** %180, align 8
  %182 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %181, i32 0, i32 0
  %183 = load i32*, i32** %182, align 8
  store i32* %183, i32** @CurrentResourceOwner, align 8
  %184 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %185 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %184, i32 0, i32 2
  %186 = load %struct.TYPE_4__*, %struct.TYPE_4__** %185, align 8
  %187 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %186, i32 0, i32 0
  %188 = load i32*, i32** %187, align 8
  store i32* %188, i32** @CurTransactionResourceOwner, align 8
  %189 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %190 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %189, i32 0, i32 1
  %191 = load i32*, i32** %190, align 8
  %192 = call i32 @ResourceOwnerDelete(i32* %191)
  %193 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %194 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %193, i32 0, i32 1
  store i32* null, i32** %194, align 8
  %195 = call i32 (...) @AtSubCommit_Memory()
  %196 = load i64, i64* @TRANS_DEFAULT, align 8
  %197 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %198 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %197, i32 0, i32 0
  store i64 %196, i64* %198, align 8
  %199 = call i32 (...) @PopTransaction()
  ret void
}

declare dso_local i32 @ShowTransactionState(i8*) #1

declare dso_local i32 @elog(i32, i8*, i32) #1

declare dso_local i32 @TransStateAsString(i64) #1

declare dso_local i32 @CallSubXactCallbacks(i32, i32, i32) #1

declare dso_local i64 @IsInParallelMode(...) #1

declare dso_local i32 @AtEOSubXact_Parallel(i32, i32) #1

declare dso_local i32 @CommandCounterIncrement(...) #1

declare dso_local i64 @FullTransactionIdIsValid(i32) #1

declare dso_local i32 @AtSubCommit_childXids(...) #1

declare dso_local i32 @AfterTriggerEndSubXact(i32) #1

declare dso_local i32 @AtSubCommit_Portals(i32, i32, i32*) #1

declare dso_local i32 @AtEOSubXact_LargeObject(i32, i32, i32) #1

declare dso_local i32 @AtSubCommit_Notify(...) #1

declare dso_local i32 @ResourceOwnerRelease(i32*, i32, i32, i32) #1

declare dso_local i32 @AtEOSubXact_RelationCache(i32, i32, i32) #1

declare dso_local i32 @AtEOSubXact_Inval(i32) #1

declare dso_local i32 @AtSubCommit_smgr(...) #1

declare dso_local i32 @XactLockTableDelete(i32) #1

declare dso_local i32 @XidFromFullTransactionId(i32) #1

declare dso_local i32 @AtEOXact_GUC(i32, i32) #1

declare dso_local i32 @AtEOSubXact_SPI(i32, i32) #1

declare dso_local i32 @AtEOSubXact_on_commit_actions(i32, i32, i32) #1

declare dso_local i32 @AtEOSubXact_Namespace(i32, i32, i32) #1

declare dso_local i32 @AtEOSubXact_Files(i32, i32, i32) #1

declare dso_local i32 @AtEOSubXact_HashTables(i32, i32) #1

declare dso_local i32 @AtEOSubXact_PgStat(i32, i32) #1

declare dso_local i32 @AtSubCommit_Snapshot(i32) #1

declare dso_local i32 @AtEOSubXact_ApplyLauncher(i32, i32) #1

declare dso_local i32 @ResourceOwnerDelete(i32*) #1

declare dso_local i32 @AtSubCommit_Memory(...) #1

declare dso_local i32 @PopTransaction(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
