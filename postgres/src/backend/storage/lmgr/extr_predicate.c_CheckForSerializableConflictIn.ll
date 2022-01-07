; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/storage/lmgr/extr_predicate.c_CheckForSerializableConflictIn.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/storage/lmgr/extr_predicate.c_CheckForSerializableConflictIn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_9__ = type { i32 }

@MySerializableXact = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_T_R_SERIALIZATION_FAILURE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [77 x i8] c"could not serialize access due to read/write dependencies among transactions\00", align 1
@.str.1 = private unnamed_addr constant [81 x i8] c"Reason code: Canceled on identification as a pivot, during conflict in checking.\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"The transaction might succeed if retried.\00", align 1
@MyXactDidWrite = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CheckForSerializableConflictIn(%struct.TYPE_8__* %0, %struct.TYPE_9__* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %9 = call i32 @SerializationNeededForWrite(%struct.TYPE_8__* %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %3
  br label %72

12:                                               ; preds = %3
  %13 = load i32, i32* @MySerializableXact, align 4
  %14 = call i64 @SxactIsDoomed(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %24

16:                                               ; preds = %12
  %17 = load i32, i32* @ERROR, align 4
  %18 = load i32, i32* @ERRCODE_T_R_SERIALIZATION_FAILURE, align 4
  %19 = call i32 @errcode(i32 %18)
  %20 = call i32 @errmsg(i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str, i64 0, i64 0))
  %21 = call i32 @errdetail_internal(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.1, i64 0, i64 0))
  %22 = call i32 @errhint(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  %23 = call i32 @ereport(i32 %17, i32 %22)
  br label %24

24:                                               ; preds = %16, %12
  store i32 1, i32* @MyXactDidWrite, align 4
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %26 = icmp ne %struct.TYPE_9__* %25, null
  br i1 %26, label %27, label %44

27:                                               ; preds = %24
  %28 = load i32, i32* %7, align 4
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 0
  %38 = call i32 @ItemPointerGetBlockNumber(i32* %37)
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 0
  %41 = call i32 @ItemPointerGetOffsetNumber(i32* %40)
  %42 = call i32 @SET_PREDICATELOCKTARGETTAG_TUPLE(i32 %28, i32 %32, i32 %35, i32 %38, i32 %41)
  %43 = call i32 @CheckTargetForConflictsIn(i32* %7)
  br label %44

44:                                               ; preds = %27, %24
  %45 = load i32, i32* %6, align 4
  %46 = call i64 @BufferIsValid(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %61

48:                                               ; preds = %44
  %49 = load i32, i32* %7, align 4
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %6, align 4
  %58 = call i32 @BufferGetBlockNumber(i32 %57)
  %59 = call i32 @SET_PREDICATELOCKTARGETTAG_PAGE(i32 %49, i32 %53, i32 %56, i32 %58)
  %60 = call i32 @CheckTargetForConflictsIn(i32* %7)
  br label %61

61:                                               ; preds = %48, %44
  %62 = load i32, i32* %7, align 4
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @SET_PREDICATELOCKTARGETTAG_RELATION(i32 %62, i32 %66, i32 %69)
  %71 = call i32 @CheckTargetForConflictsIn(i32* %7)
  br label %72

72:                                               ; preds = %61, %11
  ret void
}

declare dso_local i32 @SerializationNeededForWrite(%struct.TYPE_8__*) #1

declare dso_local i64 @SxactIsDoomed(i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*) #1

declare dso_local i32 @errdetail_internal(i8*) #1

declare dso_local i32 @errhint(i8*) #1

declare dso_local i32 @SET_PREDICATELOCKTARGETTAG_TUPLE(i32, i32, i32, i32, i32) #1

declare dso_local i32 @ItemPointerGetBlockNumber(i32*) #1

declare dso_local i32 @ItemPointerGetOffsetNumber(i32*) #1

declare dso_local i32 @CheckTargetForConflictsIn(i32*) #1

declare dso_local i64 @BufferIsValid(i32) #1

declare dso_local i32 @SET_PREDICATELOCKTARGETTAG_PAGE(i32, i32, i32, i32) #1

declare dso_local i32 @BufferGetBlockNumber(i32) #1

declare dso_local i32 @SET_PREDICATELOCKTARGETTAG_RELATION(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
