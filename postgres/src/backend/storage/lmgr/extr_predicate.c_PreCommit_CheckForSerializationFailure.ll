; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/storage/lmgr/extr_predicate.c_PreCommit_CheckForSerializationFailure.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/storage/lmgr/extr_predicate.c_PreCommit_CheckForSerializationFailure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i64, i32 }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_10__ = type { i32, %struct.TYPE_11__* }

@MySerializableXact = common dso_local global %struct.TYPE_11__* null, align 8
@InvalidSerializableXact = common dso_local global %struct.TYPE_11__* null, align 8
@SerializableXactHashLock = common dso_local global i32 0, align 4
@LW_EXCLUSIVE = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_T_R_SERIALIZATION_FAILURE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [77 x i8] c"could not serialize access due to read/write dependencies among transactions\00", align 1
@.str.1 = private unnamed_addr constant [75 x i8] c"Reason code: Canceled on identification as a pivot, during commit attempt.\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"The transaction might succeed if retried.\00", align 1
@RWConflictData = common dso_local global i32 0, align 4
@inLink = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [78 x i8] c"Reason code: Canceled on commit attempt with conflict in from prepared pivot.\00", align 1
@SXACT_FLAG_DOOMED = common dso_local global i32 0, align 4
@PredXact = common dso_local global %struct.TYPE_12__* null, align 8
@SXACT_FLAG_PREPARED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @PreCommit_CheckForSerializationFailure() #0 {
  %1 = alloca %struct.TYPE_10__*, align 8
  %2 = alloca %struct.TYPE_10__*, align 8
  %3 = load %struct.TYPE_11__*, %struct.TYPE_11__** @MySerializableXact, align 8
  %4 = load %struct.TYPE_11__*, %struct.TYPE_11__** @InvalidSerializableXact, align 8
  %5 = icmp eq %struct.TYPE_11__* %3, %4
  br i1 %5, label %6, label %7

6:                                                ; preds = %0
  br label %159

