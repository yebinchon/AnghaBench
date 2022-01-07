; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/storage/lmgr/extr_lock.c_LockHasWaiters.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/storage/lmgr/extr_lock.c_LockHasWaiters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i64, i64*, i32* }
%struct.TYPE_17__ = type { i64, i32, i32 }
%struct.TYPE_19__ = type { i64, %struct.TYPE_17__ }
%struct.TYPE_20__ = type { i64, %struct.TYPE_15__*, %struct.TYPE_18__*, i32 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_18__ = type { i32 }

@LockMethods = common dso_local global %struct.TYPE_16__** null, align 8
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"unrecognized lock method: %d\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"unrecognized lock mode: %d\00", align 1
@LockMethodLocalHash = common dso_local global i32 0, align 4
@HASH_FIND = common dso_local global i32 0, align 4
@WARNING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"you don't own a lock of type %s\00", align 1
@LW_SHARED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [22 x i8] c"LockHasWaiters: found\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"LockHasWaiters: WRONGTYPE\00", align 1
@LOG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @LockHasWaiters(%struct.TYPE_17__* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_16__*, align 8
  %10 = alloca %struct.TYPE_19__, align 8
  %11 = alloca %struct.TYPE_20__*, align 8
  %12 = alloca %struct.TYPE_18__*, align 8
  %13 = alloca %struct.TYPE_15__*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %16 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %8, align 8
  store i32 0, i32* %15, align 4
  %19 = load i64, i64* %8, align 8
  %20 = icmp ule i64 %19, 0
  br i1 %20, label %26, label %21

21:                                               ; preds = %3
  %22 = load i64, i64* %8, align 8
  %23 = load %struct.TYPE_16__**, %struct.TYPE_16__*** @LockMethods, align 8
  %24 = call i64 @lengthof(%struct.TYPE_16__** %23)
  %25 = icmp uge i64 %22, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %21, %3
  %27 = load i32, i32* @ERROR, align 4
  %28 = load i64, i64* %8, align 8
  %29 = call i32 (i32, i8*, i64, ...) @elog(i32 %27, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i64 %28)
  br label %30

30:                                               ; preds = %26, %21
  %31 = load %struct.TYPE_16__**, %struct.TYPE_16__*** @LockMethods, align 8
  %32 = load i64, i64* %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %31, i64 %32
  %34 = load %struct.TYPE_16__*, %struct.TYPE_16__** %33, align 8
  store %struct.TYPE_16__* %34, %struct.TYPE_16__** %9, align 8
  %35 = load i64, i64* %6, align 8
  %36 = icmp ule i64 %35, 0
  br i1 %36, label %43, label %37

37:                                               ; preds = %30
  %38 = load i64, i64* %6, align 8
  %39 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %40 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ugt i64 %38, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %37, %30
  %44 = load i32, i32* @ERROR, align 4
  %45 = load i64, i64* %6, align 8
  %46 = call i32 (i32, i8*, i64, ...) @elog(i32 %44, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i64 %45)
  br label %47

47:                                               ; preds = %43, %37
  %48 = call i32 @MemSet(%struct.TYPE_19__* %10, i32 0, i32 24)
  %49 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %10, i32 0, i32 1
  %50 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %51 = bitcast %struct.TYPE_17__* %49 to i8*
  %52 = bitcast %struct.TYPE_17__* %50 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %51, i8* align 8 %52, i64 16, i1 false)
  %53 = load i64, i64* %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %10, i32 0, i32 0
  store i64 %53, i64* %54, align 8
  %55 = load i32, i32* @LockMethodLocalHash, align 4
  %56 = bitcast %struct.TYPE_19__* %10 to i8*
  %57 = load i32, i32* @HASH_FIND, align 4
  %58 = call i64 @hash_search(i32 %55, i8* %56, i32 %57, i32* null)
  %59 = inttoptr i64 %58 to %struct.TYPE_20__*
  store %struct.TYPE_20__* %59, %struct.TYPE_20__** %11, align 8
  %60 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %61 = icmp ne %struct.TYPE_20__* %60, null
  br i1 %61, label %62, label %67

62:                                               ; preds = %47
  %63 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %64 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp sle i64 %65, 0
  br i1 %66, label %67, label %76

67:                                               ; preds = %62, %47
  %68 = load i32, i32* @WARNING, align 4
  %69 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %70 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %69, i32 0, i32 1
  %71 = load i64*, i64** %70, align 8
  %72 = load i64, i64* %6, align 8
  %73 = getelementptr inbounds i64, i64* %71, i64 %72
  %74 = load i64, i64* %73, align 8
  %75 = call i32 (i32, i8*, i64, ...) @elog(i32 %68, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i64 %74)
  store i32 0, i32* %4, align 4
  br label %134

76:                                               ; preds = %62
  %77 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %78 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 8
  %80 = call i32* @LockHashPartitionLock(i32 %79)
  store i32* %80, i32** %14, align 8
  %81 = load i32*, i32** %14, align 8
  %82 = load i32, i32* @LW_SHARED, align 4
  %83 = call i32 @LWLockAcquire(i32* %81, i32 %82)
  %84 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %85 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %84, i32 0, i32 2
  %86 = load %struct.TYPE_18__*, %struct.TYPE_18__** %85, align 8
  store %struct.TYPE_18__* %86, %struct.TYPE_18__** %12, align 8
  %87 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %88 = load i64, i64* %6, align 8
  %89 = call i32 @LOCK_PRINT(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), %struct.TYPE_18__* %87, i64 %88)
  %90 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %91 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %90, i32 0, i32 1
  %92 = load %struct.TYPE_15__*, %struct.TYPE_15__** %91, align 8
  store %struct.TYPE_15__* %92, %struct.TYPE_15__** %13, align 8
  %93 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %94 = call i32 @PROCLOCK_PRINT(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), %struct.TYPE_15__* %93)
  %95 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %96 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load i64, i64* %6, align 8
  %99 = call i32 @LOCKBIT_ON(i64 %98)
  %100 = and i32 %97, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %117, label %102

