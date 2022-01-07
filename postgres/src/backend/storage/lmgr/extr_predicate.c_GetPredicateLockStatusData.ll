; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/storage/lmgr/extr_predicate.c_GetPredicateLockStatusData.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/storage/lmgr/extr_predicate.c_GetPredicateLockStatusData.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32*, i32* }
%struct.TYPE_9__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32*, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@NUM_PREDICATELOCK_PARTITIONS = common dso_local global i32 0, align 4
@LW_SHARED = common dso_local global i32 0, align 4
@SerializableXactHashLock = common dso_local global i32 0, align 4
@PredicateLockHash = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_8__* @GetPredicateLockStatusData() #0 {
  %1 = alloca %struct.TYPE_8__*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = call i64 @palloc(i32 24)
  %8 = inttoptr i64 %7 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %8, %struct.TYPE_8__** %1, align 8
  store i32 0, i32* %2, align 4
  br label %9

9:                                                ; preds = %18, %0
  %10 = load i32, i32* %2, align 4
  %11 = load i32, i32* @NUM_PREDICATELOCK_PARTITIONS, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %21

13:                                               ; preds = %9
  %14 = load i32, i32* %2, align 4
  %15 = call i32 @PredicateLockHashPartitionLockByIndex(i32 %14)
  %16 = load i32, i32* @LW_SHARED, align 4
  %17 = call i32 @LWLockAcquire(i32 %15, i32 %16)
  br label %18

18:                                               ; preds = %13
  %19 = load i32, i32* %2, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %2, align 4
  br label %9

21:                                               ; preds = %9
  %22 = load i32, i32* @SerializableXactHashLock, align 4
  %23 = load i32, i32* @LW_SHARED, align 4
  %24 = call i32 @LWLockAcquire(i32 %22, i32 %23)
  %25 = load i32, i32* @PredicateLockHash, align 4
  %26 = call i32 @hash_get_num_entries(i32 %25)
  store i32 %26, i32* %3, align 4
  %27 = load i32, i32* %3, align 4
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 8
  %30 = load i32, i32* %3, align 4
  %31 = sext i32 %30 to i64
  %32 = mul i64 4, %31
  %33 = trunc i64 %32 to i32
  %34 = call i64 @palloc(i32 %33)
  %35 = inttoptr i64 %34 to i32*
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 2
  store i32* %35, i32** %37, align 8
  %38 = load i32, i32* %3, align 4
  %39 = sext i32 %38 to i64
  %40 = mul i64 4, %39
  %41 = trunc i64 %40 to i32
  %42 = call i64 @palloc(i32 %41)
  %43 = inttoptr i64 %42 to i32*
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 1
  store i32* %43, i32** %45, align 8
  %46 = load i32, i32* @PredicateLockHash, align 4
  %47 = call i32 @hash_seq_init(i32* %5, i32 %46)
  store i32 0, i32* %4, align 4
  br label %48

48:                                               ; preds = %52, %21
  %49 = call i64 @hash_seq_search(i32* %5)
  %50 = inttoptr i64 %49 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %50, %struct.TYPE_9__** %6, align 8
  %51 = icmp ne %struct.TYPE_9__* %50, null
  br i1 %51, label %52, label %78

52:                                               ; preds = %48
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 1
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 2
  %61 = load i32*, i32** %60, align 8
  %62 = load i32, i32* %4, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  store i32 %58, i32* %64, align 4
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 1
  %72 = load i32*, i32** %71, align 8
  %73 = load i32, i32* %4, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  store i32 %69, i32* %75, align 4
  %76 = load i32, i32* %4, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %4, align 4
  br label %48

78:                                               ; preds = %48
  %79 = load i32, i32* %4, align 4
  %80 = load i32, i32* %3, align 4
  %81 = icmp eq i32 %79, %80
  %82 = zext i1 %81 to i32
  %83 = call i32 @Assert(i32 %82)
  %84 = load i32, i32* @SerializableXactHashLock, align 4
  %85 = call i32 @LWLockRelease(i32 %84)
  %86 = load i32, i32* @NUM_PREDICATELOCK_PARTITIONS, align 4
  %87 = sub nsw i32 %86, 1
  store i32 %87, i32* %2, align 4
  br label %88

88:                                               ; preds = %95, %78
  %89 = load i32, i32* %2, align 4
  %90 = icmp sge i32 %89, 0
  br i1 %90, label %91, label %98

91:                                               ; preds = %88
  %92 = load i32, i32* %2, align 4
  %93 = call i32 @PredicateLockHashPartitionLockByIndex(i32 %92)
  %94 = call i32 @LWLockRelease(i32 %93)
  br label %95

95:                                               ; preds = %91
  %96 = load i32, i32* %2, align 4
  %97 = add nsw i32 %96, -1
  store i32 %97, i32* %2, align 4
  br label %88

98:                                               ; preds = %88
  %99 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  ret %struct.TYPE_8__* %99
}

declare dso_local i64 @palloc(i32) #1

declare dso_local i32 @LWLockAcquire(i32, i32) #1

declare dso_local i32 @PredicateLockHashPartitionLockByIndex(i32) #1

declare dso_local i32 @hash_get_num_entries(i32) #1

declare dso_local i32 @hash_seq_init(i32*, i32) #1

declare dso_local i64 @hash_seq_search(i32*) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @LWLockRelease(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