7:                                                ; preds = %0
  %8 = call i32 (...) @IsolationIsSerializable()
  %9 = call i32 @Assert(i32 %8)
  %10 = load i32, i32* @SerializableXactHashLock, align 4
  %11 = load i32, i32* @LW_EXCLUSIVE, align 4
  %12 = call i32 @LWLockAcquire(i32 %10, i32 %11)
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** @MySerializableXact, align 8
  %14 = call i64 @SxactIsDoomed(%struct.TYPE_11__* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %32

16:                                               ; preds = %7
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** @MySerializableXact, align 8
  %18 = call i32 @SxactIsPartiallyReleased(%struct.TYPE_11__* %17)
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  %22 = call i32 @Assert(i32 %21)
  %23 = load i32, i32* @SerializableXactHashLock, align 4
  %24 = call i32 @LWLockRelease(i32 %23)
  %25 = load i32, i32* @ERROR, align 4
  %26 = load i32, i32* @ERRCODE_T_R_SERIALIZATION_FAILURE, align 4
  %27 = call i32 @errcode(i32 %26)
  %28 = call i32 @errmsg(i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str, i64 0, i64 0))
  %29 = call i32 @errdetail_internal(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.1, i64 0, i64 0))
  %30 = call i32 @errhint(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  %31 = call i32 @ereport(i32 %25, i32 %30)
  br label %32

32:                                               ; preds = %16, %7
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** @MySerializableXact, align 8
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 2
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** @MySerializableXact, align 8
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 2
  %37 = load i32, i32* @RWConflictData, align 4
  %38 = load i32, i32* @inLink, align 4
  %39 = call i32 @offsetof(i32 %37, i32 %38)
  %40 = call i64 @SHMQueueNext(i32* %34, i32* %36, i32 %39)
  %41 = inttoptr i64 %40 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %41, %struct.TYPE_10__** %1, align 8
  br label %42

42:                                               ; preds = %135, %32
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %1, align 8
  %44 = icmp ne %struct.TYPE_10__* %43, null
  br i1 %44, label %45, label %145

45:                                               ; preds = %42
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %1, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 1
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %47, align 8
  %49 = call i32 @SxactIsCommitted(%struct.TYPE_11__* %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %135, label %51

51:                                               ; preds = %45
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %1, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 1
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %53, align 8
  %55 = call i64 @SxactIsDoomed(%struct.TYPE_11__* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %135, label %57

57:                                               ; preds = %51
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %1, align 8
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 1
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 2
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %1, align 8
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 1
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 2
  %66 = load i32, i32* @RWConflictData, align 4
  %67 = load i32, i32* @inLink, align 4
  %68 = call i32 @offsetof(i32 %66, i32 %67)
  %69 = call i64 @SHMQueueNext(i32* %61, i32* %65, i32 %68)
  %70 = inttoptr i64 %69 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %70, %struct.TYPE_10__** %2, align 8
  br label %71

71:                                               ; preds = %122, %57
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %73 = icmp ne %struct.TYPE_10__* %72, null
  br i1 %73, label %74, label %134

74:                                               ; preds = %71
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 1
  %77 = load %struct.TYPE_11__*, %struct.TYPE_11__** %76, align 8
  %78 = load %struct.TYPE_11__*, %struct.TYPE_11__** @MySerializableXact, align 8
  %79 = icmp eq %struct.TYPE_11__* %77, %78
  br i1 %79, label %98, label %80

80:                                               ; preds = %74
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 1
  %83 = load %struct.TYPE_11__*, %struct.TYPE_11__** %82, align 8
  %84 = call i32 @SxactIsCommitted(%struct.TYPE_11__* %83)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %122, label %86

86:                                               ; preds = %80
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 1
  %89 = load %struct.TYPE_11__*, %struct.TYPE_11__** %88, align 8
  %90 = call i32 @SxactIsReadOnly(%struct.TYPE_11__* %89)
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %122, label %92

92:                                               ; preds = %86
  %93 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 1
  %95 = load %struct.TYPE_11__*, %struct.TYPE_11__** %94, align 8
  %96 = call i64 @SxactIsDoomed(%struct.TYPE_11__* %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %122, label %98

98:                                               ; preds = %92, %74
  %99 = load %struct.TYPE_10__*, %struct.TYPE_10__** %1, align 8
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i32 0, i32 1
  %101 = load %struct.TYPE_11__*, %struct.TYPE_11__** %100, align 8
  %102 = call i64 @SxactIsPrepared(%struct.TYPE_11__* %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %114

104:                                              ; preds = %98
  %105 = load i32, i32* @SerializableXactHashLock, align 4
  %106 = call i32 @LWLockRelease(i32 %105)
  %107 = load i32, i32* @ERROR, align 4
  %108 = load i32, i32* @ERRCODE_T_R_SERIALIZATION_FAILURE, align 4
  %109 = call i32 @errcode(i32 %108)
  %110 = call i32 @errmsg(i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str, i64 0, i64 0))
  %111 = call i32 @errdetail_internal(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.3, i64 0, i64 0))
  %112 = call i32 @errhint(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  %113 = call i32 @ereport(i32 %107, i32 %112)
  br label %114

114:                                              ; preds = %104, %98
  %115 = load i32, i32* @SXACT_FLAG_DOOMED, align 4
  %116 = load %struct.TYPE_10__*, %struct.TYPE_10__** %1, align 8
  %117 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %116, i32 0, i32 1
  %118 = load %struct.TYPE_11__*, %struct.TYPE_11__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = or i32 %120, %115
  store i32 %121, i32* %119, align 8
  br label %134

122:                                              ; preds = %92, %86, %80
  %123 = load %struct.TYPE_10__*, %struct.TYPE_10__** %1, align 8
  %124 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %123, i32 0, i32 1
  %125 = load %struct.TYPE_11__*, %struct.TYPE_11__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %125, i32 0, i32 2
  %127 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %128 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %127, i32 0, i32 0
  %129 = load i32, i32* @RWConflictData, align 4
  %130 = load i32, i32* @inLink, align 4
  %131 = call i32 @offsetof(i32 %129, i32 %130)
  %132 = call i64 @SHMQueueNext(i32* %126, i32* %128, i32 %131)
  %133 = inttoptr i64 %132 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %133, %struct.TYPE_10__** %2, align 8
  br label %71

134:                                              ; preds = %114, %71
  br label %135

135:                                              ; preds = %134, %51, %45
  %136 = load %struct.TYPE_11__*, %struct.TYPE_11__** @MySerializableXact, align 8
  %137 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %136, i32 0, i32 2
  %138 = load %struct.TYPE_10__*, %struct.TYPE_10__** %1, align 8
  %139 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %138, i32 0, i32 0
  %140 = load i32, i32* @RWConflictData, align 4
  %141 = load i32, i32* @inLink, align 4
  %142 = call i32 @offsetof(i32 %140, i32 %141)
  %143 = call i64 @SHMQueueNext(i32* %137, i32* %139, i32 %142)
  %144 = inttoptr i64 %143 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %144, %struct.TYPE_10__** %1, align 8
  br label %42

145:                                              ; preds = %42
  %146 = load %struct.TYPE_12__*, %struct.TYPE_12__** @PredXact, align 8
  %147 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = add nsw i64 %148, 1
  store i64 %149, i64* %147, align 8
  %150 = load %struct.TYPE_11__*, %struct.TYPE_11__** @MySerializableXact, align 8
  %151 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %150, i32 0, i32 1
  store i64 %149, i64* %151, align 8
  %152 = load i32, i32* @SXACT_FLAG_PREPARED, align 4
  %153 = load %struct.TYPE_11__*, %struct.TYPE_11__** @MySerializableXact, align 8
  %154 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = or i32 %155, %152
  store i32 %156, i32* %154, align 8
  %157 = load i32, i32* @SerializableXactHashLock, align 4
  %158 = call i32 @LWLockRelease(i32 %157)
  br label %159

159:                                              ; preds = %145, %6
  ret void
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @IsolationIsSerializable(...) #1

declare dso_local i32 @LWLockAcquire(i32, i32) #1

declare dso_local i64 @SxactIsDoomed(%struct.TYPE_11__*) #1

declare dso_local i32 @SxactIsPartiallyReleased(%struct.TYPE_11__*) #1

declare dso_local i32 @LWLockRelease(i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*) #1

declare dso_local i32 @errdetail_internal(i8*) #1

declare dso_local i32 @errhint(i8*) #1

declare dso_local i64 @SHMQueueNext(i32*, i32*, i32) #1

declare dso_local i32 @offsetof(i32, i32) #1

declare dso_local i32 @SxactIsCommitted(%struct.TYPE_11__*) #1

declare dso_local i32 @SxactIsReadOnly(%struct.TYPE_11__*) #1

declare dso_local i64 @SxactIsPrepared(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
