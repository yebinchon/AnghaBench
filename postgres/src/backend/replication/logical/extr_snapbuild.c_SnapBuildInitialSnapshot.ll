; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/replication/logical/extr_snapbuild.c_SnapBuildInitialSnapshot.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/replication/logical/extr_snapbuild.c_SnapBuildInitialSnapshot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 }
%struct.TYPE_10__ = type { i32, i32*, i32, i32, i32 }
%struct.TYPE_11__ = type { i64, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }

@FirstSnapshotSet = common dso_local global i32 0, align 4
@XactIsoLevel = common dso_local global i64 0, align 8
@XACT_REPEATABLE_READ = common dso_local global i64 0, align 8
@SNAPBUILD_CONSISTENT = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [73 x i8] c"cannot build an initial slot snapshot before reaching a consistent state\00", align 1
@.str.1 = private unnamed_addr constant [82 x i8] c"cannot build an initial slot snapshot, not all transactions are monitored anymore\00", align 1
@MyPgXact = common dso_local global %struct.TYPE_12__* null, align 8
@.str.2 = private unnamed_addr constant [75 x i8] c"cannot build an initial slot snapshot when MyPgXact->xmin already is valid\00", align 1
@xidComparator = common dso_local global i32 0, align 4
@ERRCODE_T_R_SERIALIZATION_FAILURE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"initial slot snapshot too large\00", align 1
@SNAPSHOT_MVCC = common dso_local global i32 0, align 4
@LW_SHARED = common dso_local global i32 0, align 4
@ProcArrayLock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_10__* @SnapBuildInitialSnapshot(%struct.TYPE_11__* %0) #0 {
  %2 = alloca %struct.TYPE_11__*, align 8
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %2, align 8
  store i32 0, i32* %6, align 4
  %8 = load i32, i32* @FirstSnapshotSet, align 4
  %9 = icmp ne i32 %8, 0
  %10 = xor i1 %9, true
  %11 = zext i1 %10 to i32
  %12 = call i32 @Assert(i32 %11)
  %13 = load i64, i64* @XactIsoLevel, align 8
  %14 = load i64, i64* @XACT_REPEATABLE_READ, align 8
  %15 = icmp eq i64 %13, %14
  %16 = zext i1 %15 to i32
  %17 = call i32 @Assert(i32 %16)
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @SNAPBUILD_CONSISTENT, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %1
  %24 = load i32, i32* @ERROR, align 4
  %25 = call i32 @elog(i32 %24, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str, i64 0, i64 0))
  br label %26

26:                                               ; preds = %23, %1
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %26
  %33 = load i32, i32* @ERROR, align 4
  %34 = call i32 @elog(i32 %33, i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.1, i64 0, i64 0))
  br label %35

35:                                               ; preds = %32, %26
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** @MyPgXact, align 8
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i64 @TransactionIdIsValid(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %35
  %42 = load i32, i32* @ERROR, align 4
  %43 = call i32 @elog(i32 %42, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.2, i64 0, i64 0))
  br label %44

44:                                               ; preds = %41, %35
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %46 = call %struct.TYPE_10__* @SnapBuildBuildSnapshot(%struct.TYPE_11__* %45)
  store %struct.TYPE_10__* %46, %struct.TYPE_10__** %3, align 8
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 4
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** @MyPgXact, align 8
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 4
  %52 = call i32 (...) @GetMaxSnapshotXidCount()
  %53 = sext i32 %52 to i64
  %54 = mul i64 4, %53
  %55 = trunc i64 %54 to i32
  %56 = call i64 @palloc(i32 %55)
  %57 = inttoptr i64 %56 to i32*
  store i32* %57, i32** %5, align 8
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 4
  %60 = load i32, i32* %59, align 8
  store i32 %60, i32* %4, align 4
  br label %61

61:                                               ; preds = %96, %44
  %62 = load i32, i32* %4, align 4
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 4
  %66 = call i64 @NormalTransactionIdPrecedes(i32 %62, i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %99

68:                                               ; preds = %61
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 1
  %71 = load i32*, i32** %70, align 8
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @xidComparator, align 4
  %76 = call i8* @bsearch(i32* %4, i32* %71, i32 %74, i32 4, i32 %75)
  store i8* %76, i8** %7, align 8
  %77 = load i8*, i8** %7, align 8
  %78 = icmp eq i8* %77, null
  br i1 %78, label %79, label %96

79:                                               ; preds = %68
  %80 = load i32, i32* %6, align 4
  %81 = call i32 (...) @GetMaxSnapshotXidCount()
  %82 = icmp sge i32 %80, %81
  br i1 %82, label %83, label %89

83:                                               ; preds = %79
  %84 = load i32, i32* @ERROR, align 4
  %85 = load i32, i32* @ERRCODE_T_R_SERIALIZATION_FAILURE, align 4
  %86 = call i32 @errcode(i32 %85)
  %87 = call i32 @errmsg(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  %88 = call i32 @ereport(i32 %84, i32 %87)
  br label %89

89:                                               ; preds = %83, %79
  %90 = load i32, i32* %4, align 4
  %91 = load i32*, i32** %5, align 8
  %92 = load i32, i32* %6, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %6, align 4
  %94 = sext i32 %92 to i64
  %95 = getelementptr inbounds i32, i32* %91, i64 %94
  store i32 %90, i32* %95, align 4
  br label %96

96:                                               ; preds = %89, %68
  %97 = load i32, i32* %4, align 4
  %98 = call i32 @TransactionIdAdvance(i32 %97)
  br label %61

99:                                               ; preds = %61
  %100 = load i32, i32* @SNAPSHOT_MVCC, align 4
  %101 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 2
  store i32 %100, i32* %102, align 8
  %103 = load i32, i32* %6, align 4
  %104 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %104, i32 0, i32 0
  store i32 %103, i32* %105, align 8
  %106 = load i32*, i32** %5, align 8
  %107 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %107, i32 0, i32 1
  store i32* %106, i32** %108, align 8
  %109 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  ret %struct.TYPE_10__* %109
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @elog(i32, i8*) #1

declare dso_local i64 @TransactionIdIsValid(i32) #1

declare dso_local %struct.TYPE_10__* @SnapBuildBuildSnapshot(%struct.TYPE_11__*) #1

declare dso_local i64 @palloc(i32) #1

declare dso_local i32 @GetMaxSnapshotXidCount(...) #1

declare dso_local i64 @NormalTransactionIdPrecedes(i32, i32) #1

declare dso_local i8* @bsearch(i32*, i32*, i32, i32, i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*) #1

declare dso_local i32 @TransactionIdAdvance(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