102:                                              ; preds = %76
  %103 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %104 = call i32 @PROCLOCK_PRINT(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), %struct.TYPE_15__* %103)
  %105 = load i32*, i32** %14, align 8
  %106 = call i32 @LWLockRelease(i32* %105)
  %107 = load i32, i32* @WARNING, align 4
  %108 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %109 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %108, i32 0, i32 1
  %110 = load i64*, i64** %109, align 8
  %111 = load i64, i64* %6, align 8
  %112 = getelementptr inbounds i64, i64* %110, i64 %111
  %113 = load i64, i64* %112, align 8
  %114 = call i32 (i32, i8*, i64, ...) @elog(i32 %107, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i64 %113)
  %115 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %116 = call i32 @RemoveLocalLock(%struct.TYPE_20__* %115)
  store i32 0, i32* %4, align 4
  br label %134

117:                                              ; preds = %76
  %118 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %119 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %118, i32 0, i32 2
  %120 = load i32*, i32** %119, align 8
  %121 = load i64, i64* %6, align 8
  %122 = getelementptr inbounds i32, i32* %120, i64 %121
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %125 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = and i32 %123, %126
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %117
  store i32 1, i32* %15, align 4
  br label %130

130:                                              ; preds = %129, %117
  %131 = load i32*, i32** %14, align 8
  %132 = call i32 @LWLockRelease(i32* %131)
  %133 = load i32, i32* %15, align 4
  store i32 %133, i32* %4, align 4
  br label %134

134:                                              ; preds = %130, %102, %67
  %135 = load i32, i32* %4, align 4
  ret i32 %135
}

declare dso_local i64 @lengthof(%struct.TYPE_16__**) #1

declare dso_local i32 @elog(i32, i8*, i64, ...) #1

declare dso_local i32 @MemSet(%struct.TYPE_19__*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @hash_search(i32, i8*, i32, i32*) #1

declare dso_local i32* @LockHashPartitionLock(i32) #1

declare dso_local i32 @LWLockAcquire(i32*, i32) #1

declare dso_local i32 @LOCK_PRINT(i8*, %struct.TYPE_18__*, i64) #1

declare dso_local i32 @PROCLOCK_PRINT(i8*, %struct.TYPE_15__*) #1

declare dso_local i32 @LOCKBIT_ON(i64) #1

declare dso_local i32 @LWLockRelease(i32*) #1

declare dso_local i32 @RemoveLocalLock(%struct.TYPE_20__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
