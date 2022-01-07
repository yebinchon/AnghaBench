; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/storage/lmgr/extr_lock.c_FastPathGetRelationLockEntry.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/storage/lmgr/extr_lock.c_FastPathGetRelationLockEntry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { i64*, i32 }
%struct.TYPE_21__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_23__ = type { i64, %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i64, %struct.TYPE_22__ }
%struct.TYPE_22__ = type { i64 }
%struct.TYPE_20__ = type { %struct.TYPE_24__*, i32* }

@LockMethods = common dso_local global i32* null, align 8
@DEFAULT_LOCKMETHOD = common dso_local global i64 0, align 8
@MyProc = common dso_local global %struct.TYPE_24__* null, align 8
@LW_EXCLUSIVE = common dso_local global i32 0, align 4
@FP_LOCK_SLOTS_PER_BACKEND = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_OUT_OF_MEMORY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"out of shared memory\00", align 1
@.str.1 = private unnamed_addr constant [54 x i8] c"You might need to increase max_locks_per_transaction.\00", align 1
@LW_SHARED = common dso_local global i32 0, align 4
@LockMethodLockHash = common dso_local global i32 0, align 4
@HASH_FIND = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"failed to re-find shared lock object\00", align 1
@LockMethodProcLockHash = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [41 x i8] c"failed to re-find shared proclock object\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_21__* (%struct.TYPE_23__*)* @FastPathGetRelationLockEntry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_21__* @FastPathGetRelationLockEntry(%struct.TYPE_23__* %0) #0 {
  %2 = alloca %struct.TYPE_23__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_22__*, align 8
  %5 = alloca %struct.TYPE_21__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_20__, align 8
  %12 = alloca i64, align 8
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %2, align 8
  %13 = load i32*, i32** @LockMethods, align 8
  %14 = load i64, i64* @DEFAULT_LOCKMETHOD, align 8
  %15 = getelementptr inbounds i32, i32* %13, i64 %14
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %3, align 4
  %17 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %18, i32 0, i32 1
  store %struct.TYPE_22__* %19, %struct.TYPE_22__** %4, align 8
  store %struct.TYPE_21__* null, %struct.TYPE_21__** %5, align 8
  %20 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = call i32* @LockHashPartitionLock(i64 %22)
  store i32* %23, i32** %6, align 8
  %24 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  store i64 %26, i64* %7, align 8
  %27 = load %struct.TYPE_24__*, %struct.TYPE_24__** @MyProc, align 8
  %28 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %27, i32 0, i32 1
  %29 = load i32, i32* @LW_EXCLUSIVE, align 4
  %30 = call i32 @LWLockAcquire(i32* %28, i32 %29)
  store i64 0, i64* %8, align 8
  br label %31

31:                                               ; preds = %101, %1
  %32 = load i64, i64* %8, align 8
  %33 = load i64, i64* @FP_LOCK_SLOTS_PER_BACKEND, align 8
  %34 = icmp ult i64 %32, %33
  br i1 %34, label %35, label %104

35:                                               ; preds = %31
  %36 = load i64, i64* %7, align 8
  %37 = load %struct.TYPE_24__*, %struct.TYPE_24__** @MyProc, align 8
  %38 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %37, i32 0, i32 0
  %39 = load i64*, i64** %38, align 8
  %40 = load i64, i64* %8, align 8
  %41 = getelementptr inbounds i64, i64* %39, i64 %40
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %36, %42
  br i1 %43, label %49, label %44

44:                                               ; preds = %35
  %45 = load %struct.TYPE_24__*, %struct.TYPE_24__** @MyProc, align 8
  %46 = load i64, i64* %8, align 8
  %47 = call i64 @FAST_PATH_GET_BITS(%struct.TYPE_24__* %45, i64 %46)
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %44, %35
  br label %101

