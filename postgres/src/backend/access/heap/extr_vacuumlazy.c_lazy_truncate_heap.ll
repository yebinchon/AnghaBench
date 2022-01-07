; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/heap/extr_vacuumlazy.c_lazy_truncate_heap.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/heap/extr_vacuumlazy.c_lazy_truncate_heap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64, i32, i32 }

@PROGRESS_VACUUM_PHASE = common dso_local global i32 0, align 4
@PROGRESS_VACUUM_PHASE_TRUNCATE = common dso_local global i32 0, align 4
@AccessExclusiveLock = common dso_local global i32 0, align 4
@VACUUM_TRUNCATE_LOCK_TIMEOUT = common dso_local global i32 0, align 4
@VACUUM_TRUNCATE_LOCK_WAIT_INTERVAL = common dso_local global i32 0, align 4
@elevel = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"\22%s\22: stopping truncate due to conflicting lock request\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"\22%s\22: truncated %u to %u pages\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.TYPE_4__*)* @lazy_truncate_heap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lazy_truncate_heap(i32 %0, %struct.TYPE_4__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %4, align 8
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  store i64 %11, i64* %5, align 8
  %12 = call i32 @pg_rusage_init(i32* %7)
  %13 = load i32, i32* @PROGRESS_VACUUM_PHASE, align 4
  %14 = load i32, i32* @PROGRESS_VACUUM_PHASE_TRUNCATE, align 4
  %15 = call i32 @pgstat_progress_update_param(i32 %13, i32 %14)
  br label %16

16:                                               ; preds = %108, %2
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 2
  store i32 0, i32* %18, align 8
  store i32 0, i32* %8, align 4
  br label %19

19:                                               ; preds = %16, %41
  %20 = load i32, i32* %3, align 4
  %21 = load i32, i32* @AccessExclusiveLock, align 4
  %22 = call i64 @ConditionalLockRelation(i32 %20, i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  br label %47

25:                                               ; preds = %19
  %26 = call i32 (...) @CHECK_FOR_INTERRUPTS()
  %27 = load i32, i32* %8, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* @VACUUM_TRUNCATE_LOCK_TIMEOUT, align 4
  %30 = load i32, i32* @VACUUM_TRUNCATE_LOCK_WAIT_INTERVAL, align 4
  %31 = sdiv i32 %29, %30
  %32 = icmp sgt i32 %28, %31
  br i1 %32, label %33, label %41

33:                                               ; preds = %25
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 2
  store i32 1, i32* %35, align 8
  %36 = load i32, i32* @elevel, align 4
  %37 = load i32, i32* %3, align 4
  %38 = call i32 @RelationGetRelationName(i32 %37)
  %39 = call i32 (i8*, i32, ...) @errmsg(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i32 %38)
  %40 = call i32 @ereport(i32 %36, i32 %39)
  br label %110

41:                                               ; preds = %25
  %42 = load i32, i32* @VACUUM_TRUNCATE_LOCK_WAIT_INTERVAL, align 4
  %43 = sext i32 %42 to i64
  %44 = mul nsw i64 %43, 1000
  %45 = trunc i64 %44 to i32
  %46 = call i32 @pg_usleep(i32 %45)
  br label %19

47:                                               ; preds = %24
  %48 = load i32, i32* %3, align 4
  %49 = call i64 @RelationGetNumberOfBlocks(i32 %48)
  store i64 %49, i64* %6, align 8
  %50 = load i64, i64* %6, align 8
  %51 = load i64, i64* %5, align 8
  %52 = icmp ne i64 %50, %51
  br i1 %52, label %53, label %57

53:                                               ; preds = %47
  %54 = load i32, i32* %3, align 4
  %55 = load i32, i32* @AccessExclusiveLock, align 4
  %56 = call i32 @UnlockRelation(i32 %54, i32 %55)
  br label %110

57:                                               ; preds = %47
  %58 = load i32, i32* %3, align 4
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %60 = call i64 @count_nondeletable_pages(i32 %58, %struct.TYPE_4__* %59)
  store i64 %60, i64* %6, align 8
  %61 = load i64, i64* %6, align 8
  %62 = load i64, i64* %5, align 8
  %63 = icmp sge i64 %61, %62
  br i1 %63, label %64, label %68

64:                                               ; preds = %57
  %65 = load i32, i32* %3, align 4
  %66 = load i32, i32* @AccessExclusiveLock, align 4
  %67 = call i32 @UnlockRelation(i32 %65, i32 %66)
  br label %110

68:                                               ; preds = %57
  %69 = load i32, i32* %3, align 4
  %70 = load i64, i64* %6, align 8
  %71 = call i32 @RelationTruncate(i32 %69, i64 %70)
  %72 = load i32, i32* %3, align 4
  %73 = load i32, i32* @AccessExclusiveLock, align 4
  %74 = call i32 @UnlockRelation(i32 %72, i32 %73)
  %75 = load i64, i64* %5, align 8
  %76 = load i64, i64* %6, align 8
  %77 = sub nsw i64 %75, %76
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 4
  %81 = sext i32 %80 to i64
  %82 = add nsw i64 %81, %77
  %83 = trunc i64 %82 to i32
  store i32 %83, i32* %79, align 4
  %84 = load i64, i64* %6, align 8
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  store i64 %84, i64* %86, align 8
  %87 = load i32, i32* @elevel, align 4
  %88 = load i32, i32* %3, align 4
  %89 = call i32 @RelationGetRelationName(i32 %88)
  %90 = load i64, i64* %5, align 8
  %91 = load i64, i64* %6, align 8
  %92 = call i32 (i8*, i32, ...) @errmsg(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %89, i64 %90, i64 %91)
  %93 = call i32 @pg_rusage_show(i32* %7)
  %94 = call i32 @errdetail_internal(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %93)
  %95 = call i32 @ereport(i32 %87, i32 %94)
  %96 = load i64, i64* %6, align 8
  store i64 %96, i64* %5, align 8
  br label %97

97:                                               ; preds = %68
  %98 = load i64, i64* %6, align 8
  %99 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = icmp sgt i64 %98, %101
  br i1 %102, label %103, label %108

103:                                              ; preds = %97
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 8
  %107 = icmp ne i32 %106, 0
  br label %108

108:                                              ; preds = %103, %97
  %109 = phi i1 [ false, %97 ], [ %107, %103 ]
  br i1 %109, label %16, label %110

110:                                              ; preds = %33, %53, %64, %108
  ret void
}

declare dso_local i32 @pg_rusage_init(i32*) #1

declare dso_local i32 @pgstat_progress_update_param(i32, i32) #1

declare dso_local i64 @ConditionalLockRelation(i32, i32) #1

declare dso_local i32 @CHECK_FOR_INTERRUPTS(...) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errmsg(i8*, i32, ...) #1

declare dso_local i32 @RelationGetRelationName(i32) #1

declare dso_local i32 @pg_usleep(i32) #1

declare dso_local i64 @RelationGetNumberOfBlocks(i32) #1

declare dso_local i32 @UnlockRelation(i32, i32) #1

declare dso_local i64 @count_nondeletable_pages(i32, %struct.TYPE_4__*) #1

declare dso_local i32 @RelationTruncate(i32, i64) #1

declare dso_local i32 @errdetail_internal(i8*, i32) #1

declare dso_local i32 @pg_rusage_show(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