50:                                               ; preds = %44
  %51 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %52 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  store i64 %54, i64* %9, align 8
  %55 = load %struct.TYPE_24__*, %struct.TYPE_24__** @MyProc, align 8
  %56 = load i64, i64* %8, align 8
  %57 = load i64, i64* %9, align 8
  %58 = call i32 @FAST_PATH_CHECK_LOCKMODE(%struct.TYPE_24__* %55, i64 %56, i64 %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %50
  br label %104

61:                                               ; preds = %50
  %62 = load i32*, i32** %6, align 8
  %63 = load i32, i32* @LW_EXCLUSIVE, align 4
  %64 = call i32 @LWLockAcquire(i32* %62, i32 %63)
  %65 = load i32, i32* %3, align 4
  %66 = load %struct.TYPE_24__*, %struct.TYPE_24__** @MyProc, align 8
  %67 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %68 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %69 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* %9, align 8
  %72 = call %struct.TYPE_21__* @SetupLockInTable(i32 %65, %struct.TYPE_24__* %66, %struct.TYPE_22__* %67, i64 %70, i64 %71)
  store %struct.TYPE_21__* %72, %struct.TYPE_21__** %5, align 8
  %73 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %74 = icmp ne %struct.TYPE_21__* %73, null
  br i1 %74, label %87, label %75

75:                                               ; preds = %61
  %76 = load i32*, i32** %6, align 8
  %77 = call i32 @LWLockRelease(i32* %76)
  %78 = load %struct.TYPE_24__*, %struct.TYPE_24__** @MyProc, align 8
  %79 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %78, i32 0, i32 1
  %80 = call i32 @LWLockRelease(i32* %79)
  %81 = load i32, i32* @ERROR, align 4
  %82 = load i32, i32* @ERRCODE_OUT_OF_MEMORY, align 4
  %83 = call i32 @errcode(i32 %82)
  %84 = call i32 @errmsg(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %85 = call i32 @errhint(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0))
  %86 = call i32 @ereport(i32 %81, i32 %85)
  br label %87

87:                                               ; preds = %75, %61
  %88 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %93 = load i64, i64* %9, align 8
  %94 = call i32 @GrantLock(i32 %91, %struct.TYPE_21__* %92, i64 %93)
  %95 = load %struct.TYPE_24__*, %struct.TYPE_24__** @MyProc, align 8
  %96 = load i64, i64* %8, align 8
  %97 = load i64, i64* %9, align 8
  %98 = call i32 @FAST_PATH_CLEAR_LOCKMODE(%struct.TYPE_24__* %95, i64 %96, i64 %97)
  %99 = load i32*, i32** %6, align 8
  %100 = call i32 @LWLockRelease(i32* %99)
  br label %104

101:                                              ; preds = %49
  %102 = load i64, i64* %8, align 8
  %103 = add i64 %102, 1
  store i64 %103, i64* %8, align 8
  br label %31

104:                                              ; preds = %87, %60, %31
  %105 = load %struct.TYPE_24__*, %struct.TYPE_24__** @MyProc, align 8
  %106 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %105, i32 0, i32 1
  %107 = call i32 @LWLockRelease(i32* %106)
  %108 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %109 = icmp eq %struct.TYPE_21__* %108, null
  br i1 %109, label %110, label %151

110:                                              ; preds = %104
  %111 = load i32*, i32** %6, align 8
  %112 = load i32, i32* @LW_SHARED, align 4
  %113 = call i32 @LWLockAcquire(i32* %111, i32 %112)
  %114 = load i32, i32* @LockMethodLockHash, align 4
  %115 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %116 = bitcast %struct.TYPE_22__* %115 to i8*
  %117 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %118 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = load i32, i32* @HASH_FIND, align 4
  %121 = call i64 @hash_search_with_hash_value(i32 %114, i8* %116, i64 %119, i32 %120, i32* null)
  %122 = inttoptr i64 %121 to i32*
  store i32* %122, i32** %10, align 8
  %123 = load i32*, i32** %10, align 8
  %124 = icmp ne i32* %123, null
  br i1 %124, label %128, label %125

125:                                              ; preds = %110
  %126 = load i32, i32* @ERROR, align 4
  %127 = call i32 @elog(i32 %126, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  br label %128

128:                                              ; preds = %125, %110
  %129 = load i32*, i32** %10, align 8
  %130 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %11, i32 0, i32 1
  store i32* %129, i32** %130, align 8
  %131 = load %struct.TYPE_24__*, %struct.TYPE_24__** @MyProc, align 8
  %132 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %11, i32 0, i32 0
  store %struct.TYPE_24__* %131, %struct.TYPE_24__** %132, align 8
  %133 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %134 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = call i64 @ProcLockHashCode(%struct.TYPE_20__* %11, i64 %135)
  store i64 %136, i64* %12, align 8
  %137 = load i32, i32* @LockMethodProcLockHash, align 4
  %138 = bitcast %struct.TYPE_20__* %11 to i8*
  %139 = load i64, i64* %12, align 8
  %140 = load i32, i32* @HASH_FIND, align 4
  %141 = call i64 @hash_search_with_hash_value(i32 %137, i8* %138, i64 %139, i32 %140, i32* null)
  %142 = inttoptr i64 %141 to %struct.TYPE_21__*
  store %struct.TYPE_21__* %142, %struct.TYPE_21__** %5, align 8
  %143 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %144 = icmp ne %struct.TYPE_21__* %143, null
  br i1 %144, label %148, label %145

145:                                              ; preds = %128
  %146 = load i32, i32* @ERROR, align 4
  %147 = call i32 @elog(i32 %146, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0))
  br label %148

148:                                              ; preds = %145, %128
  %149 = load i32*, i32** %6, align 8
  %150 = call i32 @LWLockRelease(i32* %149)
  br label %151

151:                                              ; preds = %148, %104
  %152 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  ret %struct.TYPE_21__* %152
}

declare dso_local i32* @LockHashPartitionLock(i64) #1

declare dso_local i32 @LWLockAcquire(i32*, i32) #1

declare dso_local i64 @FAST_PATH_GET_BITS(%struct.TYPE_24__*, i64) #1

declare dso_local i32 @FAST_PATH_CHECK_LOCKMODE(%struct.TYPE_24__*, i64, i64) #1

declare dso_local %struct.TYPE_21__* @SetupLockInTable(i32, %struct.TYPE_24__*, %struct.TYPE_22__*, i64, i64) #1

declare dso_local i32 @LWLockRelease(i32*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*) #1

declare dso_local i32 @errhint(i8*) #1

declare dso_local i32 @GrantLock(i32, %struct.TYPE_21__*, i64) #1

declare dso_local i32 @FAST_PATH_CLEAR_LOCKMODE(%struct.TYPE_24__*, i64, i64) #1

declare dso_local i64 @hash_search_with_hash_value(i32, i8*, i64, i32, i32*) #1

declare dso_local i32 @elog(i32, i8*) #1

declare dso_local i64 @ProcLockHashCode(%struct.TYPE_20__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
